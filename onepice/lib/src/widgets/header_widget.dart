import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});
  final tituloTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
  );
  final subtitleStyle = const TextStyle(color: Colors.white, fontSize: 17.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.all(25.0),
      height: 170.0,
      decoration: BoxDecoration(color: Color.fromARGB(255, 41, 40, 39)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("One Piece", style: tituloTextStyle),
              Text("Series", style: subtitleStyle),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 73, 66, 66),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(Icons.search, size: 28, color: Colors.white),
                  onPressed: () {},
                ),
              ),

              const SizedBox(width: 10.0), // sirve de separador

              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 73, 66, 66),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
