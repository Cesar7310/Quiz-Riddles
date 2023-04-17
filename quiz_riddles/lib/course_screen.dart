import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_riddles/home_screens/home_screen_secun.dart';
import 'package:quiz_riddles/nav_bar_test.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    const txtStyle = TextStyle(color: Colors.black54, fontSize: 14);

    List courseSubTitle = [
      '  Añadir tareas',
      '  Práctica tus habílidades',
      'Actividades de Hoy',
    ];

    List courseTitle = [
      '  Explora Contenidos',
      '  Nuevos Ejercicios',
      'Revisa tus tareas',
    ];

    List<Icon> courseIconsData = [
      const Icon(
        CupertinoIcons.add,
        color: Colors.white,
      ),
      const Icon(
        Icons.widgets,
        color: Colors.white,
      ),
      const Icon(
        Icons.book,
        color: Colors.white,
      ),
    ];

    List<Color> bgColors = [
      const Color(0xFFFDD133),
      const Color(0xFF64DA91),
      const Color(0xFF60C0FC),
    ];

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color.fromARGB(255, 10, 55, 123),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HomeScreenSecundaria()));
                      },
                    ),
                    const SizedBox(width: 2),
                    Text(
                      'Mis Cursos',
                      style: txtTheme.titleLarge,
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.notifications_rounded,
                      color: Color.fromARGB(255, 10, 55, 123),
                    ),
                  ],
                ),
                // const SizedBox(height: 5),
                const Row(
                  children: [
                    // SizedBox(width: 20),
                    Text(
                      'Tú progreso de hoy en Matemáticas es\t',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    Text(
                      '0 min',
                      style: TextStyle(
                        color: Color.fromARGB(255, 10, 55, 123),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                  height: 10,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Matemáticas', style: txtTheme.titleLarge),
                    const Text('Español', style: txtStyle),
                    const Text('Física', style: txtStyle),
                    const Text('Química', style: txtStyle),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 180,
                      width: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5AD995),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.book,
                                color: Color(0xFF5AD995),
                              ),
                            ),
                          ),
                          const Text(
                            'Recursos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'Revisar Notas de Estudio',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(20),
                      height: 180,
                      width: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5EBBFD),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.font_download_outlined,
                                color: Color(0xFF5EBBFD),
                              ),
                            ),
                          ),
                          const Text(
                            'Prueba',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          const Text(
                            'Conocimiento del Capítulo',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  'Recomendaciones',
                  style: txtTheme.titleLarge,
                ),
                const SizedBox(height: 5),
                const Text(
                  'Explora los apartados y fortalece tus conocimientos',
                  style: txtStyle,
                ),
                const SizedBox(height: 10),
                for (var i = 0; i < 3; i++)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: bgColors[i],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: courseIconsData[i],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              courseTitle[i],
                              style: txtTheme.titleMedium,
                            ),
                            Text(
                              courseSubTitle[i],
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 30,
                          width: 50,
                          // decoration: BoxDecoration(
                          //     color: const Color(0xFF178366),
                          //     borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_right_outlined,
                                color: Color.fromARGB(255, 10, 55, 123),
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreenSecundaria()));
                              },
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
        bottomNavigationBar: const navigatorBar(),
      ),
    );
  }
}
