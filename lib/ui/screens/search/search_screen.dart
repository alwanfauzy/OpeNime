import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openime/ui/widgets/my_search_bar.dart';
import 'package:openime/ui/widgets/search_item.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff242A32),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: const Color(0xff242A32),
            foregroundColor: Colors.white,
            title: const Text("Search"),
            centerTitle: true,
            actions: [
              SvgPicture.asset(
                "assets/icons/info-circle.svg",
                width: 24,
              ),
            ],
          ),
        ),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      children: [
        _search(context),
        _content(context),
      ],
    );
  }

  Widget _search(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: MySearchBar(
        onChanged: (query) => {},
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 24),
        itemBuilder: ((context, index) => const SearchItem()),
        separatorBuilder: ((context, index) => const SizedBox(height: 24)),
        itemCount: 20,
      ),
    );
  }

  Widget _notFound(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/no-results.svg",
              width: 76,
            ),
            const SizedBox(height: 16),
            const Text(
              "We Are Sorry, We Cannot Find The Movie :(",
              style: TextStyle(fontSize: 24, color: Color(0xffEBEBEF)),
              textAlign: TextAlign.center,
            ),
            const Text(
              "Find your movie by Type title, categories, years, etc",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff92929D),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
