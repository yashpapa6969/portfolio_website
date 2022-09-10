import 'package:flutter/material.dart';
import 'package:portfolio_website/models/Recommendation.dart';

import '../../../constants.dart';
import 'recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recommendations",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_recommendations.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: RecommendationCard(
                    recommendation: demo_recommendations[index]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
