import 'package:flutter/material.dart';
import 'package:flutter_app_1/views/forth_tabpage1_ui.dart';
import 'package:flutter_app_1/views/forth_tabpage2_ui.dart';
import 'package:flutter_app_1/views/forth_tabpage3_ui.dart';
import 'package:flutter_app_1/views/forth_tabpage4_ui.dart';
import 'package:flutter_app_1/views/forth_tabpage5_ui.dart';
import 'package:flutter_app_1/views/forth_tabpage6_ui.dart';

class ForthUI extends StatefulWidget {
  const ForthUI({Key? key}) : super(key: key);

  @override
  _ForthUIState createState() => _ForthUIState();
}

class _ForthUIState extends State<ForthUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Forth UI ไอที',
          style: TextStyle(
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.yellow[300],
                indicatorColor: Colors.yellow[300],
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                  fontFamily: 'Kanit',
                ),
                tabs: [
                  Tab(
                    text: 'Tab page1',
                    icon: Icon(
                      Icons.airplane_ticket_sharp,
                    ),
                  ),
                  Tab(
                    text: 'Tab page2',
                    icon: Icon(Icons.baby_changing_station_sharp),
                  ),
                  Tab(
                    text: 'Tab page3',
                    icon: Icon(Icons.bike_scooter_sharp),
                  ),
                  Tab(
                    text: 'Tab page4',
                    icon: Icon(
                      Icons.roofing_sharp,
                    ),
                  ),
                  Tab(
                    text: 'Tab page5',
                    icon: Icon(
                      Icons.table_chart_sharp,
                    ),
                  ),
                  Tab(
                    text: 'Tab page6',
                    icon: Icon(
                      Icons.face_retouching_off_sharp,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ForthTabpage1UI(),
                  ForthTabpage2UI(),
                  ForthTabpage3UI(),
                  ForthTabpage4UI(),
                  ForthTabpage5UI(),
                  ForthTabpage6UI(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.yellow[900],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/myprofile.jpg',
                ),
              ),
              accountName: Text(
                'Sahapot Noiwong',
              ),
              accountEmail: Text(
                'ID: 6252410009',
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bgdrawer.png'),
                  fit: BoxFit.fill,
                ),
              ),
              otherAccountsPictures: [
                Image.asset(
                  'assets/images/saulogo.png',
                ),
                Image.asset(
                  'assets/images/myprofile.jpg',
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
                Icons.table_chart,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ตารางสอบ',
              ),
              leading: Icon(
                Icons.access_alarms,
              ),
              trailing: Text(
                '888',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ออกจากการใช้งาน',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
