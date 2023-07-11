import 'package:activity/Secreen/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'on_boarding.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameControler = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var phoneControler = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obsecureText = true;
  bool confobsecureText = true;
  validator() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print('Validated');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Now you have an account'),
          backgroundColor: Colors.black,
        ),
      );
      Navigator.pushNamed(context, 'bording');
    } else {
      print('Not validated');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: firstNameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'First Name',
              ),
              validator: (String? value) {
                if (value == null || value.trim().length == 0) {
                  return "Field is required";
                } else
                  return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: lastNameControler,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Last Name',
              ),
              validator: (String? value) {
                if (value == null || value.trim().length == 0) {
                  return "Field is required";
                } else
                  return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: phoneControler,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: 'Phone Number',
              ),
              validator: (String? value) {
                if (value == null || value.trim().length == 0) {
                  return "Field is required";
                } else if (value.length < 10) {
                  return "Number should not be less than 10";
                } else if (!RegExp(
                        r"^(\+\d{1,2}\s?)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$")
                    .hasMatch(value)) {
                  return "Invalid phone number";
                } else
                  return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email Address',
              ),
              validator: (String? value) {
                if (value == null || value.trim().length == 0) {
                  return "Field is required";
                }
                if (!RegExp(
                        r"^(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|'*')@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])")
                    .hasMatch(value)) {
                  return "Invalid Email Address";
                } else
                  return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
              obscureText: obsecureText,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password ',
                suffixIcon: IconButton(
                  icon: Icon(
                      obsecureText ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      obsecureText = !obsecureText;
                    });
                  },
                ),
              ),
              validator: (String? value) {
                if (value == null || value.trim().length == 0) {
                  return "Field is required";
                }
                if (value.length <= 6) {
                  return "password should not be less than 6 characters";
                } else
                  return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: confirmPasswordController,
              obscureText: confobsecureText,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Confirm Password ',
                suffixIcon: IconButton(
                  icon: Icon(confobsecureText
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      confobsecureText = !confobsecureText;
                    });
                  },
                ),
              ),
              validator: (String? value) {
                if (value == null || value.trim().length == 0) {
                  return "Field is required";
                }
                if (confirmPasswordController.text != passwordController.text) {
                  return "password should be matched";
                } else
                  return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: MaterialButton(
                onPressed: () {
                  validator();
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
