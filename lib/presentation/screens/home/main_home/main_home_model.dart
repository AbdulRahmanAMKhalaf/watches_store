import 'package:watches_store/core/utils/app_images.dart';

class MainHomeModel {
  final String name;
  final String logo;
  final String model;
  final String price;
  final String image;

  MainHomeModel(
      {required this.name,
        required this.price,
      required this.logo,
        required this.image,
      required this.model,});
}
List<MainHomeModel>mainHomeList=[
  MainHomeModel(name: 'Tommy Hilfiger Watch', logo: AppImages.TH, model:'2021',price: '140\$',image: AppImages.TH1),
  MainHomeModel(name: 'Fossil Watch', logo: AppImages.FO, model:'2021',price: '240\$',image: AppImages.FO1),
  MainHomeModel(name: 'Tommy Hilfiger Watch', logo: AppImages.TH, model:'2021',price: '120\$',image: AppImages.TH2),
  MainHomeModel(name: 'Fossil Watch', logo: AppImages.FO, model:'2021',price: '300\$',image: AppImages.FO2),
];
