
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  
  final poemas = [
'Arde en tus ojos un misterio, virgen esquiva y compañera. No sé si es odio o es amor la lumbre inagotable de tu aliaba negra. Conmigo irás mientras proyecte sombra mi cuerpo y quede a mi sandalia arena. -¿Eres la sed o el agua en mi camino?- Dime, virgen esquiva y compañera.',
'\n \n \n Te quiero más que al Sol, te quiero más que a la Luna, pues eres mi mundo entero y sin ti no hay vida alguna.',
'Te ofrezco entre racimos de rosas, Mi corazón ingenuo que a tu bondad se humilla; No quieran destrozarlo tus manos cariñosas, En el jardín umbroso mi cuerpo fatigado Las auras cubrieron de rocío; Como en la paz de un sueño se deslice a tu lado Sobre tu núbil seno mi frente soñolienta.',
'\n \n \n Asomaba a sus ojos una lágrima y a mi labio una frase de perdón. Habló el orgullo y se enjuagó su llanto y la frase en mis labios expiró.',
'\n \n \n Nada me haría más feliz que pasar el resto de mis días a tu lado, y es que con una ternura y un sigilo ensordecedor, mi corazón por siempre has robado.',
'\n \n \n Te mando un abrazo por si tienes frío, una sonrisa por si estás triste, un ángel para que te cuide y estas palabras para que nunca me olvides.',
'\n \n \n En el cielo hay una estrella que me llama la atención, pero es la mujer más bella la que me roba el corazón.',
'\n \n \n Si tus ojos fueran luceros y tus labios fueran el mar, qué paisaje tan bonito al que poder admirar...',
'\n \n \n Si supiera que mis labios iluminan tus días como tu boca ilumina los míos, jamás dejaría de sonreír por ti, amor.',
'\n \n \n ¿Quieres que te cuente el secreto de la primavera? Para mí tu eres la flor, la alegría primera, solo con tu aroma, el mundo cae a tus pies',
  
  ]; //lista de poemas

  CardSwiper({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //informacion de la pantalla
    const SizedBox(width: 20);
    return SizedBox(
      
      height: size.height * 0.5 , //configurando la altura a la mitad de la pantalla
      width: double.infinity, //configurando el ancho a la mitad de la pantalla
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30), //darle el espacio para que no tope con el appbar
        child: Swiper(
              itemCount: poemas.length, //cantidad de elementos
              layout: SwiperLayout.STACK, //ordenando en filas los poemas
              itemWidth: size.width * 0.8, //ancho el elemento
              itemHeight: size.height , //altura del elemento
              itemBuilder: ( __, index) {
                return GestureDetector( //creando la seccion del texto
                  child: Container(
                    decoration: BoxDecoration( //widget para ponerle colores y bordes
                      color: Colors.blue, //colocandole color azul al container
                      border: Border.all( //widget para colocarle bordes
                        color: Colors.black12, //borde negro
                        width: 4.5, //ancho del borde 4.5
                      ),
                    ),
                    width: double.infinity,
                    child: Text(poemas[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 25)
                    ),
                  ),
                );
              },
              ),
        ),
      );
  }
}