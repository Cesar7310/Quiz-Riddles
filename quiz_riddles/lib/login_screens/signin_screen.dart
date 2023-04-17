// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:quiz_riddles/home_screens/home_screen_Uni.dart';
import 'package:quiz_riddles/home_screens/home_screen_principal.dart';
import 'package:quiz_riddles/reusable_widgets/reusable_widget.dart';
import 'package:quiz_riddles/login_screens/signup_screen.dart';
// import 'package:online_learning_app/utils/color_utils.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.pink.shade900,
              Colors.deepPurple.shade400,
              Colors.deepPurple.shade900,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 5, 0),
            child: Column(
              children: [
                logoWidget('assets/Logo.png'),
                const SizedBox(height: 10),
                reusableTextField("Usuario", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(height: 20),
                reusableTextField(
                    "Contraseña", Icons.lock, false, _passwordTextController),
                const SizedBox(height: 20),
                singInSingUpButton(context, true, () {
                  // FirebaseAuth.instance
                  //     .createUserWithEmailAndPassword(
                  //   email: _emailTextController.text,
                  //   password: _passwordTextController.text,
                  // )
                  // .then((value) {})
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreenPrincipal()));
                  // .onError((error, stackTrace) {
                  //   print("Error ${error.toString()}");
                  // });
                }),
                sigUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row sigUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("¿No tienes Cuenta?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()));
          },
          child: const Text(
            "  Registrate",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 55),
      ],
    );
  }
}
