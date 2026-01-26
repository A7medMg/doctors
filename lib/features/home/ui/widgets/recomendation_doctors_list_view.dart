
import 'package:doctors/features/home/data/models/specializations_response_model.dart';
import 'package:doctors/features/home/ui/widgets/recomendation_doctor_item_list_view.dart';
import 'package:flutter/material.dart';


class RecommendationDoctorListView extends StatelessWidget {
  final List<Doctors?> doctorsList;
  const RecommendationDoctorListView({super.key,required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList.length,
        itemBuilder: (context,index){
         return RecomendationDoctorItemListView(doctor: doctorsList[index]!,);
        },   
    ));
  }
}