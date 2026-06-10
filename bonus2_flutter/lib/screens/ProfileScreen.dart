import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double bannerHeight = 160;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner & Avatar Stack
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Top Banner Image
                Container(
                  height: bannerHeight,
                  width: double.infinity,
                  color: const Color(0xFF1976D2),
                  child: Image.asset(
                    'assets/iconNavbar/bg_banner_profile_male.png',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF1976D2), Color(0xFF1E88E5)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                ),
                // Circular Avatar with Camera overlay
                Positioned(
                  bottom: -45,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color(0xFFE3F2FD),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                "K",
                                style: TextStyle(
                                  color: Color(0xFF1976D2),
                                  fontSize: 44,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 4,
                        child: Image.asset(
                          'assets/iconProfile/icon_capture_image.png',
                          width: 28,
                          height: 28,
                          errorBuilder: (context, error, stackTrace) => Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Color(0xFF8E8E93),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 55),

            // Profile info
            const Text(
              "Phạm Quang Khang (KHANGPQ3)",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "(BM SE)",
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF8E8E93),
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 24),

            // Menu Items List
            Column(
              children: [
                _buildMenuItem(
                  iconPath: "assets/iconProfile/icon_my_profile.png",
                  title: "My Profile",
                  showChevron: true,
                  onTap: () {},
                ),
                const Divider(height: 1, color: Color(0xFFE5E5EA), thickness: 0.8),
                _buildMenuItem(
                  iconPath: "assets/iconProfile/icon_setting.png",
                  title: "Settings",
                  showChevron: true,
                  onTap: () {},
                ),
                const Divider(height: 1, color: Color(0xFFE5E5EA), thickness: 0.8),
                _buildMenuItem(
                  iconPath: "assets/iconProfile/icon_support_my_profile.png",
                  title: "Support",
                  showChevron: true,
                  onTap: () {},
                ),
                const Divider(height: 1, color: Color(0xFFE5E5EA), thickness: 0.8),
                _buildMenuItem(
                  iconPath: "assets/iconProfile/icon_faq_my_profile.png",
                  title: "FAQ",
                  showChevron: true,
                  onTap: () {},
                ),
                const Divider(height: 1, color: Color(0xFFE5E5EA), thickness: 0.8),
                _buildMenuItem(
                  iconPath: "assets/iconProfile/icon_profile_admin.png",
                  title: "Admin",
                  showChevron: true,
                  onTap: () {},
                ),
                const Divider(height: 1, color: Color(0xFFE5E5EA), thickness: 0.8),
                _buildMenuItem(
                  iconPath: "assets/iconProfile/icon_logout.png",
                  title: "Logout",
                  showChevron: false,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Footer Version
            const Text(
              "myFPT Version 5.9.10",
              style: TextStyle(
                fontSize: 11.5,
                color: Color(0xFF8E8E93),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Copyright @ FPT Software 2021",
              style: TextStyle(
                fontSize: 11.5,
                color: Color(0xFF8E8E93),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required String iconPath,
    required String title,
    required bool showChevron,
    required VoidCallback onTap,
  }) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      leading: Image.asset(
        iconPath,
        width: 24,
        height: 24,
        errorBuilder: (context, error, stackTrace) => const Icon(
          Icons.widgets,
          color: Color(0xFF1976D2),
          size: 24,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      trailing: showChevron
          ? const Icon(
              Icons.chevron_right_rounded,
              color: Color(0xFFC7C7CC),
              size: 24,
            )
          : null,
    );
  }
}
