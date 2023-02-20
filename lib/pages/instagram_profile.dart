import 'package:dasar_flutter_section_2/widget/informasi_profile.dart';
import 'package:dasar_flutter_section_2/widget/profile_picture.dart';
import 'package:dasar_flutter_section_2/widget/story_item.dart';
import 'package:dasar_flutter_section_2/widget/tab_item.dart';
import 'package:flutter/material.dart';

class InstagramProfile extends StatelessWidget {
  const InstagramProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: const [
            Text(
              "n.salam0",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InformasiProfile("Posts", "20"),
                      InformasiProfile("Followers", "100"),
                      InformasiProfile("Following", "99"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "NURSALAM",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: const TextSpan(
                text:
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "#hastag",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: "#hastag",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: "#hastag",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link Goes Here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              child: Row(
                children: [
                  StoryItem("Story 1"),
                  StoryItem("Story 2"),
                  StoryItem("Story 3"),
                  StoryItem("Story 4"),
                  StoryItem("Story 5"),
                  StoryItem("Story 6"),
                  StoryItem("Story 7"),
                  StoryItem("Story 8"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/536/354",
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
            label: "Serach",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter_rounded,
            ),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
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
