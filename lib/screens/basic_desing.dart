import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
   
  const BasicDesingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          //Imagen
          const Image(image: AssetImage('assets/wano.jpg')),
          //Titulo
          const Title(),
          //Button section
          const ButtonSection(),
          //Descripcion
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: const Text('El País de Wano (ワノ国 Wano Kuni), conocido hace cientos de años como el País del Oro (黄金の国 Ōgon no Kuni) es un país situado en el Nuevo Mundo, no afiliado al Gobierno Mundial. Es gobernado por la familia Kozuki, ejerciendo su patriarca Kozuki Momonosuke como el shogun del país. Tras la victoria por parte de la Alianza Ninja-Pirata-Mink-Samurái en el asalto a Onigashima, el país terminó con la ocupación de los Piratas de las Bestias y la tiranía de Kurozumi Orochi, recuperando su soberanía histórica sobre el lugar. También se declaró como territorio protegido por los Piratas de Sombrero de Paja. Según el propio Kozuki Sukiyaki, el arma ancestral Pluton se encuentra escondida en algún lugar del país.',
            textAlign: TextAlign.justify,),
          )
        ],
      ),
    );
  }
}



class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Wano Kuni', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text('ワノ国', style: TextStyle(color: Colors.black45),)
            ],
          ),
          Expanded(child: Container()),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.purple,),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
        Button(icono:Icons.phone, nombre: 'CALL'),
        Button(icono: Icons.map_rounded, nombre: 'ROUTE'),
        Button(icono: Icons.share, nombre: 'SHARE')
        
      ],),
    );
  }
}

class Button extends StatelessWidget {
  final IconData icono;
  final String nombre;
  const Button({
    Key? key, required this.icono, required this.nombre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icono, color: Colors.purple[200], size: 30,),
        Text(nombre)
      ],
    );
  }
}