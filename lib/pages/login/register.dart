import 'dart:convert';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;
  bool _check = false;

  String _name = "";
  String _password = "";
  String _email = "";

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
            Text('Registrate'),
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
        padding: const EdgeInsets.only(right: 10, left: 5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
                child: const Text(
                  'Crea una cuenta para empezar a usar la app ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 270),
                child: const Text(
                  'Nombre',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Nombre completo',
                  ),
                  onChanged: (text) {
                    _name = text;
                  },
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 210, top: 20),
                child: const Text(
                  'Correo electronico',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
                  autofocus: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.black, width: 1)),
                    hintText: 'Direccion de Correo',
                  ),
                  onChanged: (text) {
                    _email = text;
                  },
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: const EdgeInsets.only(right: 250, top: 20),
                child: const Text(
                  'Contraseña',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  obscureText: _isObscure,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 18),
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
                    _password = text;
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, top: 15),
                margin: const EdgeInsets.only(right: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'La contraseña tiene que tener caracteres númericos y simbolos con un mínimo de 6 caracteres',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 18, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _check,
                      onChanged: (check) {
                        setState(() {
                          _check = check!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 40,
                      child: RichText(
                        maxLines: 2,
                        text: const TextSpan(
                          // text: "Al registrarme, acepto",
                          children: [
                            TextSpan(
                                text: "Al registrarme, acepto ",
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: "los términos y condiciones \n",
                                style: TextStyle(color: Colors.pinkAccent)),
                            TextSpan(
                                text: "y la ",
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: "política de privacidad",
                                style: TextStyle(color: Colors.pinkAccent)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {
                        print(_email);
                        print(_check);
                        print(_password);
                        print(_name);
                        print(_email);
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: const Text(
                        'Crear Cuenta',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '¿Ya tienes cuenta?',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                          color: Colors.pinkAccent, fontSize: 15),
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
