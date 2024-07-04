import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reminder_app/cubit/user_cubit.dart';


class SoonSearchField extends StatelessWidget {
  const SoonSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
            
          },
      decoration: InputDecoration(
        labelText: 'Search....',
        hintText: 'Search',
        prefixIcon: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            //context.read<UserCubit>().search();
          },
        ),
        suffixIcon:IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            context.read<UserCubit>().clearSearch();
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF295c82)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}