
import 'package:flutter/cupertino.dart';

import 'constants/colors.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text('Cappucino',
          style: TextStyle(
              fontSize: 16,
              color: AppColors.colorWhiteHighEmp
          ),
        ),
      ),
    );
  }
}
