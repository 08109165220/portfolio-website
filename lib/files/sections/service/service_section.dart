import 'package:flutter/material.dart';

import '../../components/section_title.dart';
import '../../constants.dart';
import '../../models/Service.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ClipRRect(borderRadius: BorderRadius.circular(50),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
          constraints: BoxConstraints(maxWidth: 1110),
          child: Column(
            children: [
              SectionTitle(
                color: Color(0xFFFF0000),
                title: "Service Offerings",
                subTitle: "My Strong Arenas",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    services.length, (index) => ServiceCard(index: index)),
              )
            ],
          ),
        ),
      ),
    );
  }
}