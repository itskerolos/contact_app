import 'package:contact_app/core/theme/app_colors.dart';
import 'package:contact_app/core/theme/app_styles.dart';
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
              return Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.backGroundColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // image + User Information
                            Expanded(
                              flex: 5,
                              child: Container(
                                height: 146,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: AppColors.primaryColor,
                                    width: 1,
                                  ),
                                ),
                                child: Assets.images.imageNotPreview.image(),
                              ),
                            ),
                            SizedBox(width: 12),
                            // userName , email , phone
                            Expanded(
                              flex: 8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "User Name",
                                    style: AppStyles.titleThree,
                                  ),
                                  Divider(
                                    color: AppColors.primaryColor,
                                    thickness: 1,
                                  ),
                                  Text(
                                    "example@email",
                                    style: AppStyles.titleThree,
                                  ),
                                  Divider(
                                    color: AppColors.primaryColor,
                                    thickness: 1,
                                  ),
                                  Text(
                                    "+2000000000",
                                    style: AppStyles.titleThree,
                                  ),
                                  Divider(
                                    color: AppColors.primaryColor,
                                    thickness: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter User Name",
                            hintStyle: AppStyles.titleThree,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.38),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter User Email",
                            hintStyle: AppStyles.titleThree,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.38),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Enter User Phone",
                            hintStyle: AppStyles.titleThree,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 14,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                                width: 1.5,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        //elevated button (Enter user)
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primaryColor,
                              foregroundColor: AppColors.backGroundColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Text(
                              "Enter User",
                              style: AppStyles.titleTwo.copyWith(
                                color: AppColors.backGroundColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
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
