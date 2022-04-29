import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();
  var passcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 73, 85, 95),
                    ),
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  defaultFormField(
                      controller: emailcontroller,
                      type: TextInputType.emailAddress,
                      label: 'Email',
                      onSubmit: () {},
                      perfix: Icons.email,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Email cannot be empty';
                        }
                        return null;
                      }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultFormField(
                    controller: passcontroller,
                    type: TextInputType.visiblePassword,
                    perfix: Icons.lock,
                    label: 'Password',
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'Password is empty';
                      }
                      return null;
                    },
                    isPassword: isPassword,
                    suffix:
                        isPassword ? Icons.visibility_off : Icons.visibility,
                    suffixpressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defaultButton(
                    text: 'login',
                    function: () {
                      if (formKey.currentState != null) {
                        formKey.currentState!.validate();
                        print(emailcontroller);
                        print(passcontroller);
                      }
                      return null;
                    },
                    radius: 20.0,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  // Container(
                  //   child: MaterialButton(
                  //     onPressed: () {
                  //       if (formKey.currentState != null) {
                  //         formKey.currentState!.validate();
                  //         print(emailcontroller);
                  //         print(passcontroller);
                  //       }
                  //     },
                  //     child: Text(
                  //       'send',
                  //       style: TextStyle(
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     color: Colors.blue,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an accont',
                      ),
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.abc_sharp,
                      //     )),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
