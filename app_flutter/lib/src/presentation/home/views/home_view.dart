import 'package:flutter/material.dart';
import 'package:ied_terzo_anno/src/core/constants.dart';
import 'package:ied_terzo_anno/src/presentation/auth/views/auth_view.dart';

class HomeConnector extends StatefulWidget {
  const HomeConnector({super.key});

  @override
  State<HomeConnector> createState() => _HomeConnectorState();
}

class _HomeConnectorState extends State<HomeConnector> {
  @override
  void initState() {
    if (user == null) {
      goTo(context, const AuthConnector());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(user?.userMetadata?['email']),
      ),
    );
  }
}
