import 'package:flutter/material.dart';

import '../widgets/info_item.dart';
import '../widgets/profile_picture.dart';
import '../widgets/story_item.dart';
import '../widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Text(
              "Ar-Herman",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.orange,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      InfoItem(title: "Posts", value: "251"),
                      InfoItem(title: "Followers", value: "526"),
                      InfoItem(title: "Following", value: "489"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Ar Herman",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.justify,
              text: const TextSpan(
                text:
                    "Flutter Dev Junior, senang dengan kodingan Dart Flutter, menyukai hal baru dan ingin terus berkambang, paham StateM Getx ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "#Flutter ",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: "#Dart ",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: "#Code ",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Link bio disini",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  StoryItem(
                      title: "Flutter",
                      urlImage:
                          "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"),
                  StoryItem(
                      title: "Dart",
                      urlImage:
                          "https://www.kindpng.com/picc/m/176-1766682_dart-programming-language-hd-png-download.png"),
                  StoryItem(
                      title: "Firebase",
                      urlImage:
                          "https://fit.labs.telkomuniversity.ac.id/wp-content/uploads/sites/37/2019/08/m3cEA33V.jpg"),
                  StoryItem(
                      title: "Android",
                      urlImage:
                          "https://media.wired.co.uk/photos/606d9b367aff197af7c72a2f/4:3/w_2668,h_2001,c_limit/wired-uk-android-tips-1.jpg"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TabItem(active: true, icon: Icons.grid_on_outlined),
              TabItem(active: false, icon: Icons.person_pin_outlined),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 100,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index + 500}/536/354",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
            ),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
