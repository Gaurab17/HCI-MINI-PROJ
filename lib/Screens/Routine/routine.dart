import 'package:flutter/material.dart';

class Routine extends StatelessWidget {
  const Routine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.2,
      width: MediaQuery.of(context).size.height / 1.1,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://scontent.xx.fbcdn.net/v/t1.15752-9/277314470_237154981909993_7482058397448875018_n.jpg?stp=dst-jpg_p206x206&_nc_cat=108&ccb=1-5&_nc_sid=aee45a&_nc_ohc=uYRjlsuLfEIAX_PL1bH&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVIJW8pLoxyeHJBzi4dq-BAyAyqLZlbFblGaqRJh1NL4WQ&oe=626E48B0"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
