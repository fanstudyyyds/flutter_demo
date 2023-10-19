import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _ok() {
    // MaxNotify(title: "提示", message:"提示文本");
    Get.snackbar("title", "message");
    // Get.defaultDialog(title: "title", middleText: "this is dialog message");

    // Get.bottomSheet(Container(
    //   height: 200,
    //   color: Colors.white,
    //   child: const Center(
    //     child: Text("bottomSheet"),
    //   ),
    // ));

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        ElevatedButton(
            onPressed: _ok,
            child: Text("圆角按钮"),
            style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))))),
        ElevatedButton(
          onPressed: () {},
          child: Text('圆形按钮'),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                  CircleBorder(side: BorderSide(color: Colors.white)))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('自适应'),
              ),
            )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              child: OutlinedButton(
                onPressed: () {},
                child: Text('OutlinedButton'),
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(width: 1, color: Colors.red))),
              ),
            )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonBar(
              children: [
                Container(
                  height: 60,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('宽度高度'),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green), //背景色
                        foregroundColor:
                            MaterialStateProperty.all(Colors.red) //字体色
                        ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('阴影按钮'),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(50) //阴影
                      ),
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text('图标按钮')),
              ],
            )
          ],
        )
      ]),
    );
  }
}

class MyController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(); // 通知 Flutter 层次结构更新 UI
  }
}
