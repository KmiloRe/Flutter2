import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/carritoCompraPage.dart';
import 'package:miapp_flutter1/vistas/userPage.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class RestaurantePage extends StatelessWidget {
  const RestaurantePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/closed.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
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
