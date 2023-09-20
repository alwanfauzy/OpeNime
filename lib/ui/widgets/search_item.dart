import 'package:flutter/material.dart';
import 'package:openime/ui/widgets/svg_text.dart';

class SearchItem extends StatelessWidget {
  final VoidCallback? onClicked;

  const SearchItem({super.key, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _image(context),
            _info(context),
          ],
        ),
      ),
    );
  }

  Widget _image(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      width: 95,
      height: 120,
      margin: const EdgeInsets.only(right: 12),
    );
  }

  Widget _info(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Spiderman",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 14),
          SvgText(
            assetPath: "assets/icons/star.svg",
            text: "Rating",
            color: Color(0xffFF8700),
          ),
          SvgText(
            assetPath: "assets/icons/ticket.svg",
            text: "Genre",
            color: Colors.white,
          ),
          SvgText(
            assetPath: "assets/icons/calendar.svg",
            text: "Release Date",
            color: Colors.white,
          ),
          SvgText(
            assetPath: "assets/icons/clock.svg",
            text: "Duration",
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
