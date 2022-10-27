import 'package:flutter/material.dart';
import 'package:zartec/infrastructure/auth/google_signin.dart';
import 'package:zartec/presentation/auth/phone_login.dart';
import 'package:zartec/widgets/lead_Image_Button.dart';
import 'package:zartec/widgets/custom_button.dart';

class AuthHome extends StatelessWidget {
  const AuthHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: SizedBox(
                width: width / 2,
                height: height / 4,
                child: Image.asset('assets/firebaselogo.png')),
          ),
          Column(
            children: [
              LeadImageButton(
                  image: 'assets/google_icon.png',
                  height: height / 14,
                  color: Colors.blue,
                  onPressed: () {
                    signInWithGoogle();
                  },
                  text: "Google",
                  width: width / 1.4),
              SizedBox(
                height: height / 60,
              ),
              LeadImageButton(
                  image: 'assets/phone_icon.png',
                  height: height / 14,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhoneLoginScreen()));
                  },
                  text: "Phone",
                  width: width / 1.4)
            ],
          ),
        ],
      ),
    );
  }
}
