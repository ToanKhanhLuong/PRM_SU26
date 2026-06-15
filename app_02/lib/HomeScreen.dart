import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> menuItems = [
      {'title': 'MyAppBar', 'route': '/MyAppBar'},
      {'title': 'MyText', 'route': '/MyText'},
      {'title': 'MyButton', 'route': '/MyButton'},
      {'title': 'MyButton2', 'route': '/MyButton2'},
      {'title': 'MyButton3', 'route': '/MyButton3'},
      {'title': 'MyColumnAndRow', 'route': '/MyColumnAndRow'},
      {'title': 'MyContainer', 'route': '/MyContainer'},
      {'title': 'MyScaffold', 'route': '/MyScaffold'},
      {'title': 'MyGestures', 'route': '/MyGestures'},
      {'title': 'MyTextField', 'route': '/MyTextField'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hoc Flutter voi ToanLK",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),


      body: Container(
        color: Colors.white60,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const Text(
                "Flutter Widgets",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // DANH SÁCH NGANG
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menuItems.length,
                  itemBuilder: (context, index) {
                    final item = menuItems[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          item['route']!,
                        );
                      },
                      child: Container(
                        width: 240,
                        margin: const EdgeInsets.only(right: 14),
                        child: Card(
                          child: Center(
                            child: Text(
                              item['title']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Danh sách Widgets",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // DANH SÁCH DỌC
              Column(
                children: menuItems.map((item) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      leading: const Icon(
                        Icons.flutter_dash,
                        color: Colors.blue,
                      ),
                      title: Text(item['title']!),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          item['route']!,
                        );
                      },
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),




    );
  }
}



//
// body: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
//
// children: [
// const Padding(
// padding: EdgeInsets.all(16),
// child: Text(
// "Flutter Widgets",
// style: TextStyle(
// fontSize: 22,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
//
// SizedBox(
// height: 450,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// padding: const EdgeInsets.symmetric(horizontal: 16),
// itemCount: menuItems.length,
// itemBuilder: (context, index) {
// final item = menuItems[index];
//
// return GestureDetector(
// onTap: () {
// Navigator.pushNamed(context, item['route']!);
// },
// child: Container(
// width: 340,
// margin: const EdgeInsets.only(right: 14),
// child: Card(
// elevation: 1,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(16),
// ),
// child: Padding(
// padding: const EdgeInsets.all(12),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Container(
// width: 40,
// height: 70,
// decoration: BoxDecoration(
// color: Colors.blue.withOpacity(0.15),
// borderRadius: BorderRadius.circular(18),
// ),
// child: const Icon(
// Icons.flutter_dash,
// size: 45,
// color: Colors.blue,
// ),
// ),
//
// const SizedBox(height: 14),
//
// Text(
// item['title']!,
// textAlign: TextAlign.center,
// maxLines: 2,
// overflow: TextOverflow.ellipsis,
// style: const TextStyle(
// fontSize: 15,
// fontWeight: FontWeight.bold,
// ),
// ),
//
// const SizedBox(height: 8),
//
// const Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(Icons.star, size: 16, color: Colors.orange),
// Icon(Icons.star, size: 16, color: Colors.orange),
// Icon(Icons.star, size: 16, color: Colors.orange),
// Icon(Icons.star, size: 16, color: Colors.orange),
// Icon(Icons.star_half, size: 16, color: Colors.orange),
// ],
// ),
//
// const SizedBox(height: 6),
//
// const Text(
// "Learn now",
// style: TextStyle(
// fontSize: 12,
// color: Colors.grey,
// ),
// ),
// ],
// ),
// ),
// ),
// ),
// );
// },
// ),
// ),
// ],
// ),


