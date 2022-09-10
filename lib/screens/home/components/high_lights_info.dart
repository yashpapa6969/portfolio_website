import 'package:flutter/material.dart';
import 'package:portfolio_website/components/animated_counter.dart';
import 'package:portfolio_website/responsive.dart';

import '../../../constants.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [

                SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Expanded(
                      child: HeighLight(
                        counter: AnimatedCounter(
                          value: 10,
                          text: "+",
                        ),
                        label: "Projects",
                      ),
                    ),

                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                HeighLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),

              ],
            ),
    );
  }
}

class HeighLight extends StatelessWidget {
  const HeighLight({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
