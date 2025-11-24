import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psa_academy/controller/authWrapper.dart';
import 'package:psa_academy/pages/login_screen.dart';
import 'package:psa_academy/service/provider/authProvider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp(); // Call the method here
  }

  // Define the method
  Future<void> _initializeApp() async {
    final authProvider = Provider.of<Authprovider>(context, listen: false);
    await authProvider.initialize(); // Load saved preferences and auth state

    await Future.delayed(const Duration(seconds: 2)); // Simulate loading time

    // Redirect based on authentication state
    if (authProvider.keepSignedIn && authProvider.role != null) {
      // User is already signed in, navigate to role-based home
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const AuthWrapper(),
      ));
    } else {
      // User is not signed in, navigate to login screen
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your splash screen logo or animation here
            Image.asset(
              'assets/images/main_large.png',
              width: 150,
              height: 150,
            ),
            // Loading indicator
          ],
        ),
      ),
    );
  }
}
