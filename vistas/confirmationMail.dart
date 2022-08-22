import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:miapp_flutter1/vistas/signUpPage.dart';
import 'package:miapp_flutter1/vistas/userPage.dart';
import 'package:miapp_flutter1/widgets/wcWidgets.dart';

class ConfirmationMail extends StatefulWidget {
  const ConfirmationMail({Key? key}) : super(key: key);

  @override
  State<ConfirmationMail> createState() => _ConfirmationMailState();
}

class _ConfirmationMailState extends State<ConfirmationMail> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenWIdth = MediaQuery.of(context).size.width;
    bool x = false;
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/raw.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Spacer(
              flex: 15,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: SizedBox(
                width: screenWIdth * 0.6,
                child: TextField(
                  decoration: const InputDecoration(
                      hintText: "Codigo de confirmacion",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                  onSubmitted: (value) {
                    setState(() {
                      x = true;
                    });
                  },
                ),
              ),
            ),
            const Spacer(),
            largeButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const UserPage();
                  },
                ),
              );
            }, Colors.amber, "confirmar"),
            const Spacer(
              flex: 10,
            ),
            smallButton(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpPage();
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
