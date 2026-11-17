import 'package:contact_app/core/theme/app_colors.dart';
import 'package:contact_app/core/theme/app_styles.dart';
import 'package:contact_app/feature/home/widgets/custom_bottom_sheet.dart';
import 'package:contact_app/feature/home/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';
import '../../../core/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Assets.images.logoImg.image(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160.0),
                child: Assets.images.listPurple.image(),
              ),
              Text(
                "There is No Contacts Added Here",
                style: AppStyles.titleOne,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return CustomBottomSheet();
            },
          );
        },
        icon: Icons.add,
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.backGroundColor,
      ),
    );
  }
}
