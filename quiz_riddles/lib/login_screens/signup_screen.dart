// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:quiz_riddles/home_screens/home_screen_Uni.dart';
import 'package:quiz_riddles/home_screens/home_screen_principal.dart';
import 'package:quiz_riddles/reusable_widgets/reusable_widget.dart';
import 'package:quiz_riddles/login_screens/signin_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'REGISTRARSE',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: [
                reusableTextField("Nombre de Usuario", Icons.person_outline,
                    false, _userNameTextController),
                const SizedBox(height: 20),
                reusableTextField(
                    "Correo", Icons.mail_outlined, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Contraseña", Icons.lock_outline, false,
                    _passwordTextController),
                const SizedBox(height: 20),
                singInSingUpButton(context, true, () {
                  // FirebaseAuth.instance
                  //     .createUserWithEmailAndPassword(
                  //   email: _emailTextController.text,
                  //   password: _passwordTextController.text,
                  // )
                  // .then((value) {})
                  // print("Created New Account");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreenPrincipal()));
                  // .onError((error, stackTrace) {
                  //   print("Error ${error.toString()}");
                  // });
                }),
                sigInOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row sigInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("¿Ya tienes Cuenta?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignInScreen()));
          },
          child: const Text(
            "  Iniciar Sesión",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 55),
      ],
    );
  }
}
