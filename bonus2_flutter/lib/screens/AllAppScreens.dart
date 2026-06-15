import 'package:flutter/material.dart';

class AllAppScreens extends StatefulWidget {
  const AllAppScreens({super.key});

  @override
  State<AllAppScreens> createState() => _AllAppScreensState();
}

class _AllAppScreensState extends State<AllAppScreens> {
  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> _allFeatures = [
    {
      'category': 'WORK',
      'title': 'Approve Now',
      'desc': 'Notify managers of pending requests and allow managers to approve/reject requests from internal tools',
      'icon': 'assets/iconNavbar/ic_favourite_approve_now.png'
    },
    {
      'category': 'WORK',
      'title': 'Reward',
      'desc': 'Send colleagues a thank you note or reward Gold for exceptional contribution',
      'icon': 'assets/iconNavbar/ic_favourite_recognition.png'
    },
    {
      'category': 'WORK',
      'title': 'Discipline',
      'desc': 'Send a discipline warning to subordinates for violation of codes of conduct',
      'icon': 'assets/iconNavbar/ic_favourite_discipline.png'
    },
    {
      'category': 'WORK',
      'title': 'Learning',
      'desc': 'View a list of mandatory, registered and suggested learning courses; check-in and send feedback for each course',
      'icon': 'assets/iconNavbar/ic_favourite_learning.png'
    },
    {
      'category': 'WORK',
      'title': 'My Tasks',
      'desc': '',
      'icon': 'assets/iconNavbar/ic_favourite_recognition.png'
    },
    {
      'category': 'UTILITIES',
      'title': 'FPT Care',
      'desc': 'FPT Care',
      'icon': 'assets/iconNavbar/ic_favourite_fpt_care.png'
    },
    {
      'category': 'UTILITIES',
      'title': 'Events',
      'desc': 'Register, check-in, check-out, send feedback to company events and programs',
      'icon': 'assets/iconNavbar/ic_favourite_event.png'
    },
    {
      'category': 'UTILITIES',
      'title': 'Survey',
      'desc': 'Conduct and collect responses for company-wide or department-wide surveys',
      'icon': 'assets/iconNavbar/ic_favourite_survey.png'
    },
    {
      'category': 'UTILITIES',
      'title': 'FPT Dating',
      'desc': 'Dating feature.',
      'icon': 'assets/iconNavbar/ic_favourite_dating.png'
    },
    {
      'category': 'UTILITIES',
      'title': 'Payslip',
      'desc': 'Payslip',
      'icon': 'assets/iconNavbar/ic_favourite_payslip.png'
    },
    {
      'category': 'UTILITIES',
      'title': 'Birthday',
      'desc': 'Your birthday is a special moment. We\'re very happy to send the best wishes for you. Colleagues can send birthday wishes on myFPT.',
      'icon': 'assets/iconNavbar/ic_favourite_hpbd_employee.png'
    },
    {
      'category': 'NEWS',
      'title': 'News',
      'desc': 'A collection of latest news and notable events around the company',
      'icon': 'assets/iconNavbar/ic_favourite_news.png'
    },
    {
      'category': 'NEWS',
      'title': 'Star Ave',
      'desc': 'Recognise notable achievements within a business unit or within FPT',
      'icon': 'assets/iconNavbar/ic_favourite_star_ave.png'
    },
    {
      'category': 'WIKI',
      'title': 'Employee Info',
      'desc': 'Basic, non-confidential employee information (name, gender, department, etc.)',
      'icon': 'assets/iconNavbar/ic_favourite_employee_info.png'
    },
    {
      'category': 'GAME',
      'title': 'Game',
      'desc': 'Community-engaging games with Gold as rewards',
      'icon': 'assets/iconNavbar/ic_favourite_game.png'
    },
  ];

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Group all features by category
    final Map<String, List<Map<String, String>>> groupedFeatures = {};
    for (var item in _allFeatures) {
      groupedFeatures.putIfAbsent(item['category']!, () => []).add(item);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xFFECEEF2),
                        borderRadius: BorderRadius.circular(1),
                      ),
                      child: const TextField(
                        style: TextStyle(fontSize: 19),
                        decoration: InputDecoration(
                          hintText: "Type feature's name",
                          hintStyle: TextStyle(
                            color: Color(0xFF8E8E93),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF8E8E93),
                            size: 20,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 1),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.grid_view_outlined,
                      color: Color(0xFF8E8E93),
                      size: 34,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Scrollbar(
                controller: _scrollController,
                thumbVisibility: true,
                thickness: 6,
                radius: const Radius.circular(3),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
                        child: Text(
                          "All Apps",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),

                      for (var category in ['WORK', 'UTILITIES', 'NEWS', 'WIKI', 'GAME']) ...[
                        if (groupedFeatures.containsKey(category)) ...[
                          _buildCategoryHeader(category),
                          for (var i = 0; i < groupedFeatures[category]!.length; i++) ...[
                            _buildFeatureItem(context, groupedFeatures[category]![i]),
                            if (i < groupedFeatures[category]!.length - 1)
                              const Divider(
                                height: 1,
                                color: Color(0xFFF2F2F7),
                                indent: 16,
                                endIndent: 16,
                              ),
                          ],
                        ],
                      ],
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryHeader(String title) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF2F2F7),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          color: Color(0xFF6E6E73),
          letterSpacing: 0.5,
        ),
      ),
    );
  }

  Widget _buildFeatureItem(BuildContext context, Map<String, String> item) {
    final hasDesc = item['desc'] != null && item['desc']!.isNotEmpty;

    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Opening ${item['title']}..."),
            duration: const Duration(seconds: 1),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: const BoxDecoration(
                color: Color(0xFFF0F4FA),
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    item['icon']!,
                    width: 28,
                    height: 28,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.widgets_rounded, color: Colors.blueAccent, size: 24),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (hasDesc) const SizedBox(height: 2) else const SizedBox(height: 12),
                  Text(
                    item['title']!,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  if (hasDesc) ...[
                    const SizedBox(height: 4),
                    Text(
                      item['desc']!,
                      style: const TextStyle(
                        fontSize: 12.5,
                        color: Color(0xFF6E6E73),
                        height: 1.3,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
