import 'package:flutter/material.dart';
import 'package:profile_app/media_icons.dart';
import 'package:profile_app/social_reach_widget.dart';
import 'package:profile_app/followers_pic_structure.dart';

const topBackgroundImage =
    'https://images.unsplash.com/photo-1493514789931-586cb221d7a7?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
const List<String> urls = [
  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 252, 255),
      body: Stack(
        children: [
          _backgroundTopImage(),
          _floatingCard(),
        ],
      ),
    );
  }

  Column _backgroundTopImage() {
    return Column(
      children: [
        Image.network(
          height: 200,
          fit: BoxFit.cover,
          topBackgroundImage,
          width: double.infinity,
        ),
      ],
    );
  }

  Stack _floatingCard() {
    return Stack(
      children: [
        Positioned(
          top: 120,
          left: 20,
          right: 20,
          bottom: 270,
          // bot
          child: Card(
            color: Colors.white,
            child: Column(
              children: [
                const Spacer(),
                // Name and Skill Text
                const Text(
                  'Bilawal Mehfooz',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
                const SizedBox(height: 12),

                // call message email rounded area
                _contactIcons(),
                const SizedBox(height: 24),

                // followers following area
                _socialReach(),
                const SizedBox(height: 24),

                _followersSection(),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('FOLLOW NOW'),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
        _circularTopProfilePicture(),
      ],
    );
  }

  Positioned _circularTopProfilePicture() {
    return Positioned(
      left: 0,
      right: 0,
      top: 70,
      child: CircleAvatar(
        radius: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset('assets/profile.png'),
        ),
      ),
    );
  }

  Container _followersSection() {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.blue.withOpacity(0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            width: 250,
            child: Stack(
              children: [
                FollowersPicStructure(url: urls[0], positionValue: 0),
                FollowersPicStructure(url: urls[1], positionValue: 40),
                FollowersPicStructure(url: urls[2], positionValue: 80),
                FollowersPicStructure(url: urls[3], positionValue: 120),
                FollowersPicStructure(url: urls[4], positionValue: 160),
                FollowersPicStructure(url: urls[5], positionValue: 200),
              ],
            ),
          ),
          const Text(
            '22 FOLLOWERS YOU KNOW',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Row _socialReach() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialReachWidget(text: ['270', 'FOLLOWING']),
        SocialReachWidget(text: ['43', 'FOLLOWERS']),
      ],
    );
  }

  Row _contactIcons() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MediaIcons(icon: Icons.call, filled: true),
        MediaIcons(icon: Icons.near_me),
        MediaIcons(icon: Icons.sms),
        MediaIcons(icon: Icons.email),
      ],
    );
  }
}
