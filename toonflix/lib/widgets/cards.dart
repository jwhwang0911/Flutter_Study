import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String dollertype;
  final Color bgColor;
  final Color fontColor;
  final String moneyAmount;
  final String dollorread;
  final Icon iconType;

  const Cards({
    super.key,
    required this.dollertype,
    required this.bgColor,
    required this.moneyAmount,
    required this.dollorread,
    required this.iconType,
    required this.fontColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
          30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dollertype,
                  style: TextStyle(
                      color: fontColor,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      moneyAmount,
                      style: TextStyle(
                        color: fontColor,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      dollorread,
                      style: TextStyle(
                        color: fontColor.withOpacity(0.5),
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 12),
                child: iconType,
              ),
            )
          ],
        ),
      ),
    );
  }
}
