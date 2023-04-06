import 'package:flutter/material.dart';
import 'package:looknlook/home.dart';
import 'package:looknlook/login.dart';

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Sign',
              ),
              Tab(
               text: 'Register',
              ),
             
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Center(
              child: login()
            ),
            Center(
              child: Login(),
            ),
           
          ],
        ),
      ),
    );
  }
}
  
