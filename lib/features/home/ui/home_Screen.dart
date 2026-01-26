
import 'package:doctors/core/helpers/spacing_helper.dart';
import 'package:doctors/features/home/ui/widgets/doctor_blue_box.dart';
import 'package:doctors/features/home/ui/widgets/doctor_speciality_and_see_all.dart';
import 'package:doctors/features/home/ui/widgets/home_listes_bloc_builder.dart';
import 'package:doctors/features/home/ui/widgets/home_top_app_bar.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            children: [
             const  HomeTopAppBar(),
              const DoctorBlueBox(),
              verticalSpacing(24),
              const DoctorSpecialityAndSeeAll(),
              verticalSpacing(18),
              HomeListesBlocBuilder()
            
           
        
              
              
            ],
          )),
      ),
    );
  }
}
