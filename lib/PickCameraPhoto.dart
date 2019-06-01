import 'package:flutter/material.dart';
import 'package:flutter_app/profilemacthesviews.dart';


const String TEXT_SCANNER = 'TEXT_SCANNER';
const String BARCODE_SCANNER = 'BARCODE_SCANNER';

class PickManually extends StatefulWidget {
  PickManually({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<PickManually> {

  static const String CAMERA_SOURCE = 'CAMERA_SOURCE';
  static const String GALLERY_SOURCE = 'GALLERY_SOURCE';

  String _selectedScanner = TEXT_SCANNER;
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    final columns = List<Widget>();
    columns.add(middleSection);
    _context = context;

//    if (_file == null) {
//      columns.add(buildRowTitle(context, 'Pick Image'));
//      columns.add(buildSelectImageRowWidget(context));
//    } else {
//      columns.add(buildImageRow(context, _file));
//      columns.add(buildDeleteRow(context));
//    }

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Manual"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
        new Expanded(
        child: new Container(
        padding: new EdgeInsets.only(left: 8.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            new TextFormField(

                decoration: InputDecoration(
                    hintText: 'Name', labelText: 'Enter Name'),
                validator: (value) {
                  if (value.isEmpty) return 'Please Enter Name';
                }),
            new TextFormField(

                decoration: InputDecoration(
                    hintText: 'Skills', labelText: 'Enter Skills'),
                validator: (value) {
                  if (value.isEmpty) return 'Please Enter your skills';
                }),
            new TextFormField(

                decoration: InputDecoration(
                    hintText: 'Experience', labelText: 'Enter your Experience'),
                validator: (value) {
                  if (value.isEmpty) return 'Please Enter Experience';
                }),

            RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                splashColor: Colors.blueGrey,
                onPressed: () {
                  navigateToNextPage(_context);
                },
                child: const Text('Submit')
            ),

          ],
        ),
      ),
    ),

          ],
        ),
      ),
    );
  }
}

void navigateToNextPage(BuildContext context) async {

  Navigator.push(
    context,
    new MaterialPageRoute(builder: (context) => MyApprovals()),
  );

}



  final middleSection = new Expanded(
    child: new Container(
      padding: new EdgeInsets.only(left: 8.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new TextFormField(

              decoration: InputDecoration(
                  hintText: 'Name', labelText: 'Enter Name'),
              validator: (value) {
                if (value.isEmpty) return 'Please Enter Name';
              }),
          new TextFormField(

              decoration: InputDecoration(
                  hintText: 'Skills', labelText: 'Enter Skills'),
              validator: (value) {
                if (value.isEmpty) return 'Please Enter your skills';
              }),
          new TextFormField(

              decoration: InputDecoration(
                  hintText: 'Experience', labelText: 'Enter your Experience'),
              validator: (value) {
                if (value.isEmpty) return 'Please Enter Experience';
              }),

          RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.blueGrey,
              onPressed: () {

              },
              child: const Text('Submit')
          ),

        ],
      ),
    ),
  );


