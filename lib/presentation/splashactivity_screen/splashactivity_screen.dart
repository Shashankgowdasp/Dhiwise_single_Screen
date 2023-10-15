import 'package:flutter/material.dart';
import 'package:shashankgowdasp_s_application4/core/app_export.dart';
import 'package:shashankgowdasp_s_application4/widgets/custom_elevated_button.dart';
import 'package:shashankgowdasp_s_application4/widgets/custom_outlined_button.dart';
import 'package:shashankgowdasp_s_application4/widgets/custom_text_form_field.dart';

class SplashactivityScreen extends StatelessWidget {
  SplashactivityScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phonenumberoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController selectroleoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 39.h,
            vertical: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 26.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome to ",
                      style: CustomTextStyles.headlineSmallPrimary_1,
                    ),
                    TextSpan(
                      text: "Saheli App",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              Container(
                width: 212.h,
                margin: EdgeInsets.only(
                  top: 2.v,
                  right: 67.h,
                ),
                child: Text(
                  "Please proceed with the sign-up process to create your account.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargePrimary,
                ),
              ),
              SizedBox(height: 15.v),
              Text(
                "Mobile",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 3.v),
              CustomTextFormField(
                controller: phonenumberoneController,
                hintText: "+91",
              ),
              SizedBox(height: 24.v),
              Text(
                "Password",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 3.v),
              CustomTextFormField(
                controller: passwordController,
              ),
              SizedBox(height: 24.v),
              Text(
                "Role",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 3.v),
              CustomTextFormField(
                controller: selectroleoneController,
                hintText: "Select Role",
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                  child: CustomImageView(
                    svgPath: ImageConstant.imgArrowdropdown,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 48.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 18.h,
                  top: 13.v,
                  bottom: 13.v,
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "Sign up",
              ),
              Container(
                width: 231.h,
                margin: EdgeInsets.only(
                  top: 25.v,
                  right: 48.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "If you already have an account, please ",
                        style: CustomTextStyles.bodyLarge18_1,
                      ),
                      TextSpan(
                        text: "login here.",
                        style: theme.textTheme.titleMedium!.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomOutlinedButton(
          text: "Login",
          margin: EdgeInsets.only(
            left: 39.h,
            right: 43.h,
            bottom: 29.v,
          ),
        ),
      ),
    );
  }
}
