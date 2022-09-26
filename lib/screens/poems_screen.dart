import 'package:flutter/material.dart';
import 'package:my_love/widgets/widgets.dart';

class PoemsScreen extends StatelessWidget {
  const PoemsScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estos poemas te los dedico'),
      ),
    body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                CardSwiper(),
              ],
            ),
          ),

          FadeInImage(
            height: MediaQuery.of(context).size.height * 0.4,
            placeholder: const AssetImage('assets/img/jar-loading.gif'), 
            image: const AssetImage('assets/img/amor1.gif')
            ),
        ],
      ),
    );
  }
}