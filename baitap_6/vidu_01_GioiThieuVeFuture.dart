import 'dart:async';

/*
Future là gì ?
Hãy tưởng tượng bạn gọi món ăn tại một nhà hàng:
+ Bạn đặt món (gọi một hàm)
+ Nhân viên phục vụ noi "vang, toi se mang mon an đen sau" (nhận ve mot Future)
+ Bạn có thể làm việc khác trong lúc chờ đợi (tiếp tục chạy code)
Khi món ăn được phục vụ (Future hoàn thành), bạn có thể thưởng thức nó (sử dụng kết quả)


Future trong Dart cũng hoạt động tương tự.
Đó là một cách để làm việc với các tác vụ
mất thời gian mà không phải chờ đợi (ví dụ: tải dữ liệu từ internet, đọc tệp).

Hiểu rõ về "async/await"
async và await là hai từ khóa đặc biệt trong Dart giup làm việc với Future dễ dàng hơn.

Từ khóa async:
- Khi thêm từ khoa async vào một hàm,
bạn đang noi với Dart: "Hàm này sẽ chứa code bất đồng bộ"

- Một hàm được đánh dấu async sẽ luôn luôn trả
về một Future (ngay cả khi bạn không khai báo nó)

 */

Future<String> layTen() async {
  return "Nguyen Van A";
}

/*Từ khóa await
- await chi co thể được sử dụng ben trong mot hàm async
Khi bạn đặt await trước một Future, Dart sẽ:
- Tạm dừng thực thi hàm tại dòng đó
- Đợi Future hoàn thành
- Trả về giá trị từ Future (không còn đóng goi trong Future nữa)
- Tiếp tục thực thi những dòng code còn lại

await biến đổi Future<T> thành giá trị T, giúp code dễ đọc hơn */

Future<String> taiDuLieu() {
  return Future.delayed(Duration(seconds: 2), () => "Du lieu da duoc tai ve");
}

// gọi hàm cách 1
void hamChinh1() async {
  print("Bắt đầu tải dữ liệu..."); // In ra thông báo bắt đầu 1
  String data = await taiDuLieu(); // Đợi Future hoàn thành và lấy dữ liệu 2

  print("Kết quả: $data"); // In ra dữ liệu khi Future hoàn thành 2

  print(
    "Tiếp tục làm việc khác...",
  ); // In ra thông báo tiếp tục làm việc khác 3
}

void main() {
  hamChinh1();
}
