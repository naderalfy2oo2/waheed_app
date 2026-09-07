import 'package:flutter/material.dart';

class ChangeIndicator extends StatelessWidget {
  final int currentIndex;

  const ChangeIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        bool isActive = index < currentIndex;

        return Row(
          children: [
            Container(
              width: 115,
              height: 6,
              decoration: BoxDecoration(
                color: isActive
                    ? const Color(0xff000000)
                    : const Color(0xffE5E7EB),
                borderRadius: BorderRadius.circular(99),
              ),
            ),

            if (index != 2) const SizedBox(width: 8),
          ],
        );
      }),
    );
  }
}
