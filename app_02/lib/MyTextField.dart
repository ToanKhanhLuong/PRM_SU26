import "package:flutter/material.dart";

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    // Tra ve Scaffold - widget cung cap bo cuc Material Design co ban
    // Man hinh
    return Scaffold(
      // Tiêu đề của ứng dụng
      appBar: AppBar(
        // Tieu de
        title: Text("App 02"),
        // Mau nen
        backgroundColor: Colors.yellow,
        // Do nang/ do bong cua AppBar
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {
              print("b1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("b2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("b3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50),
              // Trong Flutter, TextField là widget phổ biến nhất để nhận dữ liệu văn bản từ người dùng (giống như các ô nhập liệu trong form đăng ký, tìm kiếm...).
                /*
TextField là widget cho phép người dùng nhập văn bản
thông qua bàn phím.
Đây là thành phần thiết yếu trong hầu hết các ứng dụng,
từ biểu mẫu đăng nhập,
tìm kiếm, đến nhập Liệu trong các ứng dụng phức tạp.
*/
              TextField(
                decoration: InputDecoration(
                  labelText: "Ho Va Ten",
                  hintText: "Nhap Vao Ho Va Ten cua Ban",
                  border: OutlineInputBorder(),
                ),
              ),
                SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Example@gmail.com",
                  helperText: "Nhap vao email ca nhan",
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.clear),
                  border: OutlineInputBorder(
                    borderRadius : BorderRadius.circular(100)
                  ),
                  filled: true,
                  fillColor: Colors.blue
                ),
                keyboardType: TextInputType.emailAddress
                ,
              ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: "So dien thoai",
                    hintText: "Nhap vao so dien thoai cua b",
                    border: OutlineInputBorder(),

                  ),
                  keyboardType: TextInputType.phone, // keyboardType để xác định kiểu dữ liệu nhập vào
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Ngay Sinh",
                    hintText: "Nhap vao so ngay sinh cua b",
                    border: OutlineInputBorder(),

                  ),
                  keyboardType: TextInputType.datetime, // keyboardType để xác định kiểu dữ liệu nhập vào
                ),

                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Mat Khau",
                    border: OutlineInputBorder(),

                  ),
                  keyboardType: TextInputType.datetime,
                  obscureText: true,// obscureText để ẩn mật khẩu
                  obscuringCharacter: "^",
                ),

              ],
            ),
          ),
        ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("pressed");
        },
        child: const Icon(Icons.add_ic_call),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
        ],
      ),
    );
  }
}