import 'package:flutter/material.dart';
import 'screens/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page' ,

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// this page enum contains the pages that can be routed by navigations bars
// this pages wont be push/pop but instead just body will be change according to
// the value of current_page. for example :
// if home page is click we set value of current_page to 0 which is index of home in pages enum.
// current_page == pages.home.index ? (Show home page)
enum page { // this will be kept in PageRoute provider dart file
  home ,
  search , notification , list , setting ,   category ,

}
class _MyHomePageState extends State<MyHomePage> {
  Color main_color = Colors.purple ; // later on put this in constants.dart
int current_page = 0  ; // this will be kept in provider class later


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 6,
        toolbarHeight: 50,
        title: Text("GAUTHALI" , style: TextStyle(fontSize: 18 , color: main_color ,letterSpacing: 4, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              current_page = 2 ;
            });
          },
              icon:  current_page != page.notification.index? Icon(Icons.notifications_none , color:  Colors.grey[500],size: 28,):
              Icon(Icons.notifications , color:  main_color,size: 28,)

          )
        ],

      ),
      body:current_page == 0?Text("Home page") :
        current_page == 1 ?Text("Search page") :
        current_page == 2 ?Text("Notification page") :
        current_page == 3 ?Text("list page") :
        current_page == 4 ?Text("setting page") :
        current_page == 5 ?Category():
        Container(),


      floatingActionButton: FloatingActionButton(
        splashColor: main_color,
        elevation:5,
        backgroundColor: Colors.white,
        onPressed: (){
          current_page = 1 ;
          setState(() {

          });
        },
        child: Icon(Icons.search , size: 34, color: main_color,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: false , // stops this button to rise along with soft keyboard

      bottomNavigationBar: BottomAppBar(
        color:Colors.white,

        elevation: 30,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 2, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              Container(
                padding: EdgeInsets.all(3),
                height: 50,
                child: InkWell(// home button in bottom nav bar
                  onTap: (){
                    setState(() {
                      current_page = 0; // set value of current_page to the index of home in pages enum
                    });
                  },
                  child: Column(
                    children: [
                      current_page == page.home.index ?  Icon(Icons.home , color:  main_color) :  Icon(Icons.home_outlined , color:  Colors.grey[500])  ,
                      Text("Home" , style: TextStyle(fontSize: 10 , color: Colors.grey[600] ),)
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(3),

                height: 50,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      current_page =5;
                    });
                  },
                  child: Column(
                    children: [
                     current_page == page.category.index ?  Icon(Icons.category_rounded, color: main_color) :  Icon(Icons.category_outlined  ,  color:  Colors.grey[500] )
                     , Text("Category" , style: TextStyle(fontSize: 10 , color: Colors.grey[600] ),)

                    ],
                  ),
                ),
              ),
// transparent icon  start
              Container( // this is a hidden icon in bottom nav bar below floating action button
                // which help to distribute the icons easily with MainAxisAlignment.spaceAround
                padding: EdgeInsets.all(3),

                height: 50,
                child: InkWell(
                  child: Column(
                    children: [
                      current_page == page.category.index ?  Icon(Icons.category_rounded) :  Icon(Icons.category_outlined  , color: Colors.transparent,

                      )],
                  ),
                ),
              ),

// transparent icon close


              Container(
                padding: EdgeInsets.all(3),

                height: 50,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      current_page = 3;
                    });
                  },
                  child: Column(
                    children: [
                      current_page == page.list.index ?  Icon(Icons.mail , color: main_color) :  Icon(Icons.mail_outline , color : Colors.grey[500])   ,
                      Text("Chats" , style: TextStyle(fontSize: 10, color: Colors.grey[600]  ),)
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(3),

                height: 50,
                child: InkWell(
                  onTap: (){
                    setState(() {
                      current_page = 4;
                    });
                  },
                  child: Column(
                    children: [
                      current_page == page.setting.index ?  Icon(Icons.settings , color: main_color) :  Icon(Icons.settings_outlined ,color: Colors.grey[500])  ,
                      Text("Settings" , style: TextStyle(fontSize: 10, color: Colors.grey[600]  ),)
                    ],
                  ),
                ),
              ),






            ] ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
