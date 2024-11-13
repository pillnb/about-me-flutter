import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me',
      home: AboutPage(),
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me 💌', style: TextStyle(color: Color(0xFFF5EDE0), fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFFD48B94),
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Color(0xFFD48B94)),
      ),
      body: Stack(
        children: [
          // Animated Background GIF
          Positioned.fill(
            child: Image.asset(
              'assets/background.gif',
              fit: BoxFit.cover,
            )
            .animate()
            .fadeIn(duration: 1000.ms) 
            .scale(duration: 2.seconds, curve: Curves.easeInOut),
          ),
          // Foreground content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('assets/image.jpg'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Vaskya Nabila Putri',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFFD48B94)),
                ),
                const SizedBox(height: 8),
                Text(
                  'NRP: 5026221128',
                  style: TextStyle(fontSize: 16, color: Colors.grey[700], fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Funfact',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD48B94),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD48B94),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Text(
                    'Saya suka kulineran',
                    style: TextStyle(fontSize: 16, color: Color(0xFFF5EDE0)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(color: Color(0xFFD48B94), thickness: 1.5),
                const Text(
                  'About',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD48B94),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD48B94),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: const Text(
                    'Saya adalah seorang mahasiswa jurusan Sistem Informasi yang antusias dengan coding dan teknologi. Saat ini saya sedang belajar Flutter untuk mengembangkan aplikasi mobile yang interaktif dan menarik!',
                    style: TextStyle(fontSize: 16, color: Color(0xFFF5EDE0)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(color: Color(0xFFD48B94), thickness: 1.5),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
