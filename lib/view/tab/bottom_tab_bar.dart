import 'package:flutter/material.dart';
class BottomTabBar extends StatefulWidget {
  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TabBar(controller: _tabController,tabs: [
      Tab(icon:Icon(Icons.search,color: Colors.black54,size: 25,)),
      Tab(icon:Icon(Icons.favorite_border,color: Colors.black54,size: 25,)),
      Tab(icon:Icon(Icons.short_text,color: Colors.black54,size: 25,)),
    ]);
  }
}
