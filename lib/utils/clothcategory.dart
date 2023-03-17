import 'package:flutter/material.dart';

class ClothingCategories extends StatefulWidget {
  @override
  _ClothingCategoriesState createState() => _ClothingCategoriesState();
}

class _ClothingCategoriesState extends State<ClothingCategories> {
  String selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildCategoryButton('Sweater'),
              SizedBox(width: 6),
              _buildCategoryButton('Jacket & Coat'),
              SizedBox(width: 6),
              _buildCategoryButton('Dress'),
              SizedBox(width: 6),
              _buildCategoryButton('Shirt'),
            ],
          ),
          SizedBox(height: 7),
          Row(
            children: [
              _buildCategoryButton('Blouse'),
              SizedBox(width: 5),
              _buildCategoryButton('Trousers & Shorts'),
              SizedBox(width: 5),
              _buildCategoryButton('Accessories'),
            ],
          ),
          SizedBox(height: 7),
          Row(
            children: [
              _buildCategoryButton('Other'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCategoryButton(String category) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: selectedCategory == category ? Color(0xff297C8F) : Colors.grey,
        ),
        color: selectedCategory == category ? Color(0xff297C8F) : Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: () {
          setState(() {
            selectedCategory = category;
          });
        },
        child: Text(category,
            style: TextStyle(
                color: selectedCategory == category
                    ? Colors.white
                    : Color(0xffAEAEAE))),
      ),
    );
  }
}
