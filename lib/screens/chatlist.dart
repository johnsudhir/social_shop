import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class ChatListPage extends StatefulWidget {
  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {

  @override
  Widget build(BuildContext context) {
    return     SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 100,
                    color: Colors.purple[700],
                    width: double.infinity,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.0),
                    height: 100,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Chat with seller", textAlign : TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold ,
                            fontSize: 16,
                          )
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                transform: Matrix4.translationValues(0.0, -0.0, 0.0),
                child: Column(
                  children: getGridViewChatList(),
                ),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          ),
        ),
      );


  }

  List<Widget> getGridViewChatList(){
    // this lc (list of chat heads) will can be fetched from firebase later on.
    List<ChatList> lc = [
      ChatList(product_name: "Bike Gloves" , time: "12:54 pm" , last_message: "Okay"),
      ChatList(product_name: "Eazy Shoes" , time: "01:25 pm" , last_message: "1200 garnu na..."),
      ChatList(product_name: "Cotton T-shirt" , time: "27 May" , last_message: "aaudaina tetti ma..."),
      ChatList(product_name: "Iphone 11 Pro MAX" , time: "6 Jun" , last_message: "product ramro raixa..."),
      ChatList(product_name: "Lather bag" , time: "21 Jun" , last_message: "exchange garna milx..."),
      ChatList(product_name: "Jira Masino Chamal" , time: "8 Jul" , last_message: "Okay"),


    ];
    List<Widget> wc = [];
    for(int i = 0; i < lc.length ; i++){
      Widget w;
      w = Row(
        children: <Widget>[
          getItemViewGrid(  lc[i]),
        ],
      );
      wc.add(w);
    }
    return wc;
  }

  Widget getItemViewGrid( ChatList s ){
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(2),
        child: InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatListPage()),
            );
            print("Card clicked");
          },
          splashColor: Colors.purple,
          child: Card(
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5),),
            color: Colors.white,
            elevation: 3,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              height: 60,
              alignment: Alignment.center,
              // padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(3),
                    child:Icon(Icons.image , size: 55, color: Colors.purple,)
                  ),
Expanded(
  child:   Container(
    // color: Colors.red,
    padding: EdgeInsets.all(10),
    child:
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(s.product_name.toString() , style: TextStyle(fontSize: 16 , letterSpacing: 0, fontWeight: FontWeight.w600 , color: Colors.grey[700]),) ,
            Text(s.time.toString(), style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500 , color: Colors.grey[600]),) ,


          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(s.last_message! , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w600 , color: Colors.grey[600]),) ,


          ],
        ),
      ],
    ),
  ),
),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
class ChatList{
  String? product_name;
  // String? image ;
  String? time ;
  String? last_message ;
  ChatList({this.product_name  , this.time  , this.last_message});
}


