import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class Custom_RowButtons extends StatelessWidget {
  const Custom_RowButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.green),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Approve',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Icon(
                CommunityMaterialIcons.check_decagram,
                size: 20,
                color: Colors.white.withOpacity(0.5),
              ),
            ],
          ),
        ),
        Container(
          height: 50,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.red),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Reject',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Icon(
                CommunityMaterialIcons.alert_octagon,
                size: 20,
                color: Colors.white.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
