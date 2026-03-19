import 'package:flutter/material.dart';
import 'package:gymapp/features/workout/service/trainers_data.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/section_tile_widgets.dart';
import 'package:gymapp/features/workout/view/widgets/homescreen_widgets/trainer_section/trainer_card.dart';

class HomeTrainersSection extends StatelessWidget {
  const HomeTrainersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
          child: SectionTileWidgets(title: 'Top Trainers'),
        ),

        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trainers.length,
            itemBuilder: (context, index) {
              final trainer = trainers[index];
              return TrainerCard(
                image: trainer.image,
                name: trainer.name,
                role: trainer.role,
              );
            },
          ),
        ),
      ],
    );
  }
}
