import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/widgets/custom_drop_down_button.dart';
import 'dart:ui'; 
import 'package:video_player/video_player.dart';

late double _deviceHeight, _deviceWidth;
late VideoPlayerController _controller;

 
class HomePage extends StatelessWidget {
  const HomePage({super.key});

 @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    
    return Scaffold
    (
       body: Container
       ( // Add this Container
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/swimming-astronaut-dark.jpg"), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),

      
      
      child: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  _bookRideWidget(),
                ],
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: _astroImageWidget(),
              // ),
            ],
          ),
        ),
      ),
       ),
    );
  }

  Widget _pageTitle() {
    return const Text("#Go Moon",
        style: TextStyle(
            color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800));
  }

  Widget _astroImageWidget() // underscore is used because it is private. that means we cannot use it outside of this class.
  {
    return Container(
      decoration: const BoxDecoration(
        // color: Colors.red,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              "assets/images/sci-fi-astronaut-jellyfish-space-hd-wallpaper-preview.jpg"),
        ),
      ),
      //  Apply blur effect to the background image
      // child: BackdropFilter
      // (
      //   filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3), // Adjust the sigma values for blur intensity
      //   child: Container
      //   (
      //     color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2), // Adjust opacity as needed
      //   ),
      // ),
    );
  }

  // Widget _destinationDropDownWidget()
  // {
  //   List<DropdownMenuItem> _items = [
  //     "hello ", "earth statin"
  //   ]
  //   return Container(
  //     child : DropdownButton(
  //       onChanged: (_) {},

  //       ),
  //   )
  // }/*  */

  Widget _destinationDropDownWidget() {
    return CustomDropDownButtonClass(
        values: const ['hello', 'earth station'], width: _deviceHeight);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonClass(
            values: const ['1', '3', '5', '6'], width: _deviceWidth * 0.4),
        CustomDropDownButtonClass(
            values: const ["welcome", "moonland"], width: _deviceWidth * 0.40)
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton()
        ],
      ),
    );
  }

   Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: const Text(
          "Book Ride!",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }


}
