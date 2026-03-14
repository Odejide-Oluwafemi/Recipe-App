import 'package:flutter/material.dart';
import 'package:recipe_app/constants/app_colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.onBack});

  final void Function() onBack;

  @override
  State<SearchPage> createState() => _SeaarchPageState();
}

class _SeaarchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: widget.onBack,
          style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all(Colors.black),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 50,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: searchController,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                iconColor: Colors.black87,

                hintText: "Search",
                hintStyle: TextStyle(
                  color: AppColors.brandGray,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.brandGray, style: BorderStyle.solid, width: 10),

                )
              ),

            )
          ],
        ),
      ),
    );
  }
}
