import 'package:flutter/material.dart';
// 定義しているのが上のファイルなんだ

// stlと押しただけで出てきた！
class NextPage extends StatelessWidget {
  final String title; //変数受け取り
  const NextPage(this.title, {super.key}); //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Padding( // Paddingのところを電球マークでいじることで、Columから変更できる
        padding: EdgeInsets.all(20.20), //余白の設定
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //startなら左揃え、endなら右揃え
          children: [
            Row(
              children: [
                SizedBox(
                    width: 30,
                    child: Text("ID")
                ),
                Text("：毎回同じIDを表示"),
              ],
            ),

            //余白
            SizedBox(height: 30,),

            Row(
              children: [
                SizedBox(
                    width: 30,
                    child: Text("PW")
                ),
                Text("：毎回同じパスワードを表示示"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
