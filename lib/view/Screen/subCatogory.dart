import 'package:caotgory/view/Screen/copon.dart';
import 'package:caotgory/view/Screen/profile.dart';
import 'package:caotgory/view/Screen/show.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import 'chatbot.dart';

class Category {
  final String title;
  final String imageSrc;
  final int id;

  Category({required this.title, required this.imageSrc, required int this.id});
}

class CategoryCard extends StatelessWidget {
  final Category category;
  final Function() onTap;

  CategoryCard({required this.category, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              category.imageSrc,
              height: 75,
              width: 75,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 12),
            Text(
              category.title,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class subCategoriesPage extends StatelessWidget {
  final int index;
  subCategoriesPage({required this.index});

  final List<Category> _categories_market = [
    Category(id: 0, title: 'لولو', imageSrc: 'assets/images/market1.jpg'),
    Category(id: 1, title: 'العثيم', imageSrc: 'assets/images/market2.jpg'),
    Category(id: 2, title: 'الراية', imageSrc: 'assets/images/market3.jpg'),
  ];

  final List<Category> _categories_makeup = [
    Category(id: 3, title: 'مكياجي', imageSrc: 'assets/images/mak1.jpg'),
    Category(id: 4, title: 'Q&A', imageSrc: 'assets/images/mak2.jpg'),
  ];

  final List<Category> _categories_g = [
    Category(
        id: 6,
        title: 'الركن السويسري للساعات',
        imageSrc: 'assets/images/g1.jpg'),
    Category(id: 7, title: 'كرديل', imageSrc: 'assets/images/g2.jpg'),
    Category(id: 8, title: 'بيت الامراء', imageSrc: 'assets/images/g3.jpg'),
  ];
  final List<Category> _categories_ph = [
    Category(
        id: 9, title: 'مستلزمات الصيدلة', imageSrc: 'assets/images/ph1.jpg'),
    Category(id: 10, title: 'دواء السلامه', imageSrc: 'assets/images/ph2.jpg'),
    Category(id: 11, title: 'النهدي', imageSrc: 'assets/images/ph3.jpg'),
  ];
  final List<Category> _categories_r = [
    Category(id: 12, title: 'ماكدوندز', imageSrc: 'assets/images/r1.jpg'),
    Category(id: 13, title: 'هيرفي', imageSrc: 'assets/images/r2.jpg'),
    Category(id: 14, title: 'الطازج', imageSrc: 'assets/images/r3.jpg'),
  ];
  final List<Category> _categories_coffe = [
    Category(id: 15, title: '1K Coffee', imageSrc: 'assets\\images\\co1.jpg'),
    Category(id: 16, title: 'كيان Coffee', imageSrc: 'assets/images/co2.jpg'),
    Category(id: 17, title: 'DUNKIN', imageSrc: 'assets/images/co3.jpg'),
  ];
  final List<Category> _categories_m = [
    Category(id: 18, title: 'توينتي4', imageSrc: 'assets/images/co1.jpg'),
    Category(id: 19, title: 'سنترونيت', imageSrc: 'assets/images/co2.jpg'),
    Category(id: 20, title: 'ماكس', imageSrc: 'assets/images/co3.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    late final List<Category> categories;
    late String _title;

    if (index == 2) {
      categories = _categories_market;
      _title = "السوبر ماركت";
    } else if (index == 3) {
      categories = _categories_ph;
      _title = "الصيدليات";
    } else if (index == 1) {
      categories = _categories_coffe;
      _title = "الكافيهات";
    } else if (index == 5) {
      categories = _categories_makeup;
      _title = "الميكاب";
    } else if (index == 6) {
      categories = _categories_g;
      _title = "المجوهرات";
    } else if (index == 0) {
      categories = _categories_m;
      _title = "الاسواق";
    } else if (index == 4) {
      categories = _categories_r;
      _title = "المطاعم";
    }

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColor.orange,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
          ],
          onTap: (int index) {
            // Handle the tap event for the selected tab index
            switch (index) {
              case 0:
                // Handle the Home tab
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
                // Handle the Profile tab
                break;
              case 2:
                // Handle the Chat tab
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
                break;
              case 2:
                break;
            }
          },
        ),
        appBar: AppBar(
          backgroundColor: AppColor.orange,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // TODO: Implement search functionality
              },
            ),
          ],
        ),
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    _title,
                                    style: TextStyle(fontSize: 20),
                                  ))),
                        ],
                      ),
                      Spacer(),
                      const SizedBox(height: 90),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemCount: categories.length,
                itemBuilder: (context, _index) => CategoryCard(
                  category: categories[_index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CouponPage(
                          index: categories[_index].id,
                          title: categories[_index].title,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ]));
  }
}
