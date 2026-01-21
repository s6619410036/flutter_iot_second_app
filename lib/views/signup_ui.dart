// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // พื้นหลังเหลือง
      backgroundColor: const Color(0xFFF3CA00),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              // ไล่เฉดการ์ดเหมือนรูป
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF0F3F0),
                  Color(0xFFC3C5C3),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Back Button
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 26,
                      ),
                    ),

                    const SizedBox(height: 15),

                    /// Image
                    Image.asset(
                      'assets/images/logo.png',
                      width: 180,
                    ),

                    const SizedBox(height: 20),

                    /// Title
                    const Text(
                      'Get On Board!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 6),

                    /// Subtitle
                    const Text(
                      'Create your profile to start your journey.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF8E8E8E),
                      ),
                    ),

                    const SizedBox(height: 25),

                    buildTextField(
                      hint: 'Full Name',
                      icon: Icons.person_outline,
                    ),

                    const SizedBox(height: 15),

                    buildTextField(
                      hint: 'E-Mail',
                      icon: Icons.email_outlined,
                    ),

                    const SizedBox(height: 15),

                    buildTextField(
                      hint: 'Phone No',
                      icon: Icons.numbers,
                    ),

                    const SizedBox(height: 15),

                    buildTextField(
                      hint: 'Password',
                      icon: FontAwesomeIcons.fingerprint,
                      obscure: true,
                    ),

                    const SizedBox(height: 25),

                    /// SIGNUP BUTTON
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'SIGNUP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1C1C1C),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width,
                          55,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// OR
                    const Center(
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: Color(0xFF8E8E8E),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Google Button
                    OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/googlelogo.png',
                            width: 20,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'SIGN-IN WITH GOOGLE',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFFBDBDBD)),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width,
                          55,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an Account?',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Reusable TextField
  Widget buildTextField({
    required String hint,
    required IconData icon,
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Color(0xFF9E9E9E)),
        prefixIcon: Icon(icon, color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFFEDEDED),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      ),
    );
  }
}
