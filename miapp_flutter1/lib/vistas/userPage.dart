import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/descuentosPage.dart';
import 'package:miapp_flutter1/vistas/menuMobileForsignedUser.dart';
import 'package:miapp_flutter1/vistas/reservasPage.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenWIdth = MediaQuery.of(context).size.width;
    //Evita rotacion de pantalla
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
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
            titleText("Bienvenido de nuevo"),
            const Spacer(flex: 1),
            const Image(image: AssetImage("assets/romanmeat.jpg")),
            const Spacer(),
            //subTitleText("Ingresa tu usuario"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              const Spacer(
                flex: 3,
              ),
              Column(
                children: [
                  largeButtonColoredT(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          //MenuMobile3 es el menu para quienes inician sesion
                          return ReservasPage();
                        },
                      ),
                    );
                  }, Colors.white, "Reserva", Colors.black),
                  const Divider(
                    thickness: 8,
                    indent: 20,
                    endIndent: 20,
                  ),
                  largeButtonColoredT(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          //MenuMobile3 es el menu para quienes inician sesion
                          return const MenuMobile3();
                        },
                      ),
                    );
                  }, Colors.white, "Menú", Colors.black),
                ],
              ),
              const Spacer(),
              largeButtonColoredT(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const DescuentosPage();
                    },
                  ),
                );
              }, Colors.amber, "Descuentos", Colors.black),
              const Spacer(
                flex: 3,
              ),
            ]),
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
