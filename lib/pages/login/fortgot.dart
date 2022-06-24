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
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                child: const Text(
                  'Ingresa tu email para recuperar tu contraseña',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                margin: const EdgeInsets.only(right: 190),
                child: const Text(
                  'Correo electrónico',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
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
                    hintText: 'Direccion de correo',
                  ),
                  onChanged: (text) {},
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(35, 20, 20, 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña',
                  style: TextStyle(
                    color: Colors.grey, 
                    fontSize: 12
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 45),
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
                        'Enviar solicitud',
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
