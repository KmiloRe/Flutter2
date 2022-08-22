import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/userPage.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class DescuentosPage extends StatefulWidget {
  const DescuentosPage({Key? key}) : super(key: key);

  @override
  State<DescuentosPage> createState() => DescuentoPageState();
}

class DescuentoPageState extends State<DescuentosPage> {
  bool x = false;

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenWIdth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Center(
      child: Container(
        width: screenWIdth,
        height: screenheight,
        decoration: const BoxDecoration(
          color: Color(0xFFF2E8DF),
          //borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            const Spacer(),
            titleText("Tus Descuentos"),
            const Spacer(flex: 1),
            const Image(image: AssetImage("assets/nodis.png")),
            const Spacer(flex: 9),
            smallButton(
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
              Colors.transparent,
              "Back",
              Colors.black,
            ),
            const Spacer(),
            smallText("Red Beef Colombia™, todos los derechos reservados")
          ],
        ),
      ),
    ));
  }
}
