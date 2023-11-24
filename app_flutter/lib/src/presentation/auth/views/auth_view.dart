import 'package:flutter/material.dart';
import 'package:ied_terzo_anno/src/core/constants.dart';
import 'package:ied_terzo_anno/src/presentation/auth/widgets/social_button.dart';
import 'package:ied_terzo_anno/src/presentation/auth/widgets/social_buttondue.dart';

class AuthConnector extends StatefulWidget {
  const AuthConnector({super.key});

  @override
  State<AuthConnector> createState() => _AuthConnectorState();
}

class _AuthConnectorState extends State<AuthConnector> {
  @override
  void initState() {
    super.initState();
    print(supabase.auth.currentUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/quattro.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(1.0)],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Image.asset('assets/img/logo.png'),
                      ),
                      const Text(
                        'IL MAXXI SI ESPANDE, IL FUTURO PRENDE VITA',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black, // Imposta il colore di sfondo a nero
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox.shrink(),
                    Column(
                      children: [
                        Text(
                          'Get Started!',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255,
                                255), // Imposta il colore del testo a bianco
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SocialButton(),
                            ),
                            SizedBox(width: 16),
                            Expanded(child: SocialButtonDue()),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'IED Exam',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10.0,
                            color: Color.fromARGB(166, 255, 255,
                                255), // Imposta il colore del testo a bianco
                          ),
                        ),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10.0,
                            color: Color.fromARGB(166, 255, 255,
                                255), // Imposta il colore del testo a bianco
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
