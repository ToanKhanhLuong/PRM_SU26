import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff3f5f9c),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Column(
            children: [
              const SizedBox(height: 135),

            Container(
  width: 57,
  height: 57,
  decoration: BoxDecoration( // Đổi nền sang màu xanh Facebook (sửa lỗi BoxDecoration)
    color: Colors.white,
    borderRadius: BorderRadius.circular(4),
  ),
  child: const Padding(
    padding: EdgeInsets.only(left: 25.0, bottom: 0.0, right: 8.0), // <- NEW: Bottom padding is now 0.0
    child: Text(
      "f", // Chữ f màu xanh Facebook
      style: TextStyle(
        color: Color(0xff3b5998),
        fontSize: 58, // <- NEW: Increased font size to fill the bottom space
        fontWeight: FontWeight.w800,
        height: 1.3,
      ),
    ),
  ),
),

              const SizedBox(height: 20),

              const Text(
                "English  •  Change",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),

              const SizedBox(height: 85),

              TextField(
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white, fontSize: 22),
                decoration: const InputDecoration(
                  hintText: "Email or Phone",
                  hintStyle: TextStyle(color: Colors.white54, fontSize: 22),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white24, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                obscureText: true,
                cursorColor: Colors.white,
                style: const TextStyle(color: Colors.white, fontSize: 22),
                decoration: const InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white38, fontSize: 22),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white24, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.16),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: const Text(
                    "LOG IN",
                    style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const Spacer(),

              const Text(
                "Sign Up for Facebook",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 28),

              SizedBox(
                height: 30,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const Center(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: const Center(
                          child: Text(
                            "?",
                            style: TextStyle(
                              color: Color(0xff3f5f9c),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              height: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 38),
            ],
          ),
        ),
      ),
    );
  }
}
