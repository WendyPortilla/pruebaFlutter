import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
        backgroundColor: const Color(0xFF1B1B1B), // Fondo negro
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1E3A8A), Color(0xFF2563EB)], // Gradiente azul oscuro a azul medio
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.library_books,
                size: 100,
                color: Color.fromARGB(255, 232, 238, 255), // Ícono dorado de biblioteca
              ),
              const SizedBox(height: 32),
              const Text(
                'Bienvenido a la Biblioteca',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Texto blanco
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: const Color.fromARGB(255, 188, 199, 237), // Dorado suave
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(color: Colors.black), // Texto negro para contraste
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: const Color.fromARGB(255, 188, 199, 237), // Dorado suave
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text(
                  'Registro',
                  style: TextStyle(color: Colors.black), // Texto negro para contraste
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'Desarrollador: Wendy Portilla',
                style: TextStyle(
                  color: Colors.white, // Texto blanco
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'GitHub:WendyPortilla',
                style: TextStyle(
                  color: Colors.white, // Texto blanco
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
