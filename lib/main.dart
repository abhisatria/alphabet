import 'package:alphabet/data/data.dart';
import 'package:alphabet/model/tile_model.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
List<TileModel> selectedPairs = new List<TileModel>();
List<TileModel> visiblePairs = new List<TileModel>();

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    selectedPairs = getSelectedPairs();

    visiblePairs = getPairs();

//    Future.delayed(const Duration(seconds: 5),(){
//
//      setState(() {
//        ;visiblePairs = getQuestions();
//      });
//    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
//        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal :20),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10,),
            Center(
              child: Text("Mengenal Huruf", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),),
            ),
            Center(child: Text("Testtt2")),
            SizedBox(height: 20,),
            GridView(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisSpacing: 0.0,
                maxCrossAxisExtent: 110,
              ) ,
              children: List.generate(visiblePairs.length, (index){
                return Tile(
                  imageAssetPath: visiblePairs[index].getImageAssetPath(),
                  selected: visiblePairs[index].getIsSelected(),
                  audioAssetPath: visiblePairs[index].getAudioAssetPath(),
                  parent: this,
                  tileIndex: index,
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {

  String imageAssetPath,audioAssetPath;
  bool selected;
  int tileIndex;
  _HomePageState parent;
  Tile({this.imageAssetPath,this.selected,this.parent,this.tileIndex,this.audioAssetPath});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      if(!selected)
        {
          setState(() {
            visiblePairs[widget.tileIndex].setIsSelected(true);
            selected=true;
            onPlayAudio(visiblePairs[widget.tileIndex].getAudioAssetPath());
            Future.delayed(const Duration(seconds: 2),(){
              selected = false;
              visiblePairs[widget.tileIndex].setIsSelected(false);
              setState(() {
              });
            });
          });
          print("You clicked me");
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: Image.asset(visiblePairs[widget.tileIndex].getIsSelected() ?selectedPairs[widget.tileIndex].getImageAssetPath() : widget.imageAssetPath)
      ),
    );
  }
}

void onPlayAudio(String path) async{
  AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();
  assetsAudioPlayer.open(
    Audio(path),
  );
}


