import 'package:base_flutter_app/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key, required this.title});
  final String title;
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool showPassword = false;
  void togglePassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[200],
        body: SizedBox.expand(
          child: SafeArea(
            minimum: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 60),
                TextFormField(
                  cursorColor: Colors.white,
                  initialValue: '',
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) =>
                      !isEmail(val) ? "Enter valid Email" : null,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.7),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.7),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  cursorColor: Colors.white,
                  obscureText: showPassword ? false : true,
                  initialValue: '',
                  keyboardType: TextInputType.visiblePassword,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: togglePassword,
                      child: Icon(
                        showPassword
                            ? Icons.remove_red_eye_outlined
                            : Icons.remove_red_eye,
                        color: Colors.white,
                      ),
                    ),
                    prefixIcon: Icon(
                      showPassword ? Icons.lock_open : Icons.lock,
                      color: Colors.white,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.7),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5.7),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[400],
                    foregroundColor: Colors.white,
                    shadowColor: Colors.pinkAccent,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    minimumSize: const Size(double.infinity, 40), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ));
  }
}
