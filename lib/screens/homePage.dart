import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const categories = ['Men', 'Women', 'Mobile', 'Kitchen', 'Decor', 'Television'];

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SizedBox(
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 120.0,
              width: 120.0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: getList()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getList() {
    return categories.map((category) => categoriesComponent(category)).toList();
  }

  Wrap categoriesComponent(category) {
    return Wrap(
      spacing: 8.0,
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ClipOval(
          child: SizedBox.fromSize(
            size: const Size.fromRadius(30),
            child: Image.network(
              'https://i.picsum.photos/id/1011/5472/3648.jpg?hmac=Koo9845x2akkVzVFX3xxAc9BCkeGYA9VRVfLE4f0Zzk',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 90,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            category,
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
