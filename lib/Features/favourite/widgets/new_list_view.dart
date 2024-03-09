import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide_app/Features/favourite/controller/favourite_cubit.dart';
import 'package:guide_app/Features/favourite/widgets/list_name_form_filed.dart';
import 'package:guide_app/Features/favourite/widgets/save_list_name_button.dart';
import 'package:guide_app/core/uitls/values_manager.dart';

class NewListView extends StatelessWidget {
  const NewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavouriteCubit(),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: HightManager.h16),
            LsitNameTextFormFiled(),
            SizedBox(height: HightManager.h8),
            SaveListNameButton(),
            SizedBox(height: HightManager.h16),
          ],
        ),
      ),
    );
  }
}
