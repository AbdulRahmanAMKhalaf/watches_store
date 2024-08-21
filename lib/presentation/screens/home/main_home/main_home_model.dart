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
  MainHomeModel(name: '44MM Multifunction Leather Strap Watch', logo: 'assets/icons/TH.png', model:'2021',price: '140\$',image: 'assets/icons/1.png'),
  MainHomeModel(name: '44MM Multifunction Leather Strap Watch', logo: 'assets/icons/FO.png', model:'2021',price: '240\$',image: 'assets/icons/2.png'),
  MainHomeModel(name: '44MM Multifunction Leather Strap Watch', logo: 'assets/icons/TH.png', model:'2021',price: '120\$',image: 'assets/icons/4.png'),
  MainHomeModel(name: '44MM Multifunction Leather Strap Watch', logo: 'assets/icons/FO.png', model:'2021',price: '300\$',image: 'assets/icons/3.png'),
];
