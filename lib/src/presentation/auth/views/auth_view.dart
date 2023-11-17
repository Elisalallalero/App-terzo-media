import 'package:flutter/material.dart';
import 'package:ied_terzo_anno/src/presentation/auth/widgets/social_button.dart';

class AuthConnector extends StatelessWidget {
  const AuthConnector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold per far partire la pagina
      body: Row(
        children: [
          Expanded(
            child: ColoredBox(
              //container utilizzati solo per il colore
              color: Colors.deepPurple.withOpacity(0.2),
              //Expanded sono dei conteiner che si espandono per tutta la pagina
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, //spacebetween serve per distanziare le cose in modo tale da dare lo stesso spazio fra di loro
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Logo'),
                    Text('Description'),
                    SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox.shrink(),
                Column(
                  children: [
                    Text('Get Started!'),
                    SocialButton(),
                  ],
                ),
                Column(
                  children: [
                    Text('IED Exam'),
                    Text('Privacy Policy'),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
