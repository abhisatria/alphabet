class TileModel{
  String imageAssetPath,audioAssetPath;
  bool isSelected;

  TileModel({
    this.imageAssetPath,
    this.isSelected,
    this.audioAssetPath,
  });

  void setAudioAssetPath(String getAudioAssetPath){
    audioAssetPath = getAudioAssetPath;
  }

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setIsSelected(bool getIsSelected){
    isSelected = getIsSelected;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getAudioAssetPath(){
    return audioAssetPath;
  }

  bool getIsSelected(){
    return isSelected;
  }

}