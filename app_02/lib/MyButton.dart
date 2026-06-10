import 'package:flutter/material.dart';

// Tạo widget MyText kế thừa StatelessWidget
// StatelessWidget dùng cho giao diện không thay đổi dữ liệu
class MyButton extends StatelessWidget {
  const MyButton({super.key});

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
        child: Column(
          children: [
              SizedBox(height: 10,),
            // ElevatedButton là một button nổi với hiệu ứng đổ bóng,
            // thường được sử dụng cho các hành động chính trong ứng dụng.
            ElevatedButton(
                onPressed: () {print("Elevated");},
                child: Text("Elevated", style: TextStyle(fontSize: 24),)),



            // TextButton là một button phẳng,
            // , không có đổ bóng,
            // thường dùng cho các hành động thứ yếu
            // hoặc trong các thành phần như Dialog, Card.
            TextButton(
                onPressed: (){print("TextButton");},
                child: Text("TextButton", style: TextStyle(fontSize: 24),)),
            SizedBox(height: 20),


            // OutlinedButton là button có viền bao quanh,
            // không có màu nền,
            // phù hợp cho các thay thế.
            OutlinedButton(
                onPressed: (){print("OutlinedButton");},
                child: Text("OutlinedButton", style: TextStyle(fontSize: 24),)),

            SizedBox(height: 20),


            // IconButton là button chỉ gồm icon,
            // không có văn bản,
            // thường dùng trong AppBar, ToolBar.
            IconButton(
                onPressed: (){print("IconButton");},
                icon: Icon(Icons.favorite)),

            SizedBox(height: 20),
            // FloatingActionButton là button hình tròn,
            // nổi trên giao diện,
            // thường dùng cho hành động chính của màn hình.
            FloatingActionButton(
              onPressed: (){print("FloatingActionButton");},
              child: Icon(Icons.add),
            )

          ],
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
