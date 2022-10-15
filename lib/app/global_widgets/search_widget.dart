import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchWidget extends StatefulWidget {
  final Color color;
  final ValueChanged<String> onChanged;
  final String hintText;
  final bool hasBorder;

  const SearchWidget({
    Key? key,
    required this.onChanged,
    required this.hintText,
    required this.color,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle styleActive = Get.isDarkMode
        ? const TextStyle(color: Colors.white)
        : const TextStyle(color: Colors.black);
    TextStyle styleHint = Get.isDarkMode
        ? const TextStyle(color: Colors.white54)
        : const TextStyle(color: Colors.black54);
    final style = controller.text.isEmpty ? styleHint : styleActive;
    return Container(
      height: 50.h /*MediaQuery.of(context).size.height * 0.06*/,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: widget.color,
        border: widget.hasBorder ? Border.all(color: Colors.black26) : null,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          isDense: Get.size.height < 550 ? true : false,
          icon: Icon(
            Icons.search,
            color: style.color,
            size: 25.r,
          ),
          suffixIcon: controller.text.isNotEmpty
              ? GestureDetector(
                  child: Icon(
                    Icons.close,
                    color: style.color,
                    size: 25.r,
                  ),
                  onTap: () {
                    controller.clear();
                    widget.onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                    setState(() {});
                  },
                )
              : null,
          // isDense: true,
          alignLabelWithHint: true,
          hintText: widget.hintText,
          hintStyle: styleHint,
          border: InputBorder.none,
        ),
        style: style,
        onChanged: (value) {
          setState(() {});
          widget.onChanged(value);
        },
      ),
    );
  }
}
