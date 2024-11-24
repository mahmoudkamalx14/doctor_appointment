import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 70,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 65,
        backgroundImage: AssetImage('assets/images/male.png'),
      ),
    ); 
  }
}
