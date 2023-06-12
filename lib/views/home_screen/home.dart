import 'package:get/get.dart';
import 'package:practice/views/cart_screen/cart_screen.dart';
import '../../consts/consts.dart';
import '../../controller/home_controller.dart';
import '../cetegory_screen/catagory_screen.dart';
import '../profile_screen/profile_screen.dart';
import 'home_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 20), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 20), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 20), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 20), label: account),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          backgroundColor: whiteColor,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
