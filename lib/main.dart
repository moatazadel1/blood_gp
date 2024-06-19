import 'package:blood_gp/features/splash/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BloodGp());
}

class BloodGp extends StatelessWidget {
  const BloodGp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: logo(),
    );
  }
}
