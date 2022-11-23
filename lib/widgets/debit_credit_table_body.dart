import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class Reusable_debit_credit_table_body extends StatelessWidget {
  String? heading;
  String? companyName;
  String? supplierName;
  String? costOfList;

  Reusable_debit_credit_table_body(
      {Key? key,
      this.heading,
      this.companyName,
      this.supplierName,
      this.costOfList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading!,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
        ),
        Container(
          width: 180,
          child: Text(
            companyName!,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 10, color: Colors.white),
          ),
        ),
        Container(
          width: 180,
          child: Text(
            supplierName!,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 10, color: Colors.white),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 180,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                CommunityMaterialIcons.currency_bdt,
                size: 22,
                color: Colors.white,
              ),
              Text(
                costOfList!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          height: 20,
          thickness: 1.2,
          indent: 2,
          endIndent: 10,
          color: Colors.white.withOpacity(0.6),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
