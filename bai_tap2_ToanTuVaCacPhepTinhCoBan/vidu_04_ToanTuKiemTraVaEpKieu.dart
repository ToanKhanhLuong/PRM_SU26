void main() {
  Object obj = 'Xin chao';

  // =========================
  // 1) KIỂM TRA DATATYPE
  // =========================

  // is: kiểm tra obj có thuộc kiểu đó không
  if (obj is String) {
    print('obj là String');

    // MẸO QUAN TRỌNG:
    // Trong block này Dart tự "smart cast" obj thành String,
    // nên dùng được như String mà không cần "as".
    print(obj.toUpperCase());
  }

  // is!: kiểm tra obj KHÔNG thuộc kiểu đó
  if (obj is! int) {
    print('obj không phải int');
  }

  // =========================
  // 2) ÉP KIỂU (CAST)
  // =========================

  // as: ép kiểu (cast) -> chỉ dùng khi bạn CHẮC CHẮN kiểu thật sự là String
  // Nếu obj không phải String => runtime error (TypeError)
  String str = obj as String;
  print(str.toUpperCase());
}