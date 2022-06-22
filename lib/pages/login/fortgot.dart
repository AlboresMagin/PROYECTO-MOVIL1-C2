import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
            Text('Recuperar Contraseña'),
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
        padding: const EdgeInsets.only(right: 10, left: 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                child: const Text(
                  'Ingresa tu email para recuperar tu contraseña',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.grey),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                margin: const EdgeInsets.only(right: 210),
                child: const Text(
                  'Correo electrónico',
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
                    hintText: 'Direccion de correo',
                  ),
                  onChanged: (text) {},
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, top: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Ingrese su correo electronico registrado y le \nenviaremos un correo electrónico que contiene un \nenlace para restablecer su contraseña',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              const SizedBox(height: 65),
              Container(
                padding: const EdgeInsets.only(top: 260),
                child: SizedBox(
                  width: size.width - 70,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: const Text(
                        'Enviar Solicitud',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
