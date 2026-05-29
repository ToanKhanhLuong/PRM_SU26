void main () {
  var a = 2;
  print(a);


  int? b; // b = null
  b ??=5;
  print(b); // 5

  b??= 10;
  print(b); // 5

  // giải thích: ?? sẽ gán giá trị khi biến đang là null.
  // vì b đang null nên b ??= 5 thì b sẽ =5 ở dưới ta đang gán b ??=10 nhưng vì trên b đang  = 5 nên in ra  5 5
}