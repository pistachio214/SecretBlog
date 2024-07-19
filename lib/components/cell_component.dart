import 'package:flutter/material.dart';
import 'package:talk/components/gaps_component.dart';

class CellComponent extends StatelessWidget {
  const CellComponent({
    super.key,
    required this.title,
    required this.desc,
    required this.onTap,
  });

  final String title;
  final String desc;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        hoverColor: Colors.white,
        focusColor: Colors.white,
        onTap: onTap,
        child: SizedBox(
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Gaps.vGap8,
                  Text(
                    desc,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF999999),
                    ),
                  ),
                ],
              )),
              Image.asset(
                'assets/images/ic_arrow_right.png',
                width: 18,
                height: 18,
              )
            ],
          ),
        ));
  }
}
