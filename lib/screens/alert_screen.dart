import 'package:my_love/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:my_love/widgets/gradient_back.dart';
import 'screens.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context){

    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {

        return AlertDialog(
          elevation: 5,
          title: const Text('Eres lo más bello de mi vida'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text ('Gracias por hacerme feliz y apoyarme en todo momento mi amor. A veces me recuerdas al canto de los pájaros, porque incluso en el más fúnebre de mis despertares sabes conjugarle una sonrisa a mi corazón, te amaré con la fuerza de los vientos hasta que la tierra nos separé.', style: TextStyle(fontSize: 18,), textAlign: TextAlign.justify),
              const SizedBox(height: 30),
              Image.asset('assets/img/dinoquiero.jpg')
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Ir a la aplicación', style: TextStyle(fontSize: 18)),
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const HomeScreen()), 
                (route) => false
                ),
            ),
            TextButton(
              child: const Text('Cancelar', style: TextStyle(fontSize: 18)),
              onPressed: () => Navigator.pop(context), 
            
            )
          ],
        );
      }
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
         children: [
          const GradientBack(),
          Center(
            child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppTheme.primary,
              shape: const StadiumBorder(),
              elevation: 0,
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('Presiona acá cariño', style: TextStyle(fontSize: 20)),
            ),
            onPressed: () => displayDialogAndroid(context),
            ),
          ),
         ],
      ),
    );
  }
}