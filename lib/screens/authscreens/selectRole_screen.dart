import 'package:flutter/material.dart';

class SelectroleScreen extends StatefulWidget {
  const SelectroleScreen({super.key});

  @override
  State<SelectroleScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SelectroleScreen> {
  String selectedType = "tenant";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                "assets/images/splash2.jpeg",
                fit: BoxFit.cover,
              ),
            ),

            // White section
            Positioned(
              left: 20,
              right: 20,
              top: 60,
              bottom: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),

                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20),

                    child: Column(
                      children: [
                        const SizedBox(height: 20),

                        // Top image
                        Image.asset(
                          "assets/images/homegray.jpeg",
                          width: 100,
                          height: 100,
                        ),

                        const SizedBox(height: 20),

                        // Title
                        const Text(
                          "Who are You?",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 4),

                        // Subtitle
                        const Text(
                          "Pick your role to get started with Stayerra.",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),

                        const SizedBox(height: 40),

                        // Tenant
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedType = "tenant";
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: selectedType == "tenant"
                                    ? Colors.blue
                                    : Colors.grey.shade300,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                // Tenant icon
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFF5C7),
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  child: const Icon(
                                    Icons.person_outline,
                                    color: Colors.orange,
                                    size: 40,
                                  ),
                                ),

                                const SizedBox(width: 15),

                                // Tenant text
                                const Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "I am a Tenant",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      SizedBox(height: 5),

                                      Text(
                                        "Looking for a place to stay.",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Radio
                                Radio<String>(
                                  value: "tenant",
                                  groupValue: selectedType,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedType = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Owner
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedType = "owner";
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: selectedType == "owner"
                                    ? Colors.blue
                                    : Colors.grey.shade300,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                // Owner icon
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFF5C7),
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  child: const Icon(
                                    Icons.home_outlined,
                                    color: Color.fromARGB(255, 55, 165, 229),
                                    size: 40,
                                  ),
                                ),

                                const SizedBox(width: 15),

                                // Owner text
                                const Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "I am an Owner",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                      SizedBox(height: 5),

                                      Text(
                                        "I have a place to rent.",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Radio
                                Radio<String>(
                                  value: "owner",
                                  groupValue: selectedType,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedType = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 50),

                        SizedBox(
                          width: double.infinity,
                          height: 55,

                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SelectroleScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(
                                255,
                                239,
                                196,
                                23,
                              ),
                              // Button background color
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Continue",
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
                        SizedBox(height: 20),
                        Text(
                          "STAYERRA",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
