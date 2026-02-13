import 'package:flutter/material.dart';

class ChoseIconItem extends StatelessWidget {
  const ChoseIconItem({
    required this.icon,
    required this.isSelected,
    super.key,
  });
  final bool isSelected;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .0515021459227468,

      decoration: ShapeDecoration(
        color: isSelected ? const Color(0x190D7E5E) : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: isSelected
                ? const Color(0xFF0D7E5E)
                : const Color(0x1E0D7E5E),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Icon(
        icon,
        // color: Color(0xff1A1A1A),
      ),
    );
  }
}
