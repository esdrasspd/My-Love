import 'package:flutter/material.dart';
import 'package:my_love/widgets/custom_card.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes de nosotros <3'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard(pathImage: 'assets/img/img1.jpg', textImage: 'Cuando te conocí, nunca llegué a que te fuera a querer demasiado, veniste a darme alegría a mi vida', heightImage: 590),
          SizedBox(height: 20),
          CustomCard(pathImage: 'assets/img/img3.jpg', textImage: 'Amo verte a los ojos, y poder ver reflejado mi cara a través de tu bello alma', heightImage: 590,),
          SizedBox(height: 20),
          CustomCard(pathImage: 'assets/img/img4.jpg', textImage: 'Eres lo más bello que han visto mis ojos, y lo más precioso que tengo', heightImage: 590),
          SizedBox(height: 20),
          CustomCard(pathImage: 'assets/img/img5.jpg', textImage: 'Nuestro amor es a prueba de meteoritos', heightImage: 590),
          SizedBox(height: 20),
          CustomCard(pathImage: 'assets/img/img6.jpg', textImage: 'Gracias por el dinosaurio que me diste por mi cumpleaños <3', heightImage: 590),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}