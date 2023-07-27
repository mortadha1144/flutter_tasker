import 'package:flutter/material.dart';
import '../../../../core/utils/size_config.dart';
import 'widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: const LogInViewBody(),
    );
  }
}
