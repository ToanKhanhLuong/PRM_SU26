import 'package:flutter/material.dart';

// Tạo widget MyText kế thừa StatelessWidget
// StatelessWidget dùng cho giao diện không thay đổi dữ liệu
class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    // Hàm build dùng để xây dựng giao diện màn hình
    return Scaffold(
      // Thanh tiêu đề ở phía trên màn hình
      appBar: AppBar(title: Text("App_02 Haha")),
      // Màu nền của toàn bộ màn hình
      backgroundColor: Colors.white70,
      // Nội dung chính của màn hình
      body: Center(
        // Center giúp căn giữa widget con
        child: Column(
          // Column sắp xếp các widget theo chiều dọc
          children: [
            // Tạo khoảng cách 50px phía trên
            const SizedBox(height: 50),
            // Hiển thị đoạn text đơn giản
            const Text("Khanh Toan"),
            // Tạo khoảng cách 20px
            const SizedBox(height: 20),

            // Text có style tùy chỉnh
            const Text(
              "Xin Chào Thế Giới =)) Nha",

              // Căn giữa nội dung text
              textAlign: TextAlign.center,

              // Định dạng chữ
              style: TextStyle(
                // Kích thước chữ
                fontSize: 30,

                // Màu chữ
                color: Colors.blue,

                // Chữ đậm
                fontWeight: FontWeight.bold,

                // Khoảng cách giữa các ký tự
                letterSpacing: 1.5,
              ),
            ),

            // Tạo khoảng cách 20px
            const SizedBox(height: 20),

            // Đoạn văn bản dài
            const Text(
              "Alo AppBar vẫn là một widget, nhưng Flutter không bắt buộc widget nào cũng phải dùng thuộc tính child. Mỗi widget có các thuộc tính riêng do người tạo widget định nghĩa.",

              // Căn giữa đoạn văn
              textAlign: TextAlign.center,

              // Chỉ hiển thị tối đa 2 dòng
              maxLines: 2,

              // Nếu muốn hiện dấu ... khi quá dài
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
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

          // Mục Tìm kiếm
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm Kiếm"),

          // Mục Trang chủ
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
        ],
      ),
    );
  }
}
