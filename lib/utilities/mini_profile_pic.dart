import 'package:flutter/material.dart';
import '../pages/profile.dart';

class MiniProfilePic extends StatelessWidget {
  const MiniProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(borderRadius: BorderRadius.circular(16),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Profile()));
      },
      child: const Image(
        height: 42,
        width: 42,
        image: AssetImage('assets/image-1.png'),
      ),
    );
  }
}
