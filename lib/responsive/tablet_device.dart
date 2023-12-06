
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabletDevice extends StatelessWidget {
  const TabletDevice({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> services = [
      "General Care",
      "Covid Care",
      "Elder Care",
      "ICU at HOME",
      "Vaccination",
      "Diagnosis",
    ];

    List<String> servicesImage = [
      "lib/assets/2.png",
      "lib/assets/3.png",
      "lib/assets/4.png",
      "lib/assets/5.png",
      "lib/assets/6.png",
      "lib/assets/7.png",
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              right: 100,
              top: 20,
              bottom: 20,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'lib/assets/1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              right: 100,
              top: 0,
              bottom: 20,
            ),
            child: Text(
              "What type of service do you want?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 6.sp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              right: 100,
              top: 0,
              bottom: 20,
            ),
            child: Row(
              children: [
                customContainer("Short - term", context),
                SizedBox(width: 10.sp),
                customContainer("Long - term", context),
                SizedBox(width: 10.sp),
                customContainer("Transitional Visit", context),
              ],
            ),
          ),
          customHeader("Services we offer"),
          Padding(
            padding: EdgeInsets.only(
              left: 100,
              right: 100,
              top: 20,
              bottom: 0,
            ),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Container(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          servicesImage[index],
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * 0.4,
                        ),
                      ),
                      Text(
                        services[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.w400,
                          fontSize: 5.sp,
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              right: 100,
              top: 20,
              bottom: 20,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.pink,
                ),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 5,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.pink,
                    ),
                  ),
                  Text("Search for staff.."),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 100,
              right: 100,
              top: 0,
              bottom: 20,
            ),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.22,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Image.asset('lib/assets/8.png'),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Certified and trained staff to assist you.",
                          maxLines: 2,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 6.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "1000+ customers have taken our services.",
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 5.sp,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          customHeader("Staff near you"),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 100,
                  bottom: 20,
                  top: 20,
                ),
                child: customBox("Priyansha", context, 'lib/assets/11.jpeg'),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Padding(
                padding: const EdgeInsets.only(
                  right: 100,
                  bottom: 20,
                  top: 20,
                ),
                child: customBox("Hardik Gupta", context, 'lib/assets/12.jpeg'),
              ),
            ],
          ),
          customHeader("Trending Articles"),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 100,
                  bottom: 50,
                  top: 50,
                ),
                child: trendingContainer(
                    "Sports Article", context, 'lib/assets/9.png'),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Padding(
                padding: const EdgeInsets.only(
                  right: 100,
                  bottom: 50,
                  top: 50,
                ),
                child: trendingContainer(
                    "Nutrition", context, 'lib/assets/10.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget trendingContainer(String title, BuildContext context, String imageName) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.3,
    height: MediaQuery.of(context).size.height * 0.25,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey.shade300,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageName,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0, top: 5),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 6.sp,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Text(
            "Sorem ipsum dolor sit amet, consecter adipiscing elit.",
            style: TextStyle(
              fontSize: 4.sp,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget customBox(String name, BuildContext context, String imageName) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.38,
    width: MediaQuery.of(context).size.width * 0.33,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.h),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 10.sp,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(imageName),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Text(
                            "4.3",
                            style: TextStyle(
                              fontSize: 5.sp,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.18,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Icon(
                          Icons.verified_user_outlined,
                          color: Colors.blue,
                          size: 7.sp,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      "Covid Care | General Care",
                      style: TextStyle(
                        fontSize: 4.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    "General Care | Diagnosis",
                    style: TextStyle(
                      fontSize: 4.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.pink,
            ),
            child: const Text("View"),
          )
        ],
      ),
    ),
  );
}

Widget customContainer(String title, BuildContext context) {
  return Container(
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height * 0.06,
    width: MediaQuery.of(context).size.width * 0.148,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(
        color: Colors.pink,
      ),
    ),
    child: Text(
      title,
      maxLines: 2,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 6.sp,
        color: Colors.pink,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget customHeader(String title) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 100,
      right: 100,
      bottom: 0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 6.sp,
          ),
        ),
        Text(
          "View all",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.pink,
            fontSize: 6.sp,
            decoration: TextDecoration.underline,
            decorationColor: Colors.pink,
            decorationThickness: 1.2,
          ),
        ),
      ],
    ),
  );
}
