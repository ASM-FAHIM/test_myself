import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class Total_DebitCreditField extends StatelessWidget {
  String? grandTotal;
  Total_DebitCreditField({Key? key, this.grandTotal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  width: 180,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CommunityMaterialIcons.currency_bdt,
                        size: 22,
                        color: Colors.white,
                      ),
                      Text(
                        grandTotal!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  width: 180,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CommunityMaterialIcons.currency_bdt,
                        size: 22,
                        color: Colors.white,
                      ),
                      Text(
                        grandTotal!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
