import 'dart:convert'; // Para manejar JSON
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Para cargar archivos desde assets

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<dynamic> _libros = [];

  Future<void> _cargarLibros() async {
    final String respuesta = await rootBundle.loadString('assets/books.json');
    final datos = json.decode(respuesta);
    setState(() {
      _libros = datos['libros']; 
    });
  }

  @override
  void initState() {
    super.initState();
    _cargarLibros(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Libros'),
      ),
      body: _libros.isEmpty
          ? Center(child: CircularProgressIndicator()) 
          : ListView.builder(
              itemCount: _libros.length,
              itemBuilder: (context, index) {
                final libro = _libros[index];
                return ListTile(
                  leading: Image.network(
                    libro['detalles']['imagen_portada'],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(libro['titulo']),
                  subtitle: Text(libro['autor']['nombre']),
                  onTap: () {
                    
                  },
                );
              },
            ),
    );
  }
}
