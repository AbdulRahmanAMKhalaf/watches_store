import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/presentation/screens/home/main_home/main_home_content.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
            icon: Icon(Icons.menu,size: 30.px,color: Colors.black,)),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.search,size: 25.px,color: Colors.black,)),
          IconButton(onPressed: (){},
              icon: Icon(Icons.shopping_cart_outlined,size: 25.px,color: Colors.black,)),
        ],
      ),
      body: const MainHomeContent(),
    );
  }
}

