import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/eventosPage.dart';
import 'package:miapp_flutter1/vistas/locationsPage.dart';
import 'package:miapp_flutter1/vistas/menuMobile2.dart';
import 'package:miapp_flutter1/vistas/signInPage.dart';
import 'package:miapp_flutter1/vistas/signUpPage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool x = false;
  double screenheight = 0.0;
  double screenWIdth = 0.0;
  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenWIdth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
            child: Container(
      width: screenWIdth * 1,
      height: screenheight * 1,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 139, 137, 135),
        //borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          //Spacer(flex: 2),
          const Spacer(flex: 2),
          SuptitleText("Red Beef"),
          const Spacer(flex: 3),
          smallText("El que pida bien cocida lo matamos :D"),
          const Image(image: AssetImage("assets/logo.png")),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
              xtrasmallButton(
                () {
                  //Aqui irá nuestra función de Sign In
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        //Aca debe return menu
                        return MenuMobile2(); //MenuMobile();
                      },
                    ),
                  );
                },
                Colors.white,
                "Menú",
              ),
              Spacer(),
              xtrasmallButton(
                () {
                  //Aqui irá nuestra función de Sign In
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        //Aca debe return menu
                        return const LocationPage();
                      },
                    ),
                  );
                },
                Colors.white,
                "Ubicación",
              ),
              const Spacer(),
              xtrasmallButton(
                () {
                  //Aqui irá nuestra función de Sign In
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        //Aca debe return menu
                        return const EventosPage();
                      },
                    ),
                  );
                },
                Colors.white,
                "Eventos",
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
          const Spacer(flex: 1),
          largeButton(
            () {
              //Aqui irá nuestra función de Sign In
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignInPage();
                  },
                ),
              );
            },
            Colors.transparent,
            "Ingresa",
          ),
          const Spacer(),
          largeButton(
            () {
              //Aqui irá nuestra función de Sign Up
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpPage();
                  },
                ),
              );
            },
            const Color.fromARGB(255, 155, 153, 148),
            "Registro",
          ),
          const Spacer(flex: 1),
          smallText("Red Beef Colombia™, todos los derechos reservados")
        ],
      ),
    )));
  }
}
