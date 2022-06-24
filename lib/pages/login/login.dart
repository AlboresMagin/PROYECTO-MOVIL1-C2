import 'dart:convert';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscure = true;
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          children: const [
            Icon(Icons.arrow_back, color: Colors.pinkAccent),
            SizedBox(width: 10),
            Text('Iniciar sesión'),
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
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 60, top: 30),
                padding: const EdgeInsets.only(right: 8),
                child: const Text(
                  'Inicia sesión con tu cuenta para continuar',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                margin: const EdgeInsets.only(right: 190),
                child: const Text(
                  'Correo electrónico',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 13
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 15),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Correo electrónico',
                  ),
                  onChanged: (text) {
                    email = text;
                  },
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.fromLTRB(0, 10, 0, 5),
                margin: const EdgeInsets.only(right: 250, left: 10),
                child: const Text(
                  'Contraseña',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  obscureText: _isObscure,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 15),
                  autofocus: true,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Contraseña',
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: const Text(
                    '¿Has olvidado tu contraseña?',
                    style: TextStyle(
                      color: Colors.pinkAccent, 
                      fontSize: 13),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 60),
              Container(
                padding: const EdgeInsets.only(top: 130),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Ingresar',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Aún no tienes cuenta?',
                    style: TextStyle(fontSize: 13),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Registrate',
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 13),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
