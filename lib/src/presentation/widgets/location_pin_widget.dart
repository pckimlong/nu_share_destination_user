import 'package:flutter/material.dart';

import '../_core/app_styles.dart';

class LocationPinWidget extends StatelessWidget {
  const LocationPinWidget({
    Key? key,
    required this.isLoading,
  }) : super(key: key);

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    const backgroundColor = AppColors.primaryColor;
    const borderColor = Colors.white;
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
        width: 50,
        height: 46,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 3),
                height: 20,
                width: 4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1.5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 0.4,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: borderColor,
                  ),
                  color: backgroundColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 0.4,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    if (isLoading)
                      const CircularProgressIndicator(
                        color: Colors.blueAccent,
                        strokeWidth: 3,
                      ),
                    Center(
                      child: Container(
                        width: 12,
                        height: 12,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // return const Center(
    //   child: Icon(
    //     Icons.location_on,
    //     color: AppColors.primaryColor,
    //     size: 58,
    //   ),
    // );
  }
}
