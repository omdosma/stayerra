import 'package:flutter/material.dart';
import 'package:stayerra/screens/authscreens/selectRole_screen.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage = 2;
    return Scaffold(
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
                'assets/images/splashh3.jpeg',
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
              const SizedBox(width: 8),
              Container(
                width: 30,
                height: 10,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 196, 23),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "Connect with Community",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Join vibrant communities and make your stay comfortable with trusted hosts.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
            ),
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
                      builder: (context) => const SelectroleScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 239, 196, 23),
                  // Button background color
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(
                        color: Color.fromARGB(255, 4, 4, 4),
                        fontSize: 16,
                        fontWeight: .w100,
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
