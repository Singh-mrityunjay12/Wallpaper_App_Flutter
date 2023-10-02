class PhotosModel {
  String imgSrc;
  String photoGrapharName;
  //named Constructor
  PhotosModel({required this.imgSrc, required this.photoGrapharName});

  // API->api me data json form me ata h
  // App->aur hamara App jo hota h vo Map formate me data leta h

  static PhotosModel fromAPI2App(Map<String, dynamic> photosMap) {
    return PhotosModel(
        imgSrc: (photosMap["src"])["portrait"],
        photoGrapharName: photosMap["photographer"]);
  }
}
