import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
  home: Dashboard() ,
));

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  Material myItems(IconData Icon1,String image,String heading,int Price){
    return Material(
      color: Colors.white,
      elevation: 10,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(20),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0)),
            child: Image(
           image: AssetImage(image),
          )
          ),
             SizedBox(height: 10),
             Text(heading,style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 16,
                 color:Colors.lightBlue
             ),),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:  <Widget>[
                Icon(Icon1,size: 18,),
                SizedBox(width: 5),
                Text(Price.toString(),style: TextStyle(
                  fontWeight: FontWeight.w500
                ),)

            ],
          ),
             )
        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Staggered GridView Example'),
      ),
     body: Padding(
       padding: const EdgeInsets.all(10.0),
       child: StaggeredGridView.count(
           crossAxisCount: 2,
           crossAxisSpacing: 12,
            mainAxisSpacing: 12,
         children: <Widget>[
           myItems(FontAwesomeIcons.rupeeSign, 'image/men.JPG',"Men Tshirts",300),
           myItems(FontAwesomeIcons.rupeeSign, 'image/shirt.jpg',"Denim Shirt",500),
           myItems(FontAwesomeIcons.rupeeSign, 'image/card.jpg',"Greeting Card",350),
           myItems(FontAwesomeIcons.rupeeSign, 'image/mug.JPG',"Printed Mug",250),
           myItems(FontAwesomeIcons.rupeeSign, 'image/papa.JPG',"Tshirt For Papa",500),
           myItems(FontAwesomeIcons.rupeeSign, 'image/poster.jpg',"Flash Poster",350),
           myItems(FontAwesomeIcons.rupeeSign, 'image/logo.png',"Logo Desgin",500),
           myItems(FontAwesomeIcons.rupeeSign, 'image/couple_tshirt.jpg',"Couple Tshirt",600),
           myItems(FontAwesomeIcons.rupeeSign, 'image/heart pillow.PNG',"Heart Pillow",350),


         ],
         staggeredTiles: [
           StaggeredTile.extent(1, 255),
           StaggeredTile.extent(1, 430),
           StaggeredTile.extent(1, 320),
           StaggeredTile.extent(1, 260),
           StaggeredTile.extent(1, 210),
           StaggeredTile.extent(1, 310),
           StaggeredTile.extent(1, 260),
           StaggeredTile.extent(1, 260),
           StaggeredTile.extent(1, 250),



         ],
       ),
     ),
    );
  }
}



