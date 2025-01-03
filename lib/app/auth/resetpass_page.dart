import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tpedical/components/inputs.dart';

class ResetPassPage extends StatefulWidget {
  const ResetPassPage({super.key});

  @override
  State<ResetPassPage> createState() => ResetPassPageState();
}

class ResetPassPageState extends State<ResetPassPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo & Form
              Column(
                children: [
                  // Logo
                  const SizedBox(
                    height: 250,
                    child: Image(image: AssetImage('assets/AppLogo.png')),
                  ),

                  // Input area
                  Column(
                    children: [
                      // Form
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Password field
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'PASSWORD ',
                                        style: TextStyle(
                                          color: Color(0xFF808080),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                          color: Color(0xFFFF3333),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const PasswordInput(),

                              const SizedBox(height: 12),
                              // Confirm password field
                              Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'CONFIRM PASSWORD ',
                                        style: TextStyle(
                                          color: Color(0xFF808080),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(
                                          color: Color(0xFFFF3333),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const PasswordInput(),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        print('RESET');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0065C0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: const Text(
                        'RESET NOW!',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/backbutton.svg',
                        width: 12,
                        height: 12,
                        color: const Color(0xFF0065C0),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        'BACK TO SIGN IN',
                        style: TextStyle(color: Color(0xFF0065C0), fontSize: 8),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
