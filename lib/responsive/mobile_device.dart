import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileDevice extends StatelessWidget {
  const MobileDevice({super.key});

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
              left: 20,
              right: 20,
              top: 20,
              bottom: 1,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.22,
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
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "What type of service do you want?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customContainer("Short - term", context),
                customContainer("Long - term", context),
                customContainer("Transitional Visit", context),
              ],
            ),
          ),
          customHeader("Services we offer"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(6, (index) {
                return Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          child: Image.asset(
                            servicesImage[index],
                            fit: BoxFit.cover,
                            height: MediaQuery.of(context).size.height * 0.15,
                          ),
                        ),
                        Text(
                          services[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.pink,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20,
            ),
            child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.05,
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 15),
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Image.asset('lib/assets/8.png'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Certified and trained staff to assist you.",
                          maxLines: 2,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "1000+ customers have taken our services.",
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 9.sp,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  bottom: 10,
                ),
                child: customBox("Priyansha", context, 'lib/assets/11.jpeg'),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                  bottom: 10,
                ),
                child: customBox("Hardik Gupta", context, 'lib/assets/12.jpeg'),
              ),
            ],
          ),
          customHeader("Trending Articles"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                child: trendingContainer(
                    "Sports Article", context, 'lib/assets/9.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, bottom: 20),
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
    width: MediaQuery.of(context).size.width * 0.425,
    height: MediaQuery.of(context).size.height * 0.2,
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
          height: MediaQuery.of(context).size.height * 0.1,
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
              fontSize: 7.sp,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Text(
            "Sorem ipsum dolor sit amet, consecter adipiscing elit.",
            style: TextStyle(
              fontSize: 5.sp,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget customBox(String name, BuildContext context, String imageName) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.17,
    width: MediaQuery.of(context).size.width * 0.425,
    decoration: BoxDecoration(
      border: Border(
        right: BorderSide(color: Colors.grey.shade200),
        bottom: BorderSide(color: Colors.grey.shade200),
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(imageName),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 10.sp,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "4.3",
                          style: TextStyle(
                            fontSize: 7.sp,
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
                  width: MediaQuery.of(context).size.width * 0.2,
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
                        size: 10.sp,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Text(
                    "Covid Care | General Care",
                    style: TextStyle(
                      fontSize: 7.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  "General Care | Diagnosis",
                  style: TextStyle(
                    fontSize: 7.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height * 0.03,
          width: MediaQuery.of(context).size.width * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.pink,
          ),
          child: Text(
            "View",
            style: TextStyle(
              fontSize: 7.sp,
            ),
          ),
        )
      ],
    ),
  );
}

Widget customContainer(String title, BuildContext context) {
  return Container(
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height * 0.05,
    width: MediaQuery.of(context).size.width * 0.25,
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
        fontSize: 12.sp,
        color: Colors.pink,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget customHeader(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w900,
          ),
        ),
        const Text(
          "View all",
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.pink,
            decoration: TextDecoration.underline,
            decorationColor: Colors.pink,
            decorationThickness: 1.2,
          ),
        ),
      ],
    ),
  );
}
