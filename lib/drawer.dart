import 'package:exim2/add_student.dart';
import 'package:flutter/material.dart';
import 'add_student.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text("@Ali alhmodi"),
          accountEmail: Text("alialhmodigmail.com"),
          currentAccountPicture: CircleAvatar(),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 51, 99, 230),
          ),
        ),
        Column(
          children: [
            ListTile(
              title: Text("اضافه طالب"),
              tileColor: Color.fromARGB(255, 221, 206, 162),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => student()));
              },
            ),
            ListTile(
              title: Text(" خروج"),
              tileColor: Color.fromARGB(255, 230, 213, 162),
              onTap: () {
                Navigator.of(context).pop();
              },
            )
          ],
        )
      ],
    ));
  }
}
