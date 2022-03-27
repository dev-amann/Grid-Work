import 'package:flutter/material.dart';
import 'package:grid_work/utils/colors.dart';
import 'package:grid_work/utils/dimension.dart';
import 'package:grid_work/utils/images.dart';
import 'package:grid_work/utils/strings.dart';
import 'package:grid_work/utils/styles.dart';
import 'package:grid_work/views/base/back_view.dart';
import 'package:grid_work/views/base/custom_images.dart';
import 'package:grid_work/views/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hideScreen = false;

  void resetScreen() {
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        hideScreen = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.buttonColor,
        appBar: AppBar(
          backgroundColor: CustomColors.buttonColor,
          leadingWidth: 80,
          toolbarHeight: 80,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                !hideScreen
                    ? Navigator.of(context).push(
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) {
                            return const ProfileScreen();
                          },
                        ),
                      )
                    : () {};
              },
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: CustomColors.secondaryColor)),
                child: const CustomCircleImage(
                  radius: 35,
                  image: Images.faceOne,
                  imageHeight: 70,
                  imageWidth: 70,
                  boxFit: BoxFit.cover,
                  placeholder: "",
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  if (!hideScreen) {
                    setState(() {
                      hideScreen = true;
                    });
                    resetScreen();
                  }
                },
                child: SizedBox(
                  height: 32,
                  width: 32,
                  child: Image.asset(
                    Images.logOut,
                    height: 24,
                    width: 24,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: !hideScreen
            ? BackView(
                screenLayout: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Dimens.marginSizeSmall),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: Text(
                              "Hello👋 Shubham",
                              style: largeTextStyle.copyWith(
                                color: CustomColors.whiteColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.95,
                            child: Text(
                              Str.recommendationsForYou,
                              style: regularTextStyle.copyWith(
                                color: CustomColors.whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Dimens.marginSizeDefault),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                Images.star,
                                height: 18.0,
                                width: 18.0,
                              ),
                              SizedBox(width: Dimens.paddingSizeLarge),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  Str.topFiveConnects,
                                  style: regularTextStyle.copyWith(
                                    color: CustomColors.whiteColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            Str.viewAll,
                            style: regularTextStyle.copyWith(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Dimens.marginSizeDefault),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: 350,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimens.paddingSizeLarge),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: CustomColors.secondaryColor,
                                    border: Border.all(
                                        color: CustomColors.secondaryColor),
                                    borderRadius: BorderRadius.circular(16.0)),
                                height: 350,
                                width: 240,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CustomCircleImage(
                                        radius: 35,
                                        image: Images.faceOne,
                                        imageHeight: 70,
                                        imageWidth: 70,
                                        boxFit: BoxFit.cover,
                                        placeholder: "",
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        child: Text(
                                          "Shyam Sunder",
                                          style: largeTextStyle.copyWith(
                                            color: CustomColors.whiteColor,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        child: Text(
                                          "Makeup Artist",
                                          style: smallTextStyle.copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: Dimens.marginSizeSmall),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        child: Text(
                                          "Looking to get connected with Industry specialist in films and advertisements to provide quality services.",
                                          maxLines: 5,
                                          style: regularTextStyle.copyWith(
                                            color: Colors.white,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.white,
                                        height: 25.0,
                                        thickness: 2.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 110,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "58",
                                                  style:
                                                      largeTextStyle.copyWith(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                Text(
                                                  "Connections",
                                                  style:
                                                      smallTextStyle.copyWith(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 110,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "12",
                                                  style:
                                                      largeTextStyle.copyWith(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                Text(
                                                  "Times referred",
                                                  style:
                                                      smallTextStyle.copyWith(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                          height: Dimens.marginSizeDefault),
                                      Center(
                                        child: SizedBox(
                                          width: 210,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: CustomColors.buttonColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            ),
                                            child: Text(
                                              'Connect',
                                              style: regularTextStyle.copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimens.paddingSizeLarge),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: CustomColors.buttonColor,
                                    border: Border.all(
                                        color: CustomColors.secondaryColor),
                                    borderRadius: BorderRadius.circular(16.0)),
                                height: 350,
                                width: 240,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CustomCircleImage(
                                        radius: 35,
                                        image: Images.faceTwo,
                                        imageHeight: 70,
                                        imageWidth: 70,
                                        boxFit: BoxFit.cover,
                                        placeholder: "",
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        child: Text(
                                          "Roshni Goel",
                                          style: largeTextStyle.copyWith(
                                            color: CustomColors.whiteColor,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        child: Text(
                                          "Makeup Artist",
                                          style: smallTextStyle.copyWith(
                                            color: CustomColors.secondaryColor,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: Dimens.marginSizeSmall),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        child: Text(
                                          "Looking to get connected with Industry specialist in films and advertisements to provide quality services.",
                                          maxLines: 5,
                                          style: regularTextStyle.copyWith(
                                            color: Colors.white,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      const Divider(
                                        color: Colors.white,
                                        height: 25.0,
                                        thickness: 2.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 110,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "52",
                                                  style:
                                                      largeTextStyle.copyWith(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                Text(
                                                  "Connections",
                                                  style:
                                                      smallTextStyle.copyWith(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 110,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "08",
                                                  style:
                                                      largeTextStyle.copyWith(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                                Text(
                                                  "Times referred",
                                                  style:
                                                      smallTextStyle.copyWith(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                          height: Dimens.marginSizeDefault),
                                      Center(
                                        child: SizedBox(
                                          width: 210,
                                          height: 50,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary:
                                                  CustomColors.secondaryColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                            ),
                                            child: Text(
                                              'Connect',
                                              style: regularTextStyle.copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimens.marginSizeDefault),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(
                              Str.peopleYouKnowAreOnGrid,
                              style: regularTextStyle.copyWith(
                                color: CustomColors.whiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            Str.viewAll,
                            style: regularTextStyle.copyWith(
                              color: CustomColors.secondaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Dimens.marginSizeSmall),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 100,
                                  child: Stack(
                                    children: [
                                      const Center(
                                        child: CustomCircleImage(
                                          radius: 35,
                                          image: Images.faceFive,
                                          imageHeight: 70,
                                          imageWidth: 70,
                                          boxFit: BoxFit.cover,
                                          placeholder: "",
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 6.0),
                                          child: Container(
                                            height: 16.0,
                                            width: 42.0,
                                            decoration: BoxDecoration(
                                                color: CustomColors.ratingColor,
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            child: Center(
                                              child: Text(
                                                "25s",
                                                style: smallTextStyle.copyWith(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "Radhika",
                                  style: regularTextStyle.copyWith(
                                    color: CustomColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 100,
                                  child: Stack(
                                    children: [
                                      const Center(
                                        child: CustomCircleImage(
                                          radius: 35,
                                          image: Images.faceTwo,
                                          imageHeight: 70,
                                          imageWidth: 70,
                                          boxFit: BoxFit.cover,
                                          placeholder: "",
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 6.0),
                                          child: Container(
                                            height: 16.0,
                                            width: 42.0,
                                            decoration: BoxDecoration(
                                                color: CustomColors.ratingColor,
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            child: Center(
                                              child: Text(
                                                "1m",
                                                style: smallTextStyle.copyWith(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "Sheetal",
                                  style: regularTextStyle.copyWith(
                                    color: CustomColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 100,
                                  child: Stack(
                                    children: [
                                      const Center(
                                        child: CustomCircleImage(
                                          radius: 35,
                                          image: Images.faceFour,
                                          imageHeight: 70,
                                          imageWidth: 70,
                                          boxFit: BoxFit.cover,
                                          placeholder: "",
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 6.0),
                                          child: Container(
                                            height: 16.0,
                                            width: 42.0,
                                            decoration: BoxDecoration(
                                                color: CustomColors.ratingColor,
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            child: Center(
                                              child: Text(
                                                "2m",
                                                style: smallTextStyle.copyWith(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "Prashant",
                                  style: regularTextStyle.copyWith(
                                    color: CustomColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 100,
                                  child: Stack(
                                    children: [
                                      const Center(
                                        child: CustomCircleImage(
                                          radius: 35,
                                          image: Images.faceThree,
                                          imageHeight: 70,
                                          imageWidth: 70,
                                          boxFit: BoxFit.cover,
                                          placeholder: "",
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 6.0),
                                          child: Container(
                                            height: 16.0,
                                            width: 42.0,
                                            decoration: BoxDecoration(
                                                color: CustomColors.ratingColor,
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            child: Center(
                                              child: Text(
                                                "3m",
                                                style: smallTextStyle.copyWith(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "Rohit",
                                  style: regularTextStyle.copyWith(
                                    color: CustomColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 90,
                                  width: 100,
                                  child: Stack(
                                    children: [
                                      const Center(
                                        child: CustomCircleImage(
                                          radius: 35,
                                          image: Images.faceOne,
                                          imageHeight: 70,
                                          imageWidth: 70,
                                          boxFit: BoxFit.cover,
                                          placeholder: "",
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 6.0),
                                          child: Container(
                                            height: 16.0,
                                            width: 42.0,
                                            decoration: BoxDecoration(
                                                color: CustomColors.ratingColor,
                                                borderRadius:
                                                    BorderRadius.circular(8.0)),
                                            child: Center(
                                              child: Text(
                                                "5m",
                                                style: smallTextStyle.copyWith(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  "Surjeet",
                                  style: regularTextStyle.copyWith(
                                    color: CustomColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Dimens.marginSizeDefault),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                Images.star,
                                height: 18.0,
                                width: 18.0,
                              ),
                              SizedBox(width: Dimens.paddingSizeLarge),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  Str.peopleYouMightBeInterestedIn,
                                  style: regularTextStyle.copyWith(
                                    color: CustomColors.whiteColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: Dimens.marginSizeDefault),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.95,
                        height: 360,
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: 360,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                color: CustomColors.primaryColor,
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    Images.banner,
                                    height: 170,
                                    width: MediaQuery.of(context).size.width *
                                        0.95,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.95,
                                      child: Text(
                                        "Shyam Sunder",
                                        style: largeTextStyle.copyWith(
                                          color: Colors.grey,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.95,
                                      child: Text(
                                        "Makeup Artist",
                                        style: smallTextStyle.copyWith(
                                          color: CustomColors.secondaryColor,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Dimens.marginSizeDefault),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Text(
                                      "Looking to get connected with Industry specialist in films and advertisements to provide quality services.",
                                      maxLines: 5,
                                      style: regularTextStyle.copyWith(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: Dimens.marginSizeSmall),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 180,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "58",
                                              style: largeTextStyle.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                            Text(
                                              "Connections",
                                              style: smallTextStyle.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 180,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "12",
                                              style: largeTextStyle.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                            Text(
                                              "Times referred",
                                              style: smallTextStyle.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 18.0),
                                child: CustomCircleImage(
                                  radius: 50,
                                  image: Images.faceOne,
                                  imageHeight: 100,
                                  imageWidth: 100,
                                  boxFit: BoxFit.cover,
                                  placeholder: "",
                                ),
                              ),
                            ),
                            const Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(right: 12.0, top: 60.0),
                                child: CustomCircleImage(
                                  radius: 20,
                                  image: Images.premium,
                                  imageHeight: 40,
                                  imageWidth: 40,
                                  boxFit: BoxFit.cover,
                                  placeholder: "",
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Container(
                color: Colors.white,
              ),
      ),
    );
  }
}
