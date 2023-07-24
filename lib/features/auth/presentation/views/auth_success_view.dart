import 'package:flutter/material.dart';

import 'widgets/auth_success_view_body.dart';

class AuthSuccessView extends StatelessWidget {
  const AuthSuccessView({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        title: Text('$text Success'),
      ),
      body: AuthSuccessViewBody(text: text),
    );
  }
}
