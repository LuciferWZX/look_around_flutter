import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("---首页---");
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("首页内容"),
            ElevatedButton(onPressed: (){}, child: Text("登录"))
          ],
        ),
      ),
    );
  }
}
