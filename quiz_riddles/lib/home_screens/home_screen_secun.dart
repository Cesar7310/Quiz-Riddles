import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_riddles/course_screen.dart';
import 'package:quiz_riddles/home_screens/home_screen_principal.dart';
import 'package:quiz_riddles/nav_bar_test.dart';
import 'package:quiz_riddles/secundaria/cuertionarios_secun.dart';
import 'package:quiz_riddles/secundaria/cursos_secun.dart';
import 'package:quiz_riddles/secundaria/estadisticas_secun.dart';
import 'package:quiz_riddles/secundaria/notificactios_secun.dart';
import 'package:quiz_riddles/secundaria/recursos_secun.dart';

class HomeScreenSecundaria extends StatelessWidget {
  const HomeScreenSecundaria({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> simuladorColor = [
      const Color(0xFF64DA91),
      const Color(0xFFFB7E1F),
      const Color(0xFFFB7F7F),
    ];
    List<String> simuladorImages = [
      "assets/exam.png",
      "assets/examsheet.png",
      "assets/mathicon.png",
    ];

    List<String> courseImages = [
      "assets/mathicon.png",
      "assets/fisica.png",
      "assets/quimica.png",
      "assets/español.png",
      "assets/ingles.png",
      "assets/historia.png",
    ];

    List<String> nivelTitle = [
      "Nivel: Fácil",
      "Nivel: Medio",
      "Nivel: Difícil",
    ];

    List<String> courseTitle = [
      "Matemáticas",
      "Física",
      "Química",
      "Español",
      "Inglés",
      "Historia",
    ];
    List<String> califSimulador = [
      "Calificación: 9.0",
      "Calificación: 8.0",
      "Calificación: 7.0",
    ];

    List<String> courseRating = [
      "8.6",
      "8.0",
      "7.5",
      "8.6",
      "8.0",
      "7.5",
    ];

    List<Color> courseColor = [
      const Color(0xFFFA2F7F),
      const Color(0xFF64DA91),
      const Color(0xFF60C0FC),
      const Color(0xFFFB7F7F),
      const Color(0xFF64DA91),
      const Color(0xFFFB7E1F),
    ];
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
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
                                    const HomeScreenPrincipal()));
                      },
                    ),
                    //const SizedBox(width: 2),
                    const Column(
                      children: [
                        Text(
                          'Inicio Secundaria',
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 55, 123),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    //const SizedBox(width: 10),
                    IconButton(
                      icon: const Icon(
                        Icons.notification_add_outlined,
                        color: Color.fromARGB(255, 10, 55, 123),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NotificacionesSecundaria()));
                      },
                    ),
                  ],
                ),
                // const SizedBox(height: 5),
                Column(
                  children: [
                    //SizedBox(),
                    const Text(
                      'Elige un Curso\t',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    const SizedBox(height: 10),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.teal.shade50,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CursosSecundaria()));
                      },
                      child: const Text(
                        'Empezar',
                        style: TextStyle(
                          fontFamily: "Gloria Hallelujah",
                          color: Color.fromARGB(255, 10, 55, 123),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      labelText: "Buscar ctividades pendientes... ",
                      labelStyle:
                          TextStyle(fontSize: 14, color: Colors.black45),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xFF5AD995),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            'Cuestionarios',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CuestionariosSecundaria()));
                            },
                            icon: const Icon(
                              Icons.quiz_rounded,
                            ),
                            color: Colors.white,
                            iconSize: 90,
                          ),
                        ],
                      ),
                    ),
                    // const Text('Holaaaa'),
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            'Cursos',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CursosSecundaria()));
                            },
                            icon: const Icon(
                              Icons.file_open_outlined,
                            ),
                            color: Colors.white,
                            iconSize: 90,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            'Estadísticas',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EstadisticasSecundaria()));
                            },
                            icon: const Icon(
                              Icons.leaderboard,
                            ),
                            color: Colors.white,
                            iconSize: 90,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Text(
                            'Recursos',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RecursosSecundaria()));
                            },
                            icon: const Icon(
                              Icons.picture_as_pdf_rounded,
                            ),
                            color: Colors.white,
                            iconSize: 90,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Simulador de Examen',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 55, 123),
                          fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      'Completa todos los cursos antes \n de empezar el simulador \t',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    // Container(
                    //   height: 20,
                    //   width: 20,
                    //   decoration: BoxDecoration(
                    //     color: Colors.cyan.shade400,
                    //     borderRadius: BorderRadius.circular(5),
                    //   ),
                    //   child: const Center(
                    //     child: Text(
                    //       '3',
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 17,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Container(
                          margin: const EdgeInsets.all(15),
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CourseScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 80,
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: simuladorColor[i],
                                  ),
                                  child: Image.asset(
                                    simuladorImages[i],
                                    height: 70,
                                    width: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      nivelTitle[i],
                                      style: const TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      califSimulador[i],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        Container(
                                          height: 20,
                                          width: 39,
                                          // decoration: BoxDecoration(
                                          //   color: Colors.red,
                                          //   borderRadius:
                                          //       BorderRadius.circular(30),
                                          // ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Cursos Recomendados',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 55, 123),
                          fontSize: 20),
                    ),
                    IconButton(
                      onPressed: () {
                        //AÑADIR SCREEEN CORRESPONDIENTE
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CursosSecundaria()));
                      },
                      icon: const Icon(
                        Icons.add_circle_rounded,
                      ),
                      color: const Color.fromARGB(255, 10, 55, 123),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'Te podría interesar \t',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade400,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Container(
                          margin: const EdgeInsets.all(15),
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CourseScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 80,
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: courseColor[i],
                                  ),
                                  child: Image.asset(
                                    courseImages[i],
                                    height: 70,
                                    width: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      courseTitle[i],
                                      style: const TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      courseRating[i],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        Container(
                                          height: 20,
                                          width: 39,
                                          child: const Center(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cuestionarios Recomendados',
                      style: TextStyle(
                          color: Color.fromARGB(255, 10, 55, 123),
                          fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'Te podría interesar \t',
                      style: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade400,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 230,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Container(
                          margin: const EdgeInsets.all(15),
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const CourseScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 80,
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: courseColor[i],
                                  ),
                                  child: Image.asset(
                                    courseImages[i],
                                    height: 70,
                                    width: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      courseTitle[i],
                                      style: const TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      courseRating[i],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 15,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        Container(
                                          height: 20,
                                          width: 39,
                                          child: const Center(
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
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
