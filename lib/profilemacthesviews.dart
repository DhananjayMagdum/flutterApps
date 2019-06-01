import 'package:flutter/material.dart';

class MyApprovals extends StatelessWidget {
  static const String routeName = "/account";
  static Icon trailingIconTwo = new Icon(Icons.people, color: Colors.blueAccent);
  static Icon trailingIconOne = new Icon(Icons.person, color: Colors.blueAccent);

Widget maches = new Container(
  margin: EdgeInsets.symmetric(vertical: 20.0),
  height: 40.0,

  child: new Text("Matches profile",style: TextStyle(color: Colors.green),),
  padding:EdgeInsets.symmetric(horizontal: 8.0,),
);



  Widget horizontalList1 = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 220.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          Container(

            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.grey[500])
            ),
            child: new Column(
              children: <Widget>[

                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(child:new IconButton(icon: trailingIconOne, onPressed: () {},iconSize: 130,)
                    ),
                  ],
                ),
                new Container (child: new Text("Swarswati B"), color: Colors.yellow[200],),
                new Container(height: 5.0,),
                new Text("Ios Android"),
                new Container(height: 5.0,),
                new Text("9 Years"),

              ],
            ),

          ),
          Container(
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.grey[500])
            ),
            child: new Column(
              children: <Widget>[

                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(child:new Image.network('http://i.stack.imgur.com/Dj7eP.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,

                    )
                    ),
                  ],
                ),
                new Container (child: new Text("Radha B"), color: Colors.yellow[200],),
                new Container(height: 5.0,),
                new Text("Flutter"),
                new Container(height: 5.0,),
                new Text("2 years"),

              ],
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.grey[500])
            ),
            child: new Column(
              children: <Widget>[

                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(child:new Image.network(
                      'http://i.stack.imgur.com/Dj7eP.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,

                    )
                    ),
                  ],
                ),
                new Container (child: new Text("Sayali B"), color: Colors.yellow[200],),
                new Container(height: 5.0,),
                new Text("Android"),
                new Container(height: 5.0,),
                new Text("10 years"),

              ],
            ),
          ),
          Container(
            decoration: new BoxDecoration(
                border: new Border.all(color: Colors.grey[500])
            ),
            child: new Column(
              children: <Widget>[

                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Container(child:new Image.network('http://i.stack.imgur.com/Dj7eP.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    )
                    ),
                  ],
                ),
                new Container (child: new Text("Dhananjay"), color: Colors.yellow[200],),
                new Container(height: 5.0,),
                new Text("Xamarin"),
                new Container(height: 5.0,),
                new Text("5 years"),

              ],
            ),
          ),
        ],
      ));
  Widget horizontalList2 = new Container(
    color: Color.fromRGBO(0, 0, 0, 0.7),
    margin: EdgeInsets.symmetric(vertical: 20.0),
    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: Row(
      children: [

        new CircleAvatar(
          backgroundImage:
          new NetworkImage("http://i.stack.imgur.com/Dj7eP.jpg"),
          backgroundColor: Colors.lightGreen,
          radius: 80.0,

        ),
        Expanded(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Container (child: new Text("Bhushan Shinde",style: TextStyle(color: Colors.white),),padding:EdgeInsets.symmetric(horizontal: 8.0,),),
              new Container (child: new Text("Android",style: TextStyle(color: Colors.white),) ,padding:EdgeInsets.symmetric(horizontal: 8.0,),),
              new Container (child: new Text("2 years ",style: TextStyle(color: Colors.white),),padding:EdgeInsets.symmetric(horizontal: 8.0,),),
              new FlatButton.icon(
                  icon: Icon(Icons.star),
                  label: Text("View Premium"),
                  textColor: Colors.yellow, onPressed: () {})


            ],
          ),
        ),

      ],
    ),
  );



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: new Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            horizontalList2,
            maches,
            horizontalList1,
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }




}
