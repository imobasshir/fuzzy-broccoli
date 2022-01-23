import 'package:catalog_flutter/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'images/login.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 16.0,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Username',
                          labelText: 'Username',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter username';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password',
                          labelText: 'Password',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 60.0,
                      ),
                      InkWell(
                        onTap: () => moveToHome(context),
                        // onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 60,
                          width: changeButton ? 60 : 120,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  'Login',
                                  style: GoogleFonts.lato(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 60 : 6.0),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
