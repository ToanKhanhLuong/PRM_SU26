/*
Stream là gì?

Nếu Future giống như đợi một món ăn, thì Stream giống như xem một kênh YouTube:

Bạn đăng ký kênh (lång nghe stream)
Video mới liên tục được đăng tải (stream phát ra dữ liệu)
Bạn xem từng video khi nó xuất hiện (xử lý dữ liệu từ stream)
Kênh có thể đăng tải nhiều video theo thời gian (stream phát nhieu gia tri)

Stream trong Dart là chuỗi các sự kiện hoặc dữ liệu theo thời gian,
không chỉ một lần như Future. */


import 'dart:async';
void viDuStremDemSo (){


print("Ví dụ trò chơi đếm số");

  // tạo ra stream đếm số (phát ra con số từ 0, 5, 10, 15,... 100 cứ sau mỗi giây)
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (x)=>x+=1).take(20);

  // lắng nghe
  stream.listen(
 (x) => print("Nghe được số : ${x*5} - đang chạy trốn"),
  onDone: () => print("Người bị : Bắt đầu đi tìm"),
  onError: (err) => print("Có lỗi xảy ra: $err"),
  );
}



void viDuStreamController() {
  print("=== Ví dụ 3: Stream Controller ===");

  // Tạo bộ điều khiển stream
  StreamController<String> controller = StreamController<String>();

  // Lắng nghe stream
  controller.stream.listen(
    (tinNhan) => print("Tin nhắn mới: $tinNhan"),
    onDone: () => print("Không còn tin nhắn nào nữa"),
    onError: (err) => print("Có lỗi xảy ra: $err"),
  );

  // Gửi tin nhắn vào stream
  print("Đang gửi tin nhắn đầu tiên...");
  controller.add("Xin chào!");

  // Gửi thêm tin nhắn sau 2 giây
  Future.delayed(Duration(seconds: 2), () {
    print("Đang gửi tin nhắn thứ hai...");
    controller.add("Bạn khỏe không?");
  });

  // Gửi tin nhắn cuối và đóng stream sau 4 giây
  Future.delayed(Duration(seconds: 4), () {
    print("Đang gửi tin nhắn cuối...");
    controller.add("Tạm biệt nhé!");

    controller.close();   
  });
}

void main(){
  // viDuStremDemSo();
    viDuStreamController();
}