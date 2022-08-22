import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/carritoCompraPage.dart';
import 'package:miapp_flutter1/vistas/descuentosPage.dart';
import 'package:miapp_flutter1/vistas/detalleComidaPage.dart';
import 'package:miapp_flutter1/vistas/detalleComidaPageUnsigned.dart';
import 'package:miapp_flutter1/vistas/locationsPage.dart';
import 'package:miapp_flutter1/vistas/menuMobile2.dart';
import 'package:miapp_flutter1/vistas/menuMobileForsignedUser.dart';
import 'package:miapp_flutter1/vistas/menuPostre2.dart';
import 'package:miapp_flutter1/vistas/signUpPage.dart';
import 'package:miapp_flutter1/vistas/userPage.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class MenuBebidas2 extends StatelessWidget {
  const MenuBebidas2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenWIdth = MediaQuery.of(context).size.width;
    String s = "\$";
    //Esto es para poder mostrar el simbolo $
    return Scaffold(
      appBar: AppBar(
        //title: Text("Menú"),
        //centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  //Aca debe return menu
                  return const UserPage(); //MenuMobile();
                },
              ),
            );
          },
        ),
        backgroundColor: Color.fromARGB(255, 139, 137, 135),
        actions: <Widget>[
          const Spacer(
            flex: 2,
          ),
          Padding(
              padding: EdgeInsets.only(right: screenWIdth * 0.1),
              child: Column(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            //Aca debe return menu
                            return const MenuPostre2(); //MenuMobile();
                          },
                        ),
                      );
                    },
                    child: const Icon(
                      //Icons.access_time_outlined,
                      //Icons.whatsapp_rounded,
                      //Icons.shopping_cart_checkout,
                      //Icons.table_restaurant_outlined,
                      //Icons.menu_book,
                      Icons.cake,
                      size: 26.0,
                    ),
                  ),
                  const Text(
                    "POSTRE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  const Spacer(),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(right: screenWIdth * 0.1),
              child: Column(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      //Icons.access_time_outlined,
                      //Icons.whatsapp_rounded,
                      //Icons.shopping_cart_checkout,
                      //Icons.table_restaurant_outlined,
                      //Icons.menu_book,
                      Icons.liquor,
                      size: 26.0,
                    ),
                  ),
                  const Text(
                    "BEBIDAS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  const Spacer(),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(right: screenWIdth * 0.1),
              child: Column(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            //Aca debe return menu
                            return const MenuMobile2(); //MenuMobile();
                          },
                        ),
                      );
                    },
                    child: const Icon(
                      //Icons.access_time_outlined,
                      //Icons.whatsapp_rounded,
                      //Icons.shopping_cart_checkout,
                      //Icons.table_restaurant_outlined,
                      //Icons.menu_book,
                      Icons.dinner_dining,
                      size: 26.0,
                    ),
                  ),
                  const Text(
                    "FUERTE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  const Spacer(),
                ],
              )),
          const Spacer(),
        ],
      ),
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
              const Spacer(),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.shopping_cart_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpPage();
                      },
                    ),
                  );
                },
              ),
              const Text(
                "Finaliza tú pedido",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const Divider(
                    thickness: 8,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    width: screenWIdth * 0.6,
                    margin: EdgeInsets.only(right: 20),
                    height: screenheight * 0.14,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 139, 137, 135),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 3,
                        ),
                        GestureDetector(
                          onTap: () {
                            //Aca va a la vista de info extra de la comida en
                            //var customer = Customer("bezkoder", 26, "US");

                            //Especifico
                          },
                          child: Image(
                              height: screenheight * 0.13,
                              width: screenWIdth * 0.23,
                              image: const AssetImage("assets/co2.webp")),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            subTitleText("CocaCola"),
                            const Spacer(),
                            regularText('$s' + " 5.000"),
                            const Spacer(),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            //Aca se suma el producto al carrito
                          },
                          child: const Icon(
                            //Icons.access_time_outlined,
                            //Icons.whatsapp_rounded,
                            //Icons.shopping_cart_checkout,
                            //Icons.table_restaurant_outlined,
                            //Icons.menu_book,
                            Icons.add_shopping_cart,
                            size: 26.0,
                          ),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 8,
                    indent: 20,
                    endIndent: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
