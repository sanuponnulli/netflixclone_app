import 'package:flutter/material.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/core/constants.dart';
import 'package:netflixclone/presentation/home/widgets/custom_button.dart';

class ComingSoonwidget extends StatelessWidget {
  const ComingSoonwidget({
    Key? key,
  }) : super(key: key);

  // final  size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 500,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("FEB"),
              Text(
                "11",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    //color: Colors.amber,
                    width: double.infinity,
                    height: 200,
                    child: Image.network(
                      "https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/wiE9doxiLwq3WCGamDIOb2PqBqc.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black.withOpacity(.5),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off,
                            size: 30,
                            color: kwhitecolor,
                          )),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    "TALL GIRL",
                    style: TextStyle(
                        letterSpacing: -5,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      Custombutton(
                        icon: Icons.all_out_sharp,
                        title: "Remind Me",
                        textsize: 12,
                        iconsize: 20,
                      ),
                      kwidth,
                      kwidth,
                      Custombutton(
                        icon: Icons.info,
                        title: "info",
                        textsize: 12,
                        iconsize: 20,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              kheight,
              const Text("Coming on friday"),
              kheight,
              const Text("Tall girl 2"),
              kheight,
              const Text("hdfjhsbdjhsgdfsdhgbfhsdgjh")
            ],
          ),
          //color: Colors.blue,
        )
      ],
    );
  }
}
