import 'package:alphabet/model/tile_model.dart';

bool selected = false;
const _music = <String>[
  'assets/A.mp3',
  'assets/B.mp3',
  'assets/C.mp3',
  'assets/D.mp3',
  'assets/E.mp3',
  'assets/F.mp3',
  'assets/G.mp3',
  'assets/H.mp3',
  'assets/I.mp3',
  'assets/J.mp3',
  'assets/K.mp3',
  'assets/L.mp3',
  'assets/M.mp3',
  'assets/N.mp3',
  'assets/O.mp3',
  'assets/P.mp3',
  'assets/Q.mp3',
  'assets/R.mp3',
  'assets/S.mp3',
  'assets/T.mp3',
  'assets/U.mp3',
  'assets/V.mp3',
  'assets/W.mp3',
  'assets/X.mp3',
  'assets/Y.mp3',
  'assets/Z.mp3',
];
const _icons = <String>[
  'assets/A1.png',
  'assets/B1.png',
  'assets/C1.png',
  'assets/D1.png',
  'assets/E1.png',
  'assets/F1.png',
  'assets/G1.png',
  'assets/H1.png',
  'assets/I1.png',
  'assets/J1.png',
  'assets/K1.png',
  'assets/L1.png',
  'assets/M1.png',
  'assets/N1.png',
  'assets/O1.png',
  'assets/P1.png',
  'assets/Q1.png',
  'assets/R1.png',
  'assets/S1.png',
  'assets/T1.png',
  'assets/U1.png',
  'assets/V1.png',
  'assets/W1.png',
  'assets/X1.png',
  'assets/Y1.png',
  'assets/Z1.png',
];

const _icons2 = <String>[
  'assets/A2.png',
  'assets/B2.png',
  'assets/C2.png',
  'assets/D2.png',
  'assets/E2.png',
  'assets/F2.png',
  'assets/G2.png',
  'assets/H2.png',
  'assets/I2.png',
  'assets/J2.png',
  'assets/K2.png',
  'assets/L2.png',
  'assets/M2.png',
  'assets/N2.png',
  'assets/O2.png',
  'assets/P2.png',
  'assets/Q2.png',
  'assets/R2.png',
  'assets/S2.png',
  'assets/T2.png',
  'assets/U2.png',
  'assets/V2.png',
  'assets/W2.png',
  'assets/X2.png',
  'assets/Y2.png',
  'assets/Z2.png',
];

List<TileModel> getPairs(){

  List<TileModel> pairs = new List<TileModel>();
  for (int i=0;i< _icons.length;i++){
    TileModel tileModel = new TileModel();

    tileModel.setImageAssetPath(_icons[i]);
    tileModel.setAudioAssetPath(_music[i]);
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
  }

  return pairs;
}

List<TileModel> getSelectedPairs(){
  List<TileModel> pairs = new List<TileModel>();

  for (int i=0;i< _icons2.length;i++){
    TileModel tileModel = new TileModel();

    tileModel.setImageAssetPath(_icons2[i]);
    tileModel.setIsSelected(false);
    pairs.add(tileModel);
  }
  return pairs;
}