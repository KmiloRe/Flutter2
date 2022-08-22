import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/menuMobile2.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class DetalleComidaPage2 extends StatelessWidget {
  final String texto;
  final String imagen;
  final String valor;
  // ignore: use_key_in_widget_constructors
  const DetalleComidaPage2(
      {required this.texto, required this.valor, required this.imagen});
  //const DetalleComida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String s = "\$";
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        // Icons.shopping_cart_checkout
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.shopping_cart_sharp),
                onPressed: () {},
              ),
              const Text(
                "Finaliza tú pedido",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 4,
            ),
            Image(image: AssetImage(imagen)),
            const Spacer(),
            Text(
              texto,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const Spacer(
              flex: 4,
            ),
            Text(s + valor),
            const Spacer(),
            const Icon(Icons.add_shopping_cart),
            const Spacer(
              flex: 15,
            ),
            smallButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MenuMobile2();
                    },
                  ),
                );
              },
              Colors.black87,
              "Back",
              Colors.white60,
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
