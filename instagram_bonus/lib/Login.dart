import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Keep resizeToAvoidBottomInset as true so the layout adjusts and remains
      // scrollable when the soft keyboard is visible, preventing yellow-black stripe overflow.
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6B4FA0), // Soft Retro Purple/Indigo (top-left)
              Color(0xFF9E3795), // Soft Purple-Magenta
              Color(0xFFC72D83), // Classic Magenta-Pink
              Color(0xFFD7325F), // Soft Rose-pink/Red (bottom-right)
            ],
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      // Upper Content Area (expands dynamically to push footer down)
                      Expanded(
                        child: SafeArea(
                          bottom: false,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 36.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(height: 120),

                                // Instagram Retro Branding Logo
                                Text(
                                  "Instagram",
                                  style: GoogleFonts.grandHotel(
                                    color: Colors.white,
                                    fontSize: 56,
                                    fontWeight: FontWeight.normal,
                                    letterSpacing: 0.5,
                                  ),
                                ),

                                const SizedBox(height: 40),

                                // Username Input Field
                                TextField(
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    hintText: "Username",
                                    hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.12),
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 12),

                                // Password Input Field
                                TextField(
                                  obscureText: true,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.12),
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 16),

                                // Log In Button (semi-transparent bordered button)
                                SizedBox(
                                  width: double.infinity,
                                  height: 48,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white.withOpacity(0.03),
                                      side: BorderSide(
                                        color: Colors.white.withOpacity(0.22),
                                        width: 1,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Text(
                                      "Log In",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.45),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 20),

                                // Forgot Details Help Link
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    children: const [
                                      TextSpan(text: "Forgot your login details? "),
                                      TextSpan(
                                        text: "Get help signing in.",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: 32),

                                // OR Separator
                                Row(
                                  children: [
                                    Expanded(
                                      child: Divider(
                                        color: Colors.white.withOpacity(0.18),
                                        thickness: 1,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16),
                                      child: Text(
                                        "OR",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.75),
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Divider(
                                        color: Colors.white.withOpacity(0.18),
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 24),

                                // Log in with Facebook
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Hollow Facebook Icon (erased letter 'f' showing gradient background)
                                    const HollowFacebookIcon(),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "Log in with Facebook",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 40), // Bottom padding spacing for column contents
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Full-width Footer at the absolute bottom
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.12),
                          border: Border(
                            top: BorderSide(
                              color: Colors.white.withOpacity(0.15),
                              width: 1,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.only(
                          top: 20,
                          bottom: 20 + MediaQuery.of(context).padding.bottom,
                        ),
                        child: Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.7),
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                              ),
                              children: const [
                                TextSpan(text: "Don't have an account? "),
                                TextSpan(
                                  text: "Sign up.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Custom widget to create a white rounded square with a hollow 'f' character cutout.
// It draws a solid white square and utilizes BlendMode.dstOut to transparently erase
// the letter 'f', revealing the gradient background behind it.
class HollowFacebookIcon extends StatelessWidget {
  const HollowFacebookIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(20, 20),
      painter: _HollowFacebookPainter(),
    );
  }
}

class _HollowFacebookPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    
    // Save a separate layer to isolate the destination-out blending operation
    canvas.saveLayer(rect, Paint());

    // 1. Paint a solid white rounded rectangle
    final whitePaint = Paint()..color = Colors.white;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        rect,
        const Radius.circular(1), // Matches the subtle rounded styling
      ),
      whitePaint,
    );

    // 2. Render the character 'f' using BlendMode.dstOut to cut it out
    final textPainter = TextPainter(
      text: TextSpan(
        text: 'f',
        style: TextStyle(
          fontSize: size.height * 0.90, // Scale the glyph inside the box
          fontWeight: FontWeight.w900,  // Ultra-bold glyph weight
          fontFamily: 'sans-serif',     // System sans-serif for classic look
          foreground: Paint()
            ..blendMode = BlendMode.dstOut
            ..color = Colors.black,     // Erases the destination pixels (white background)
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    
    textPainter.layout();

    // Mathematically center the glyph inside the boundaries
    final xOffset = (size.width - textPainter.width) / 2 + 1; // Align horizontally
    final yOffset = (size.height - textPainter.height) / 2 - (size.height * 0.0); // Offset descenders

    textPainter.paint(canvas, Offset(xOffset, yOffset));

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}