import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:responsive_screen/get_responsive_font_size.dart';

class SalonDetails extends StatelessWidget {
  const SalonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final Color? backColor = Colors.grey[50];
    return Scaffold(
      backgroundColor: backColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.dark),
            backgroundColor: backColor,
            elevation: 0,
            pinned: true,
            stretch: true,
            toolbarHeight: 80,
            expandedHeight: MediaQuery.sizeOf(context).height * 1 / 3.05,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/salon.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    left: 16,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'Open',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold, // Text color
                          fontSize: getResponsiveFontSize(context,
                              fontSize: 10), // Text size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              stretchModes: const [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
              ],
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0),
                child: Container(
                    height: 32,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(0),
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: backColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        )),
                    child: const SizedBox.shrink())),
            leadingWidth: double.infinity,
            leading: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: IconButton(
                        padding: EdgeInsets.zero, // Remove extra padding
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  // Centered "Details" text
                  Center(
                    child: Text(
                      "Details",
                      style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 14),
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Share and Favorite buttons aligned to the end (right)
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Shrinks the Row to fit its children
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: IconButton(
                            padding: EdgeInsets.zero, // Remove extra padding
                            icon: const Icon(
                              Icons.share,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {
                              // Share functionality
                            },
                          ),
                        ),
                        SizedBox(width: 10.w),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: IconButton(
                            padding: EdgeInsets.zero, // Remove extra padding
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {
                              // Favorite functionality
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 16,
              ),
              // width: double.infinity,
              decoration: BoxDecoration(
                  color: backColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.r),
                    topRight: Radius.circular(45.r),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Looks salon and spa",
                    style: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 22),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "he1 Al Sad Al Aali, Ad Doqi A, Dokki,",
                        style: TextStyle(
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 10)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "4.6 (320)",
                        style: TextStyle(
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 12),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ReadMoreText(
                    'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                    trimMode: TrimMode.Line,
                    trimLines: 2,
                    colorClickableText: Colors.pink,
                    trimCollapsedText: 'Read more',
                    trimExpandedText: 'Read less',
                    moreStyle: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 10),
                        fontWeight: FontWeight.bold),
                    lessStyle: TextStyle(
                        fontSize: getResponsiveFontSize(context, fontSize: 10),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/hair-cut.png",
                                  height: 20,
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Haircut",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: getResponsiveFontSize(context,
                                          fontSize: 10)),
                                ),
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hair Cut",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: getResponsiveFontSize(context,
                                          fontSize: 14)),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "30 minutes",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: getResponsiveFontSize(
                                        context,
                                        fontSize: 12,
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$ 100 EGP",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: getResponsiveFontSize(context,
                                          fontSize: 12)),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.fromBorderSide(
                                          BorderSide(color: Colors.black))),
                                  height: 15.h,
                                  width: 15.w,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 12)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "\$ 45.00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 14)),
                          ),
                        ],
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              side: WidgetStatePropertyAll(
                                BorderSide(
                                    color: Colors.deepPurpleAccent, width: 2),
                              ),
                              padding: WidgetStatePropertyAll(
                                EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 22.0),
                              ),
                              elevation: WidgetStatePropertyAll(0),
                              backgroundColor:
                                  WidgetStatePropertyAll(Colors.white)),
                          onPressed: () {},
                          child: Text("Continue",
                              style: TextStyle(
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 12),
                              )))
                    ],
                  ),
                )),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20, // Adjust the height as needed
            ),
          ),
        ],
      ),
    );
  }
}
