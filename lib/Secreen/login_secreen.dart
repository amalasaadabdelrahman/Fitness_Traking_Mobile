import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'on_boarding.dart';

class LoginSecreen extends StatefulWidget {
  const LoginSecreen({Key? key}) : super(key: key);

  @override
  State<LoginSecreen> createState() => _LoginSecreenState();
}

class _LoginSecreenState extends State<LoginSecreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isChecked = false;
  bool obscureText = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  validator() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print('Validated');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Logged in successfully'),
        backgroundColor: Colors.black,
      ));
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnBoarding()),
      );
    } else {
      print('Not validated');
    }
  }

  @override
  void initState() {
    setState(() {
      validator();
    });
    super.initState();
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
              obscureText: obscureText,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password ',
                suffixIcon: IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
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
              height: 29,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(
                      () {
                        isChecked = value!;
                      },
                    );
                  },
                ),
                Center(
                  child: Text(
                    'Remember password',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'ForgetPasword',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 15,
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
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'or connect with',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 55,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage('assets/new-facebook-logo-2019.jpg'),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 50,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage('assets/Instagram_logo.webp'),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  width: 80,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image(
                      image:
                          AssetImage('assets/pngimg.com - pinterest_PNG62.png'),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image(
                    image: AssetImage('assets/LinkedIn_logo_initials.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
