// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'widgets/text_Field.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0.0,
        // ),
        backgroundColor: const Color.fromARGB(255, 1, 19, 46),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 130),
              Image.asset(
                'images/logo.png',
                color: Colors.white,
                height: 200,
              ),
              Column(
                children: const [
                  EditableTextField(
                    enterText: 'Enter your Email',
                    floatText: 'Email',
                    hideText: false,
                    icon: Icons.email_outlined,
                  ),
                  EditableTextField(
                      hideText: true,
                      enterText: 'Enter your Password',
                      floatText: 'Password',
                      icon: Icons.lock_outline),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Forget Password ?",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ChatScreen');
                    },
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Icon(Icons.arrow_forward, color: Colors.white),
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
