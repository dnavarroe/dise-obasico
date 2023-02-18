import 'package:flutter/material.dart';


class CustomBottun extends StatelessWidget {
  const CustomBottun({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: const Color(0xff0470dc),
      backgroundColor: const Color(0xff60bec4),
      unselectedItemColor: const Color.fromRGBO(153, 243, 247, 1),
      items: [
        BottomNavigationBarItem(
          icon: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal:50),
            leading: const Icon(Icons.swap_vert_circle_outlined, size: 30,),
            onTap: () => Navigator.pushNamed(context, 'scroll_desing'),
            selected: true,
          ),
          label: 'Pantall de scroll'
        ),
        const BottomNavigationBarItem(
          icon: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal:50),
            leading: Icon(Icons.list_rounded, size: 30, color:Color.fromRGBO(153, 243, 247, 1)),
          ),
          label: 'Historial',
        ),
        BottomNavigationBarItem(
          icon: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal:50),
            leading: const Icon(Icons.houseboat, size: 30, color:Color.fromRGBO(153, 243, 247, 1) ,),
            onTap: () => Navigator.pushNamed(context, 'basic_desing'),
          ),
          label: 'Wano kuni',
        )
      ],);
  }
}