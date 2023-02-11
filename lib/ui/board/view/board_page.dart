import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../_shared/utils/utils.dart';
import '../cubit/board_cubit.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BoardCubit(),
      child: BlocConsumer<BoardCubit, BoardState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.white,
            appBar: AppBar(
              title: Text(
                "Boards",
                style: AppTextStyles.titleStyle.copyWith(),
              ),
            ),
            body: Column(
              children: [
                Text(
                  "Boards",
                  style: AppTextStyles.titleStyle.copyWith(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
