import 'package:flutter/material.dart';
import 'package:flutter_app_1/views/third_page1_ui.dart';
import 'package:flutter_app_1/views/third_page2_ui.dart';
import 'package:flutter_app_1/views/third_page3_ui.dart';
import 'package:flutter_app_1/views/third_page4_ui.dart';

class ThirdUI extends StatefulWidget {
  const ThirdUI({Key? key}) : super(key: key);

  @override
  _ThirdUIState createState() => _ThirdUIState();
}

class _ThirdUIState extends State<ThirdUI> {
  List page = [
    ThirdPage1UI(),
    ThirdPage2UI(),
    ThirdPage3UI(),
    ThirdPage4UI(),
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Third UI ^_^',
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.red,
        currentIndex: selectIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_align_justify,
            ),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.h_mobiledata,
            ),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.yard,
            ),
            label: 'Page 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.kayaking,
            ),
            label: 'Page 4',
          ),
        ],
      ),
      body: page.elementAt(selectIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.yellow[800],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/myprofile.jpg'),
              ),
              accountName: Text(
                'Sahapot Noiwong',
              ),
              accountEmail: Text(
                '6252410009',
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bgdraw.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/saulogo.png',
                ),
              ],
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'หน้าแรก',
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ตารางสอน',
              ),
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text('ตารางสอบ'),
              leading: Icon(
                Icons.access_alarms,
                color: Colors.yellow,
              ),
              trailing: Text(
                '999',
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'Logout',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
