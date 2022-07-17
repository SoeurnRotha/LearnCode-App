// import 'package:flutter/material.dart';
// import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
// import 'package:learncode/BottomPage/About%20us.dart';
// import 'package:learncode/BottomPage/MyHome.dart';
//
//
// class DrawerNewVersion extends StatefulWidget {
//   const DrawerNewVersion({Key? key}) : super(key: key);
//
//   @override
//   State<DrawerNewVersion> createState() => _DrawerNewVersionState();
// }
//
// class _DrawerNewVersionState extends State<DrawerNewVersion> {
//   List<ScreenHiddenDrawer> _page = [];
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _page = [
//       ScreenHiddenDrawer(
//           ItemHiddenMenu(name: "Home", baseStyle: TextStyle(fontFamily: "f1",fontSize: 20),selectedStyle: TextStyle()),Myhome()
//       ),
//       ScreenHiddenDrawer(
//         ItemHiddenMenu(name: "About Us",baseStyle: TextStyle(fontFamily: "f1",fontSize: 20),selectedStyle: TextStyle()),PageAboutUs()
//       )
//     ];
//   }
//   @override
//
//   Widget build(BuildContext context) {
//     return HiddenDrawerMenu(
//         screens: _page,
//         backgroundColorMenu: Colors.grey,
//       initPositionSelected: 0,
//     );
//   }
// }
