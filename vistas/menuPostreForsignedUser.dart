import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/carritoCompraPage.dart';
import 'package:miapp_flutter1/vistas/descuentosPage.dart';
import 'package:miapp_flutter1/vistas/detalleComidaPage.dart';
import 'package:miapp_flutter1/vistas/locationsPage.dart';
import 'package:miapp_flutter1/vistas/menuBebidasForSignedIn.dart';
import 'package:miapp_flutter1/vistas/menuMobileForsignedUser.dart';
import 'package:miapp_flutter1/vistas/userPage.dart';
import 'package:miapp_flutter1/vistas/wellcomePage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class MenuPostre3 extends StatelessWidget {
  const MenuPostre3({Key? key}) : super(key: key);

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
                    onTap: () {},
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            //Aca debe return menu
                            return const MenuBebidas3(); //MenuMobile();
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
                            return const MenuMobile3(); //MenuMobile();
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
                        return CarritoCompraPage();
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

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetalleComidaPage(
                                      texto:
                                          "Delicioso postre, \nAmada es imposible borrar de mi memoriaMe persigue el recuerdo de tu extraño mirarEsa risa tan tuya, tus labios tentadoresQue dejaron su encanto prendido en mi ansiedadEn mi alma vagabunda se fundió el alma tuya \n Como el llano se funde cuando lo besa el sol\nPor eso, aunque otros labios me dieron su ternura\nNinguno como el tuyo llego a mi corazón\n Fueron los ojos tuyos temas de mis canciones \n Fueron los labios tuyos música en mi cantar \nY ahora son tus ojos mi pena y mis dolores Son esos labios tuyos mi destino fatal",
                                      valor: "15.000",
                                      imagen: "assets/p1.jpg");
                                },
                              ),
                            );
                            //Especifico
                          },
                          child: Image(
                              height: screenheight * 0.13,
                              width: screenWIdth * 0.23,
                              image: const AssetImage("assets/p1.jpg")),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            subTitleText("Postre blanco"),
                            const Spacer(),
                            regularText('$s' + " 15.000"),
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

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetalleComidaPage(
                                      texto:
                                          "Delicioso postre, \nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxcuerdo de tu extraño mirarEsa risa tan tuya, tus labios tentadoresQue dejaron su encanto prendido en mi ansiedadEn mi alma vagabunda se fundió el alma tuya \n Como el llano se funde cuando lo besa el sol\nPor eso, aunque otros labios me dieron su ternura\nNinguno como el tuyo llego a mi corazón\n Fueron los ojos tuyos temas de mis canciones \n Fueron los labios tuyos música en mi cantar \nY ahora son tus ojos mi pena y mis dolores Son esos labios tuyos mi destino fatal",
                                      valor: "15.000",
                                      imagen: "assets/p2.jpg");
                                },
                              ),
                            );
                            //Especifico
                          },
                          child: Image(
                              height: screenheight * 0.13,
                              width: screenWIdth * 0.23,
                              image: const AssetImage("assets/p2.jpg")),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            subTitleText("Postre cafe"),
                            const Spacer(),
                            regularText('$s' + " 15.000"),
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

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetalleComidaPage(
                                      texto:
                                          "postre tarta, \nbifebifebifebifebifebiefAmada es imposible borrar de mi memoriaMe persigue el recuerdo de tu extraño mirarEsa risa tan tuya, tus labios tentadoresQue dejaron su encanto prendido en mi ansiedadEn mi alma vagabunda se fundió el alma tuya \n Como el llano se funde cuando lo besa el sol\nPor eso, aunque otros labios me dieron su ternura\nNinguno como el tuyo llego a mi corazón\n Fueron los ojos tuyos temas de mis canciones \n Fueron los labios tuyos música en mi cantar \nY ahora son tus ojos mi pena y mis dolores Son esos labios tuyos mi destino fatal",
                                      valor: "10.000",
                                      imagen: "assets/puntaanca.jpg");
                                },
                              ),
                            );
                            //Especifico
                          },
                          child: Image(
                              height: screenheight * 0.13,
                              width: screenWIdth * 0.23,
                              image: const AssetImage("assets/p3.jpg")),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            subTitleText("Tarta Perea"),
                            const Spacer(),
                            regularText('$s' + " 10.000"),
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

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetalleComidaPage(
                                      texto:
                                          "Delicioso postre, \nAmada es imposible borrar de mi memoriaMe persigue el recuerdo de tu extraño mirarEsa risa tan tuya, tus labios tentadoresQue dejaron su encanto prendido en mi ansiedadEn mi alma vagabunda se fundió el alma tuya \n Como el llano se funde cuando lo besa el sol\nPor eso, aunque otros labios me dieron su ternura\nNinguno como el tuyo llego a mi corazón\n Fueron los ojos tuyos temas de mis canciones \n Fueron los labios tuyos música en mi cantar \nY ahora son tus ojos mi pena y mis dolores Son esos labios tuyos mi destino fatal",
                                      valor: "15.000",
                                      imagen: "assets/p1.jpg");
                                },
                              ),
                            );
                            //Especifico
                          },
                          child: Image(
                              height: screenheight * 0.13,
                              width: screenWIdth * 0.23,
                              image: const AssetImage("assets/p1.jpg")),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            subTitleText("Postre blanco"),
                            const Spacer(),
                            regularText('$s' + " 15.000"),
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

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetalleComidaPage(
                                      texto:
                                          "Delicioso postre, \nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxcuerdo de tu extraño mirarEsa risa tan tuya, tus labios tentadoresQue dejaron su encanto prendido en mi ansiedadEn mi alma vagabunda se fundió el alma tuya \n Como el llano se funde cuando lo besa el sol\nPor eso, aunque otros labios me dieron su ternura\nNinguno como el tuyo llego a mi corazón\n Fueron los ojos tuyos temas de mis canciones \n Fueron los labios tuyos música en mi cantar \nY ahora son tus ojos mi pena y mis dolores Son esos labios tuyos mi destino fatal",
                                      valor: "15.000",
                                      imagen: "assets/p2.jpg");
                                },
                              ),
                            );
                            //Especifico
                          },
                          child: Image(
                              height: screenheight * 0.13,
                              width: screenWIdth * 0.23,
                              image: const AssetImage("assets/p2.jpg")),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            subTitleText("Postre cafe"),
                            const Spacer(),
                            regularText('$s' + " 15.000"),
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

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetalleComidaPage(
                                      texto:
                                          "postre tarta, \nbifebifebifebifebifebiefAmada es imposible borrar de mi memoriaMe persigue el recuerdo de tu extraño mirarEsa risa tan tuya, tus labios tentadoresQue dejaron su encanto prendido en mi ansiedadEn mi alma vagabunda se fundió el alma tuya \n Como el llano se funde cuando lo besa el sol\nPor eso, aunque otros labios me dieron su ternura\nNinguno como el tuyo llego a mi corazón\n Fueron los ojos tuyos temas de mis canciones \n Fueron los labios tuyos música en mi cantar \nY ahora son tus ojos mi pena y mis dolores Son esos labios tuyos mi destino fatal",
                                      valor: "10.000",
                                      imagen: "assets/puntaanca.jpg");
                                },
                              ),
                            );
                            //Especifico
                          },
                          child: Image(
                              height: screenheight * 0.13,
                              width: screenWIdth * 0.23,
                              image: const AssetImage("assets/p3.jpg")),
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            subTitleText("Tarta Perea"),
                            const Spacer(),
                            regularText('$s' + " 10.000"),
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
