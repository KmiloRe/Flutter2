import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/carritoCompraPage.dart';
import 'package:miapp_flutter1/vistas/pagarPage.dart';
import 'package:miapp_flutter1/vistas/userPage.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class DomicilioPage extends StatelessWidget {
  const DomicilioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenWIdth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 5,
            ),
            SizedBox(
              width: screenWIdth * 0.3,
              child: const TextField(
                decoration: InputDecoration(hintText: "Direccion"),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            largeButtonColoredT(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PagarPage();
                  },
                ),
              );
            }, Colors.grey, "Pagar", Colors.black),
            const Spacer(
              flex: 20,
            ),
            smallButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CarritoCompraPage();
                    },
                  ),
                );
              },
              Colors.black87,
              "Back",
              Colors.white60,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
