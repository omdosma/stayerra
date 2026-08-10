import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stayerra/screens/authscreens/splashscreens/splash_screen_2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});
  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  late final Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/login_screen');
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    int currentPage = 0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              child: Image.asset(
                'assets/images/splash1.jpeg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Capsule
              Container(
                width: 30,
                height: 10,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 196, 23),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),

              const SizedBox(width: 8),

              // Circle
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 180, 181, 182),
                  shape: BoxShape.circle,
                ),
              ),

              const SizedBox(width: 8),

              // Circle
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 180, 181, 182),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "Discover Verified PGs & Hostels",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          const Text(
            "Browse thousands of verified stays with photos, amenities, and reviews.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
          ),

          Spacer(),
          //const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen2(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 239, 196, 23),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Next",
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 4, 4),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward,
                      color: Color.fromARGB(255, 4, 4, 4),
                      size: 20,
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
