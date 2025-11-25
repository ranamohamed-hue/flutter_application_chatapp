import 'package:flutter/material.dart';
import 'package:flutter_application_chatapp/core/widgets/buildElevatedButton.dart';
import 'package:flutter_application_chatapp/core/widgets/buildTextFormField.dart';
import 'package:flutter_application_chatapp/feature/ui/widgets/buildHelp.dart';

class Buildverificationscreen extends StatefulWidget {
  const Buildverificationscreen({super.key});

  @override
  State<Buildverificationscreen> createState() =>
      _BuildverificationscreenState();
}

class _BuildverificationscreenState extends State<Buildverificationscreen> {
  final TextEditingController _verificationcode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Buildtextformfield(
            title: "Verification Number",
            hinttext: "000 000",
            keyboardtype: TextInputType.number,
            controller: _verificationcode,
            icon: Icons.verified_outlined,
            validatorr: (value) {
              if (value == null || value.isEmpty) {
                return "Enter Your Verification Code";
              }
              if (int.tryParse(value) == null) {
                return "Wrong Code";
              }
              return null;
            },
          ),
          SizedBox(height: 50),
          Buildelevatedbutton(
            onpress: () {},
            title: "Login",
            icon: Icons.verified_outlined,
          ),
          SizedBox(height: 50),

          Buildhelp(comment: "Did Not Receive Code?", action: 'Try Again'),
        ],
      ),
    );
  }
}
