import "package:flutter/material.dart";


class MyTextField2 extends StatefulWidget{

  const MyTextField2({super.key});
  @override
  State<StatefulWidget> createState() => _MyTextFieldState();

  }

  class _MyTextFieldState extends State<MyTextField2>{

  final _textController = TextEditingController();
  String _inputText = "";
  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
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

    body : Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 30),
                TextField(
                  controller: _textController,
                    decoration: InputDecoration(
                      labelText: "Nhập thông tin",
                      hintText: "Nhập Thông tin",
                      border: OutlineInputBorder(
                          borderRadius : BorderRadius.circular(100)
                      ),
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: IconButton(
                        onPressed: (){
                          _textController.clear(); // Hàm này giúp xóa sạch text
                        },
                        icon: Icon(Icons.clear),
                      )

                    ),
                  onChanged: (value){
                    setState(() {
                      _inputText = value;
                    });
                  },
                ),
                SizedBox(height: 50,),
                  Text("Bạn đã nhập : $_inputText",
                    style: TextStyle(
                    fontSize: 24
                  ),
                  )

              ],
            ),
          ),
    )
    )

   );
  }

  }
