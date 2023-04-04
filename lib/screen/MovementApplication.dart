import 'package:flutter/material.dart';

class MovementApplicationPage extends StatelessWidget {
  const MovementApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movement Application'),
      ),
      body: MovementBody(),
    );
  }
}

class MovementBody extends StatefulWidget {
  const MovementBody({Key? key}) : super(key: key);

  @override
  State<MovementBody> createState() => _MovementBodyState();
}

class _MovementBodyState extends State<MovementBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          Image.network(
              'https://t2conline.com/wp-content/uploads/2017/01/15877229_1877884292475816_6158103063665049600_n.jpg'),
          Image.network(
              'https://t2conline.com/wp-content/uploads/2017/01/15877229_1877884292475816_6158103063665049600_n.jpg'),

        ],
      ),
    );
  }
}
