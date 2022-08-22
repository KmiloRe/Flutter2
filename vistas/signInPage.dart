import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/descuentosPage.dart';
import 'package:miapp_flutter1/vistas/userPage.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool x = false;
  bool y = false;
  double screenheight = 0.0;
  double screenWIdth = 0.0;

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
          //borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Spacer(flex: 2),
            titleText("Sign In Page"),
            const Spacer(flex: 1),
            const Image(image: AssetImage("assets/cowmap.png")),
            const Spacer(),
            //subTitleText("Ingresa tu usuario"),
            SizedBox(
              width: screenWIdth * 0.7,
              child: TextField(
                decoration: const InputDecoration(hintText: "Usuario"),
                textAlign: TextAlign.center,
                onSubmitted: (value) {
                  setState(() {
                    y = true;
                  });
                },
              ),
            ),
            y
                ? SizedBox(
                    width: screenWIdth * 0.7,
                    child: TextField(
                      decoration: const InputDecoration(hintText: "Clave"),
                      textAlign: TextAlign.center,
                      onSubmitted: (value) {
                        setState(() {
                          x = true;
                        });
                      },
                    ),
                  )
                : Container(),
            const Spacer(),
            x
                ? largeButton(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const UserPage();
                          },
                        ),
                      );
                    },
                    Colors.white,
                    "Entrar",
                  )
                : Container(),
            const Spacer(flex: 2),
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
            const Spacer(flex: 1),
            smallText("Red Beef Colombia™, todos los derechos reservados")
          ],
        ),
      ),
    ));
  }
}
