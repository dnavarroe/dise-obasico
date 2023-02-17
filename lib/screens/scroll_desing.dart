import 'package:flutter/material.dart';

class ScrollDesingScreen extends StatelessWidget {
   
  const ScrollDesingScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    const boxDecoration =  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xffe8e8e8),
              Color(0xffd0d0d0)
            ]
          )
        );
    return Scaffold(
      backgroundColor: const Color(0xffd0d0d0),
      body: Container(
        decoration:  boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            PageOne(),
            PageTwo()

          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  const [
        //Background
        Background(),
        //Contenido
        Content(dia:'Viernes', temperatura:'11º')

      ],
    );
  }
}

class Content extends StatelessWidget {
  final String dia;
  final String temperatura;
  const Content({
    Key? key, required this.dia, required this.temperatura,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle =  TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.black);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40,),
          Text(temperatura, style: textStyle),
          Text(dia, style: textStyle,),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down_rounded, size: 100,)
      ],),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: const Color(0xffd0d0d0),
      height: double.infinity,
      child: const Image(image: AssetImage('assets/thorfinn.jpg')));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffd0d0d0),
      child: Center(child: TextButton(
        onPressed: (){}, 
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey,
          shape: const StadiumBorder(),
        ),
        child:  const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text('Welcome', style: TextStyle(color: Colors.black, fontSize: 30),),
        ),
        )),
    );
  }
}