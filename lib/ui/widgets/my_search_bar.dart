import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;

  const MySearchBar({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: const Color(0xff3A3F47),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 16.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                onChanged: onChanged,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: Color(0xff67686D),
                  ),
                ),
              ),
            ),
            SvgPicture.asset(
              'assets/icons/search.svg',
              colorFilter: const ColorFilter.mode(
                Color(0xff67686D),
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}