import 'package:caotgory/view/Screen/settings.dart';
import 'package:caotgory/view/Screen/subCatogory.dart';
import 'package:caotgory/view/Screen/profile.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import 'chatbot.dart';

class Category {
  final String title;
  final String imageSrc;

  Category({required this.title, required this.imageSrc});
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

class CategoriesPage extends StatefulWidget {
  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final List<Category> categories = [
    Category(
        title: "الاسواق",
        imageSrc: "https://cdn-icons-png.flaticon.com/512/3144/3144456.png"),
    Category(
        title: 'الكافيهات',
        imageSrc: "https://cdn-icons-png.flaticon.com/512/1079/1079108.png"),
    Category(
        title: 'السوبر ماركت',
        imageSrc: 'https://cdn-icons-png.flaticon.com/512/2203/2203239.png'),
    Category(
        title: 'الصيدليات',
        imageSrc: 'https://cdn-icons-png.flaticon.com/512/4320/4320337.png'),
    Category(
        title: 'المطاعم',
        imageSrc: 'https://cdn-icons-png.flaticon.com/512/737/737967.png'),
    Category(
        title: "الميكاب",
        imageSrc: "https://cdn-icons-png.flaticon.com/512/2975/2975771.png"),
    Category(
        title: "المجوهرات",
        imageSrc: "https://cdn-icons-png.flaticon.com/512/3674/3674421.png"),
    Category(
        title: "العطور",
        imageSrc: "https://cdn-icons-png.flaticon.com/512/539/539518.png")
  ];

  @override
  Widget build(BuildContext context) {
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
                                    "Your Chance",
                                    style: TextStyle(fontSize: 20),
                                  ))),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Settings(),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: "Search for categories",
                            icon: Icon(Icons.search),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
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
                itemBuilder: (context, index) => CategoryCard(
                  category: categories[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => subCategoriesPage(
                          index: index,
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
