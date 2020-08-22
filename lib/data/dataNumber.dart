import 'package:alphabet/model/tile_model.dart';

bool selectedNumber = false;
const _musicNumber = <String>[
  'assets/0.mp3',
  'assets/1.mp3',
  'assets/2.mp3',
  'assets/3.mp3',
  'assets/4.mp3',
  'assets/5.mp3',
  'assets/6.mp3',
  'assets/7.mp3',
  'assets/8.mp3',
  'assets/9.mp3',
];
const _iconNumbers = <String>[
  'assets/0.png',
  'assets/1.png',
  'assets/2.png',
  'assets/3.png',
  'assets/4.png',
  'assets/5.png',
  'assets/6.png',
  'assets/7.png',
  'assets/8.png',
  'assets/9.png'
];

const _iconNumbers2 = <String>[
  'assets/0a.png',
  'assets/1a.png',
  'assets/2a.png',
  'assets/3a.png',
  'assets/4a.png',
  'assets/5a.png',
  'assets/6a.png',
  'assets/7a.png',
  'assets/8a.png',
  'assets/9a.png'
];

List<TileModel> getPairsNumber() {
  List<TileModel> pairsNumber = new List<TileModel>();
  for (int i = 0; i < _iconNumbers.length; i++) {
    TileModel tileModelNumber = new TileModel();

    tileModelNumber.setImageAssetPath(_iconNumbers[i]);
    tileModelNumber.setAudioAssetPath(_musicNumber[i]);
    tileModelNumber.setIsSelected(false);
    pairsNumber.add(tileModelNumber);
  }

  return pairsNumber;
}

List<TileModel> getSelectedPairsNumber() {
  List<TileModel> pairsNumber = new List<TileModel>();

  for (int i = 0; i < _iconNumbers2.length; i++) {
    TileModel tileModelNumber = new TileModel();

    tileModelNumber.setImageAssetPath(_iconNumbers2[i]);
    tileModelNumber.setIsSelected(false);
    pairsNumber.add(tileModelNumber);
  }
  return pairsNumber;
}
