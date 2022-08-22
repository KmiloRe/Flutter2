import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/domicilioPage.dart';
import 'package:miapp_flutter1/vistas/menuMobileForsignedUser.dart';
import 'package:miapp_flutter1/vistas/restaurantePage.dart';
import 'package:miapp_flutter1/vistas/userPage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class CarritoCompraPage extends StatefulWidget {
  const CarritoCompraPage({Key? key}) : super(key: key);

  @override
  State<CarritoCompraPage> createState() => _CarritoCompraPageState();
}

class _CarritoCompraPageState extends State<CarritoCompraPage> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenWIdth = MediaQuery.of(context).size.width;
    String s = "\$";
    return Scaffold(
      appBar: AppBar(
        //title: Text("Menú"),
        //centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
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
              Spacer(),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.delivery_dining),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DomicilioPage();
                      },
                    ),
                  );
                },
              ),
              const Text(
                "Domicilio",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              Spacer(),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.local_activity),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RestaurantePage();
                      },
                    ),
                  );
                },
              ),
              const Text(
                "En Local",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              titleText("Tus pedidos"),
              subTitleText(
                  "Aun no tienes pedidos, pues la app no es funcional jaja"),
              smallText("Aqui pondre un ejemplo de como se veria"),
            ],
          ),
        ),
      ),
    );
  }
}
