import 'package:flutter/material.dart';
import 'package:my_love/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Felices 4 meses amor!!!'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 250,
              child: Menu()), 
            FadeInImage(
                height: MediaQuery.of(context).size.height * 0.52,
                placeholder: const AssetImage('assets/img/jar-loading.gif'), 
                image: const AssetImage('assets/img/4 meses.png')
                ),
          ],
        )
                              ),
                
              );
             
}

}