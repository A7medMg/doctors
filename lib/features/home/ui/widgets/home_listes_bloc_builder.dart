import 'package:doctors/core/helpers/spacing_helper.dart';
import 'package:doctors/features/home/logic/specialization_cubit.dart';
import 'package:doctors/features/home/logic/specialization_state.dart';
import 'package:doctors/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doctors/features/home/ui/widgets/recomendation_doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeListesBlocBuilder extends StatelessWidget {
  const HomeListesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<SpecializationCubit, SpecializationState>(
                buildWhen: (previous, current) => current is SpecializationLoading
                 || current is SpecializationSuccess|| current is SpecializationError,
                builder: (context,state){
                  
                 return state.maybeWhen(
                  success: (specializationsResponseModel) {
                    var specializationsList = specializationsResponseModel.specializationDataList;
                    return Expanded(
                      child: Column(
                        children: [
                           DoctorSpecialityListView(specializationsList: specializationsList??[],),
                                    
                           verticalSpacing(8),
                            RecommendationDoctorListView(doctorsList:specializationsList?[0]?.doctorsList??[],),
                      
                        ],
                      ),
                    );
                  },


                    loading: (){
                      return SizedBox(
                        height: 100.h,
                        child: const Center(child: CircularProgressIndicator()));
                    },
                    failure: (errorHandler){
                       return const SizedBox.shrink();
                    },
                    orElse: (){
                      return const SizedBox.shrink();
                    });
                })
             ;
  }
}