import 'package:flutter/material.dart';
import 'package:portfolio_website/components/animated_progress_indicator.dart';

import '../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        SizedBox(height: defaultPadding),
        Text(
          "Skills",
          style: Theme.of(context).textTheme.subtitle2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Row(
            children: [
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.8,
                  label: "Flutter",
                ),
              ),
              SizedBox(width: defaultPadding * 1.5),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.05,
                  label: "Python",
                ),
              ),
              SizedBox(width: defaultPadding * 1.5),
              Expanded(
                child: AnimatedCircularProgressIndicator(
                  percentage: 0.15,
                  label: "Firebase",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

