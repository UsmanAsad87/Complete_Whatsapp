import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/common/utils/utils.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';
import 'package:whatsapp_clone/features/auth/controller/auth_controller.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      onSelect: (Country _country) {
        setState(() {
          country = _country;
        });
      },
    );
  }

  void pickPhoneNumber(){
    String phoneNumber = phoneController.text.trim();
    if(country!=null && phoneNumber.isNotEmpty){
      print("+${country!.phoneCode}$phoneNumber");
      ref.read(authControllerProvider).signInWithPhone(context, "+${country!.phoneCode}$phoneNumber");
    }else{
      showSnackBar(context: context, content: 'Fill out all the fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enter your phone number"),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('WhatsApp will need to veirfy your phone number.'),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed:pickCountry,
                  child: const Text('Pick Country'),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    if (country != null) Text('+${country!.phoneCode}'),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: TextField(
                        controller: phoneController,
                        decoration:
                            const InputDecoration(hintText: 'phone Number'),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 90,
              child: CustomButton(
                onPress:pickPhoneNumber ,
                text: "NEXT",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
