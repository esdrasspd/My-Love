
import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  const GradientBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height, //agarra toda la pantalla
      decoration: const BoxDecoration( //parametro para boxdecoration
        gradient: LinearGradient( //llama al parametro de gradiente
          colors: [
            Color.fromARGB(255, 123, 249, 180),
              Color.fromARGB(255, 66, 235, 142),
          ],
          begin: FractionalOffset(0.9, 0.1), //comienzo del gradiente
          end: FractionalOffset(1.0, 0.7), //final del gradiente
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
          )
      ),
    );
  }
}