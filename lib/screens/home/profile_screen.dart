import 'package:flutter/material.dart';
import 'package:loginapp/animation/animated_content.dart';
import 'package:loginapp/constants.dart';
import 'package:loginapp/screens/home/components/profile_menu_widget.dart';
import 'package:loginapp/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              /// -- IMAGE
              AnimatedContent(
                show: true,
                leftToRight: 0.0,
                topToBottom: -5.0,
                time: 1500,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              profileImage,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.edit,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Faies C',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text('Flutter Developer',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )),
                    const SizedBox(height: 20),
                  ],
                ),
              ),

              /// -- BUTTON
              AnimatedContent(
                show: true,
                leftToRight: 0.0,
                topToBottom: -5.0,
                time: 1500,
                child: SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text('EditProfile',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              /// -- MENU
              AnimatedContent(
                show: true,
                leftToRight: -3.0,
                topToBottom: 0.0,
                time: 1700,
                child: ProfileMenuWidget(
                    title: "Settings", icon: Icons.settings, onPress: () {}),
              ),
              AnimatedContent(
                show: true,
                leftToRight: -2.0,
                topToBottom: 0.0,
                time: 1500,
                child: ProfileMenuWidget(
                    title: "Billing Details",
                    icon: Icons.wallet,
                    onPress: () {}),
              ),
              AnimatedContent(
                show: true,
                leftToRight: -1.0,
                topToBottom: 0.0,
                time: 1500,
                child: ProfileMenuWidget(
                    title: "User Management",
                    icon: Icons.person,
                    onPress: () {}),
              ),
              const Divider(),
              const SizedBox(height: 10),
              AnimatedContent(
                show: true,
                leftToRight: -1.0,
                topToBottom: 0.0,
                time: 1500,
                child: ProfileMenuWidget(
                    title: "Information", icon: Icons.info, onPress: () {}),
              ),
              AnimatedContent(
                show: true,
                leftToRight: -1.0,
                topToBottom: 0.0,
                time: 1500,
                child: ProfileMenuWidget(
                    title: "Logout",
                    icon: Icons.power_settings_new,
                    textColor: Colors.red,
                    endIcon: false,
                    onPress: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
