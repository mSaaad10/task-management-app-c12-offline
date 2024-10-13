import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_c12_offline/core/assets_manager.dart';
import 'package:todo_app_c12_offline/core/reusable_components/custom_text_form_field.dart';
import 'package:todo_app_c12_offline/core/routes_manager.dart';
import 'package:todo_app_c12_offline/core/strings_manager.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController fullNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController rePasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: SvgPicture.asset(AssetsManager.routeLogo),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    buildTitleItem('Full-name'),
                    buildFullNameField(),
                    buildTitleItem('User name'),
                    buildUserNameField(),
                    buildTitleItem('E-mail'),
                    buildEmailField(),
                    buildTitleItem('Password'),
                    buildPasswordField(),
                    buildTitleItem('Re-password'),
                    buildRePasswordField(),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 18,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: MaterialButton(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            // register();
                          },
                          child: const Text(
                            StringsManager.signUp,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF004182)),
                          )),
                    ),
                    SliverToBoxAdapter(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have Account?',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.normal),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, RoutesManager.loginRoute);
                              },
                              child: Text(
                                StringsManager.signIn,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.underline),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildFullNameField() => SliverToBoxAdapter(
        child: CustomTextFormField(
          hintText: 'enter your full name',
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return 'Plz, enter full name';
            }
          },
          controller: fullNameController,
        ),
      );

  Widget buildUserNameField() => SliverToBoxAdapter(
        child: CustomTextFormField(
          hintText: 'enter user name',
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return 'Plz, enter user name';
            }
          },
          controller: userNameController,
        ),
      );

  Widget buildEmailField() => SliverToBoxAdapter(
        child: CustomTextFormField(
          hintText: 'enter your email',
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return 'Plz, enter e-mail address';
            }
            // check email format
          },
          controller: emailController,
        ),
      );

  Widget buildPasswordField() => SliverToBoxAdapter(
        child: CustomTextFormField(
          hintText: 'enter your password',
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return 'Plz, enter password';
            }
            if (input.length < 6) {
              return 'Sorry, Password should be at least 6 chars';
            }
          },
          controller: passwordController,
          isSecure: true,
        ),
      );

  Widget buildRePasswordField() => SliverToBoxAdapter(
        child: CustomTextFormField(
          hintText: 'Confirm password',
          validator: (input) {
            if (input == null || input.trim().isEmpty) {
              return 'Plz, enter password';
            }
            if (input.length < 6) {
              return 'Sorry, Password should be at least 6 chars';
            }
          },
          controller: rePasswordController,
          isSecure: true,
        ),
      );

  buildTitleItem(String title) => SliverToBoxAdapter(
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400),
        ),
      );
}
