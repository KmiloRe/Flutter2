import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/confirmationMail.dart';
import 'package:miapp_flutter1/vistas/descuentosPage.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  double screenheight = 0.0;
  double screenWIdth = 0.0;
  bool x = false;
  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenWIdth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Container(
        width: screenWIdth,
        height: screenheight,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 139, 137, 135),
        ),
        child: Column(
          children: [
            const Spacer(),
            titleText("Registro"),
            const Divider(
              thickness: 10,
              indent: 20,
              endIndent: 20,
            ),
            Image(
                height: screenheight * 0.2,
                width: screenWIdth * 0.3,
                image: const AssetImage("assets/tbone.jpeg")),
            SizedBox(
              width: screenWIdth * 0.3,
              child: const TextField(
                decoration: InputDecoration(hintText: "Nombre"),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              width: screenWIdth * 0.2,
              child: const TextField(
                decoration: InputDecoration(hintText: "Celular"),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              thickness: 3,
              indent: 20,
              endIndent: 20,
            ),
            SizedBox(
              width: screenWIdth * 0.2,
              child: TextField(
                decoration: const InputDecoration(hintText: "Correo"),
                textAlign: TextAlign.center,
                onSubmitted: (value) {
                  setState(() {
                    x = true;
                  });
                },
              ),
            ),
            x
                ? largeButtonColoredT(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ConfirmationMail();
                          },
                        ),
                      );
                    },
                    Colors.black,
                    "Enviar correo confirmacion",
                    Colors.white,
                  )
                : Container(),
            const Spacer(),
            smallButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const WelcomePage();
                    },
                  ),
                );
              },
              Colors.transparent,
              "Back",
              Colors.black,
            ),
            Spacer(flex: 1),
            smallText("Red Beef Colombia, todos los derechos reservados")
          ],
        ),
      ),
    ));
  }
}
