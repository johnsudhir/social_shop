import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  static const String category = "Category";

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
   List<Widget> gridCategory = getGridViewCategory();

  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 160,
                    color: Colors.purple[700],
                    width: double.infinity,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.0),
                    height: 160,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Browse Through Million of Products\nin Many Category", textAlign : TextAlign.center,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold
                          )
                      ),
                    ),
                  ),
                ],
              ),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 12),
                transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                child: Column(
                  children: gridCategory,
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
}



List<Widget> getGridViewCategory(){

  // this lc (list of category) will can be fetched from firebase later on.

  List<ShopCategory> lc = [ShopCategory(title: "Clothing" , icon: Icons.home),
    ShopCategory(title: "CLothing and tailoring and suiting" , icon: Icons.category_rounded
    ),
    ShopCategory(title: "CLothing" , icon: Icons.notifications),
    ShopCategory(title: "CLothing" , icon: Icons.filter),
    ShopCategory(title: "CLothing" , icon: Icons.star_rate_outlined),
    ShopCategory(title: "CLothing" , icon: Icons.person_add),
    ShopCategory(title: "CLothing" , icon: Icons.person_add),
    ShopCategory(title: "CLothing" , icon: Icons.person_add),
    ShopCategory(title: "CLothing" , icon: Icons.person_add),
    ShopCategory(title: "CLothing" , icon: Icons.person_add),

  ];
  List<Widget> wc = [];
  for(int i = 0; i < lc.length / 2; i++){
    Widget w;
    w = Row(
      children: <Widget>[


        getItemViewGrid(lc[i*2]),

        Container(width: 2),

        getItemViewGrid(lc[(i*2)+1]),



      ],
    );

    wc.add(w);
  }
  return wc;
}

Widget getItemViewGrid(ShopCategory s){
  return Expanded(
    flex: 1,
    child: Container(

      padding: EdgeInsets.all(2),

      child: InkWell(
        onTap: (){
          print("Card clicked");
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Container()()),
          // );
        },
        splashColor: Colors.purple,

        child: Card(


          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5),),
          color: Colors.grey[200],
          elevation: 3,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(

            height: 120,
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(s.icon!, size: 35, color: Colors.purple),
                ),
                Text(s.title!, textAlign : TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey[800] , fontSize: 12
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}


class ShopCategory{
  String? title;
  IconData? icon ;

  ShopCategory({this.title , this.icon});

}


