import 'package:flutter/material.dart';

// Tạo widget MyText kế thừa StatelessWidget
// StatelessWidget dùng cho giao diện không thay đổi dữ liệu
class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // Hàm build dùng để xây dựng giao diện màn hình
    return Scaffold(
      appBar: AppBar(
        title: Text("App_02 Haha"),
        backgroundColor: Colors.blueGrey, // màu nền
        elevation: 4,

        actions: [
          IconButton(
            onPressed: () {
              print("B1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("B2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("B3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(


        child: Container(

          width: 200,
          height: 200,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),

          child: Align(
            alignment: Alignment.center,
            child: const Text(
              "Luong Toan",
              style: TextStyle(color: Colors.white70, fontSize: 30),
            ),
          ),



        ),
      ),

      // Nút nổi ở góc dưới bên phải
      floatingActionButton: FloatingActionButton(
        // Hàm được gọi khi nhấn nút
        onPressed: () {
          print("object");
        },

        // Icon hiển thị bên trong nút
        child: const Icon(Icons.add_ic_call),
      ),





      // Thanh điều hướng ở cuối màn hình
      bottomNavigationBar: BottomNavigationBar(
        // Danh sách các mục trên thanh điều hướng
        items: [
          // Mục Cá nhân
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),

          // Mục Trang chủ
          BottomNavigationBarItem(icon: Icon(
              Icons.home,
            size: 40,
            color: Colors.deepPurple,
          ),
            label: "Trang chủ",),

          // Mục Tìm kiếm
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm Kiếm"),
        ],
      ),
    );
  }
}
