import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movil_proyecto_c2/pages/login/login.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: const [
            Icon(Icons.arrow_back, color: Colors.pinkAccent),
            SizedBox(width: 10),
            Text('Recuperar contraseña'),
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Image(
              image: AssetImage('assets/images/splash.png'),
              height: 30,
            ),
            ),
            
          ],
        ),
      ),
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: const Center(
            child: Text(
              'Por su seguridad, tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayusculas, minúsculas, contener por lo menos un numero y un caracter especial.',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 116, 108, 108)),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
          child: Column(children: [
            Row(
              children: const [
                Text(
                  'Nueva contraseña',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.grey, width: 1)),
                  filled: true,
                  hintText: 'Nueva contraseña',
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'Confirmar contraseña',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: TextField(
            obscureText: true,
            
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
              
              
              filled: true,
              hintText: 'Confirmar contraseña',
              fillColor: Colors.white,
            ),
          ),
        ),
          ]),
        ),
        const Spacer(),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Actualizar contraseña',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),      
          ),
          ),
      ]), 
    );
  }
}
