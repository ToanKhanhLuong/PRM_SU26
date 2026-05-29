void main () {
  // ĐỊNH NGHĨA:
  // - Runes là tập hợp các điểm mã Unicode của một chuỗi
  // - Dùng để xử lý các ký tự Unicode đặc biệt như emoji, ký tự đặc biệt
  // - Mỗi ký tự Unicode được biểu diễn bằng một số nguyên

  // CÁCH KHAI BÁO:
  String str = "Hello";

  Runes runes1 = str.runes; // Lấy Runes từ chuỗi


  Runes runes2 = Runes('\u2665'); // Khai báo Runes trực tiếp với mã Unicode của ký tự đặc biệt (trái tim).
  print(runes2); // In ra Runes (sẽ hiển thị mã Unicode của ký tự đặc biệt).

  Runes runes3 = Runes('\u{1F600}'); // Khai báo Runes trực tiếp với mã Unicode của emoji (khuôn mặt cười).

  print(runes3); // In ra Runes (sẽ hiển thị mã Unicode của emoji).



  // 1. Chuyển đổi:
  // Từ Runes sang String
  String heartSymbol = String.fromCharCodes(runes2);
  print(heartSymbol);

  // Từ mã Unicode sang String
  String emoji = String.fromCharCode(0x1F600); // 😀
  print(emoji);
  String symbol = String.fromCharCode(0x2665); // ♥
  print(symbol);
  
  // 2. Xử lý:
  print(runes1.length);           // Số lượng điểm mã
  print(runes1.first);            // Điểm mã đầu tiên
  print(runes1.last);             // Điểm mã cuối cùng
  
  // Duyệt qua từng điểm mã
  runes1 = 'Xin chào 😀, tôi rất ♥ bạn!'.runes;
  runes1.forEach((int rune) {
    print('Unicode: $rune, Ký tự: ${String.fromCharCode(rune)}');
  });
  
  // Kiểm tra
  print(runes1.isEmpty);          // Kiểm tra rỗng
  print(runes1.isNotEmpty);       // Kiểm tra không rỗng

  // Xử lý emoji trong ứng dụng chat
  // Hiển thị ký tự đặc biệt (copyright, trademark)
  // Tạo các biểu tượng đánh giá (sao, tim)
  // Xử lý văn bản đa ngôn ngữ có ký tự đặc biệt
}