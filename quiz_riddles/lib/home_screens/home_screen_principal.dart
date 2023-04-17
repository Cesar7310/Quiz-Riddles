import 'package:flutter/material.dart';
import 'package:quiz_riddles/home_screens/home_screen_secun.dart';
import 'package:quiz_riddles/home_screens/home_screen_prepa.dart';
import 'package:quiz_riddles/login_screens/signin_screen.dart';

class HomeScreenPrincipal extends StatelessWidget {
  const HomeScreenPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffffcf6),
        extendBodyBehindAppBar: false,
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()));
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(255, 10, 55, 123),
                        ),
                      ),
                      const Text(
                        'Regresar',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 10, 55, 123)),
                      ),
                    ],
                  ),
                  Container(
                    height: 550,
                    width: 550,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/backTwo.png"),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              'Soy Estudiante de:',
                              style: TextStyle(
                                  fontFamily: "Gloria Hallelujah",
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 10, 55, 123)),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          'Preparatoria',
                          style: TextStyle(
                              fontFamily: "Gloria Hallelujah",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 10, 55, 123)),
                        ),
                        const SizedBox(height: 10),
                        const Icon(
                          Icons.school_outlined,
                          size: 65,
                        ),
                        const SizedBox(height: 30),
                        FilledButton(
                          style: FilledButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 10, 55, 123)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HomeScreenPrepa()));
                          },
                          child: const Text(
                            'EMPEZAR',
                            style: TextStyle(
                              fontFamily: "Gloria Hallelujah",
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        const Text(
                          'Secundaria',
                          style: TextStyle(
                              fontFamily: "Gloria Hallelujah",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 45, 123, 192)),
                        ),
                        const SizedBox(height: 10),
                        const Icon(
                          Icons.school_outlined,
                          size: 65,
                        ),
                        const SizedBox(height: 30),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 45, 123, 192),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HomeScreenSecundaria()));
                          },
                          child: const Text(
                            'EMPEZAR',
                            style: TextStyle(
                              fontFamily: "Gloria Hallelujah",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
