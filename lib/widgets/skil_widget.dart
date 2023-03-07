import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.color,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);
  final String image;
  final String title;
  final Color color;
  final Function() onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Container(
        width: 120,
        height: 120,
        decoration: isSelected
            ? BoxDecoration(
                color: const Color(0x0dffffff),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.4),
                    offset: const Offset(0, 1),
                    blurRadius: 40,
                  ),
                ],
              )
            : const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isSelected
                  ? BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: color,
                          offset: const Offset(0, 1),
                          blurRadius: 20,
                        ),
                      ],
                    )
                  : const BoxDecoration(),
              child: Image.asset(
                image,
                width: 40,
              ),
            ),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
