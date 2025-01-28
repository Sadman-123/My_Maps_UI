import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    List<Widget> lst=[
      Container(child: Center(child: Image.asset('assets/asia.png',width: mdw*0.8,),),),
      Container(child: Center(child: Image.asset('assets/europe.png',width: mdw*0.8,),),),
      Container(child: Center(child: Image.asset('assets/america.png',width: mdw*0.8,),),),
      Container(child: Center(child: Image.asset('assets/africa.png',width: mdw*0.8,),),),
    ];
    return DefaultTabController(length: 4, child: Scaffold(
      backgroundColor: Color(0xFFfefeff),
      appBar: AppBar(
        backgroundColor: Color(0xFFfefeff),
        toolbarHeight: mdh*0.07,
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.left_chevron,color: CupertinoColors.link,)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.map,color: CupertinoColors.link,)),
          ),
        ],
        title: Text("My Maps",style: TextStyle(fontSize: mdw*0.064,fontWeight: FontWeight.w500,),),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(mdh*0.071),
          child: TabBar(
            dividerColor: Color(0xFFfefeff),
            indicatorColor: Color(0xFFfefeff),
            splashBorderRadius: BorderRadius.circular(10),
            tabs: [
              Diy_Tabbody(mdw, mdh, "Asia"),
              Diy_Tabbody(mdw, mdh, "Europe"),
              Diy_Tabbody(mdw, mdh, "America"),
              Diy_Tabbody(mdw, mdh, "Africa"),
            ],
          ),
        ),
      ),
      body: TabBarView(children: lst),
      floatingActionButton: FloatingActionButton(backgroundColor: Color(0xFFf1f2f8),onPressed: (){},child: Icon(CupertinoIcons.map_pin_ellipse,color: Color(0xFF5685cd),),),
    ));
  }
  Widget Diy_Tabbody(double mdw,double mdh,String title)
  {
    return  Container(
        height: mdh*0.039,
        width: mdw*0.2,
        decoration: BoxDecoration(
            color: Color(0xFFc2e7fe),
            borderRadius: BorderRadius.circular(10)
        ),child: Center(child: Text("$title",style: TextStyle(color: Color(0xFF08486f),fontSize: mdw*0.036),)));
  }
}