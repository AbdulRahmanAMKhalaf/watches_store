import 'package:watches_store/core/utils/images_app.dart';

class WelcomeModel{
  String title;
  String image;

  WelcomeModel({required this.title,required this.image,});
}
List<WelcomeModel>welcomeList=[
  WelcomeModel(title: 'Jewelry isn’t really my thing, but I’ve always got my eye on people’s watches.', image: ImagesApp.watches_box,),
  WelcomeModel(title: 'A watch is an elegant way to keep all your other accessories in sync. Add one to your wardrobe and you’ll feel like a new person.', image: ImagesApp.handHeldWatch,),
  WelcomeModel(title: 'In Switzerland they had brotherly love, five hundred years of democracy and peace, and what did they produce? The cuckoo clock!', image: ImagesApp.clockWall,)
];