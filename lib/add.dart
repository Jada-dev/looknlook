import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:looknlook/main.dart';

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  PageController _pageController =
      PageController(initialPage: 1, viewportFraction: 0.2);
  int _selectedTab = 1;

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          _buildCameraPreview(),
          Container(
            color: Colors.red,
            child: _buildCameraTemplateSelector(),
          )
        ],
      ),
    );
  }

  Widget _buildCameraPreview() {
    final style = Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold);
    return Container(
      color: Colors.grey,
      height: MediaQuery.of(context).size.height - 90,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 75, left: 24, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // GestureDetector(
                //     onTap: () => {
                //           Navigator.pop(context),
                //         },
                //     child: Icon(
                //       Icons.close,
                //       color: Colors.white,
                // //     )),
                // Container(
                //   padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                //   decoration: BoxDecoration(
                //     color: Colors.black.withOpacity(0.25),
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                // child: Row(
                //   children: [
                //     Padding(
                //       padding: const EdgeInsets.symmetric(horizontal: 3.0),
                //       child: Icon(
                //         CupertinoIcons.music_note_2,
                //         color: Colors.white,
                //         size: 15,
                //       ),
                //     ),
                //     Text(
                //       "Add sound",
                //       style: Theme.of(context).textTheme.bodyText1!.copyWith(
                //           fontSize: 14,
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold),
                //     )
                //   ],
                // ),
                // ),
                // Container(
                //   height: MediaQuery.of(context).size.height / 3.25,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Widget_buildIconWithText(Icons.flip, 'flip', style, 20),
                //       Widget_buildIconWithText(
                //           Icons.baby_changing_station, 'beauty', style, 20),
                //       Widget_buildIconWithText(
                //           Icons.filter, 'filter', style, 20),
                //       Widget_buildIconWithText(
                //           Icons.flash_on, 'flash', style, 20)
                //     ],
                //   ),
                // )
              ],
            ),
          ),
          Spacer(),
          _buildCameraTypeSelector(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30, top: 10, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Widget_buildIconWithText(Icons.sentiment_satisfied_outlined,
                    'Effects', style.copyWith(fontSize: 15), 35),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                  ),
                ),
                Widget_buildIconWithText(
                    Icons.photo_size_select_actual_outlined, 'Upload', style.copyWith(fontSize: 15), 40),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCameraTypeSelector() {
    final List<String> cameraType = ["Photo", "Video"];
    TextStyle style = Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal);

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 65,
          height: 25,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        Container(
          height: 45,
          child: PageView.builder(
              controller: _pageController,
              itemCount: cameraType.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Text(
                    cameraType[index],
                    style: style.copyWith(color: Colors.white),
                  ),
                );
              }),
        ),
      ],
    );
  }

  Widget_buildIconWithText(
      IconData icon, String label, TextStyle style, double size) {
    return Column(
      children: [
        //SvgPicture.asset('assets/$icon.svg', height: size,),

        Icon(
          icon,
          color: Colors.red,
          size: 15,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: style,
        )
      ],
    );
  }

  Widget _buildCameraTemplateSelector() {
    final List<String> posyTypes = ["Camera", "Quick", "Templates"];
    TextStyle style = Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 45,
          child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) => {
                    setState(() {
                      _selectedTab = page;
                    })
                  },
              itemCount: posyTypes.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: Text(
                    posyTypes[index],
                    style: style.copyWith(
                        color:
                            _selectedTab == index ? Colors.white : Colors.grey),
                  ),
                );
              }),
        ),
        Container(
          width: 50,
          height: 45,
          alignment: Alignment.bottomCenter,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 2.5,
          ),
        )
      ],
    );
  }
}
