import 'package:e_comercio/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBGColor,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark),
        title: Text(
          'Profile',
          style: GoogleFonts.getFont('Poppins',
              fontSize: ml, fontWeight: medium, color: neutralBlack),
        ),
      ),
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(color: primaryBGColor),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: neutralLightGray,
                  radius: 32.r,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username',
                      style: GoogleFonts.getFont('Poppins',
                          fontSize: xl,
                          color: neutralBlack,
                          fontWeight: medium),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                      decoration: BoxDecoration(
                          color: statusOrangeSecondary,
                          borderRadius: BorderRadius.circular(18.r)),
                      child: Text(
                        'Member',
                        style: GoogleFonts.getFont('Poppins',
                            fontSize: sm, color: statusOrange),
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                  decoration: BoxDecoration(
                      color: statusOrangeSecondary,
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Text(
                    'Become a seller >',
                    style: GoogleFonts.getFont('Poppins',
                        fontSize: sm, color: statusOrange),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 340.w,
              height: 460.h,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              decoration: BoxDecoration(
                  color: neutralWhite,
                  borderRadius: BorderRadius.circular(18.r)),
              child: Column(
                children: [
                  const ComponentButtons(
                    icons: Icons.person,
                    title: 'Edit Profile',
                    ontap: null,
                  ),
                  const ComponentButtons(
                    icons: Icons.location_on,
                    title: 'Address',
                    ontap: null,
                  ),
                  const ComponentButtons(
                    icons: Icons.notifications,
                    title: 'Notifications',
                    ontap: null,
                  ),
                  const ComponentButtons(
                    icons: Icons.shield,
                    title: 'Security',
                    ontap: null,
                  ),
                  const ComponentButtons(
                    icons: Icons.language,
                    title: 'Language',
                    ontap: null,
                  ),
                  const ComponentButtons(
                    icons: Icons.lock,
                    title: 'Privacy Policy',
                    ontap: null,
                  ),
                  const Spacer(),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                    decoration: BoxDecoration(
                        color: statusRedSecondary,
                        borderRadius: BorderRadius.circular(4.r)),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.logout,
                          color: statusRed,
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Text('Logout',
                            style: GoogleFonts.getFont('Poppins',
                                fontSize: ml, color: statusRed)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ComponentButtons extends StatelessWidget {
  const ComponentButtons(
      {super.key,
      required this.icons,
      required this.title,
      required this.ontap});
  final IconData icons;
  final String title;
  final Function? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap as void Function()?,
      child: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 4.w,
              ),
              Icon(
                icons as IconData?,
                color: neutralGray,
              ),
              SizedBox(
                width: 12.w,
              ),
              Text(title,
                  style: GoogleFonts.getFont('Poppins',
                      fontSize: ml, color: neutralBlack)),
              const Spacer(),
              const Icon(
                Icons.navigate_next_rounded,
                color: neutralGray,
              )
            ],
          ),
          SizedBox(
            height: 6.h,
          ),
          const Divider(
            color: primaryBGColor,
          )
        ],
      ),
    );
  }
}
