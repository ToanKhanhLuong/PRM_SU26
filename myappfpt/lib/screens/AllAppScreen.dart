import 'package:flutter/material.dart';

class AllAppScreen extends StatelessWidget {
  const AllAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Type feature's name",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xFFBDBDBD),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 18,
                        color: Color(0xFFBDBDBD),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 1),
              const Icon(
                Icons.grid_view_sharp,
                color: Color(0xFF9E9E9E),
                size: 35,
              ),
            ],
          ),
        ),
      ),

      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(17),
              child: Text(
                "All App",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              color: Color(0xFFF5F5F5),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 7,
                ),
                child: Text(
                  "WORK",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    "lib/assets/iconNavbar/ic_favourite_approve_now.png",
                  ),
                ),
              ),
              title: const Text("Reward",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 17),),
              subtitle: const Text(
                "Send colleagues a thank you note or reward Gold for exceptional contribution",
              ),
            ),
            Divider(height: 1),


            ListTile(
              leading: CircleAvatar(child: Text('B')),
              title: Text('Headline'),
              subtitle: Text(
                'Longer supporting text to demonstrate how the text wraps and how the leading and trailing widgets are centered vertically with the text.',
              ),

            ),
            Divider(height: 0),

            ListTile(
              leading: CircleAvatar(child: Text('C')),
              title: Text('Headline'),
              subtitle: Text(
                "Longer supporting text to demonstrate how the text wraps and how setting 'ListTile.isThreeLine = true' aligns leading and trailing widgets to the top vertically with the text.",
              ),
              trailing: Icon(Icons.favorite_rounded),
              isThreeLine: true,
            ),
            Divider(height: 0),
          ],
        ),
      ),
    );
  }
}