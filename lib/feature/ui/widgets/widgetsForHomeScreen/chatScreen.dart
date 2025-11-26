import 'package:flutter/material.dart';
import 'package:flutter_application_chatapp/core/widgets/buildTextFormField.dart';

class Chatscreen extends StatefulWidget {
  Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  final _formkey = GlobalKey<FormState>();
  int item = 10;
  final TextEditingController _searchtextfield = TextEditingController();

  @override
  void dispose() {
    _searchtextfield.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
      
            Buildtextformfield(
              title: "Search",
              hinttext: "AskHere",
              keyboardtype: TextInputType.text,
              controller: _searchtextfield,
              icon: Icons.search,
              validatorr: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter some thing";
                }
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: item,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 12,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '12.12',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
      
                        SizedBox(width: 140),
      
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Person1',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'The last chat',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
      
                        SizedBox(width: 10),
      
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: const Color.fromARGB(
                            255,
                            197,
                            141,
                            207,
                          ),
                          child: Icon(
                            Icons.person,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
