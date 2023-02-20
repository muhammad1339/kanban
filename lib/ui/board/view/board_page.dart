import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kanban/data/model/model.dart';
import 'package:kanban/ui/board/components/board_item.dart';
import 'package:uuid/uuid.dart';

import '../../../data/utils/hive_config.dart';
import '../../_shared/utils/popups.dart';
import '../../_shared/utils/utils.dart';
import '../../_shared/widgets/widgets.dart';
import '../cubit/board_cubit.dart';

class BoardPage extends StatelessWidget {
  BoardPage({super.key});
  final TextEditingController _boardNameController = TextEditingController();
  final uuid = const Uuid();

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
              elevation: 1,
              backgroundColor: AppColors.color_008AF1,
              title: Text(
                "Boards",
                style: AppTextStyles.titleStyle.copyWith(color: AppColors.white),
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 16.h,
                ),
                CustomButton(
                  text: "Add new board",
                  leading: SvgPicture.asset(
                    KSvgIcons.add,
                    height: 24,
                  ),
                  action: () {
                    showAddNewBoardDialog(context);
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                Expanded(
                  child: ValueListenableBuilder(
                    valueListenable: Hive.box(HiveConfig.boardBox).listenable(),
                    builder: (BuildContext context, value, Widget? child) => ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsetsDirectional.fromSTEB(12.w, 16.h, 12.w, 16.h),
                      itemBuilder: (BuildContext context, int index) {
                        return BoardItem(
                          label: (value.getAt(index) as Board).name ?? "",
                          context: context,
                          onTap: () {},
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) => SizedBox(height: 12.h),
                      itemCount: value.length,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void showAddNewBoardDialog(BuildContext context) {
    _boardNameController.clear();
    showPopup(
      context: context,
      childContent: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildDialogHeader(
            title: "Add New Board",
            closeAction: () {
              Navigator.of(context).pop();
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextField(
              label: "board name",
              controller: _boardNameController,
              inputType: TextInputType.text,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
              text: "Add",
              action: () {
                Box box = Hive.box(HiveConfig.boardBox);
                final board = Board(id: uuid.v1(), name: _boardNameController.text);
                box.add(board);
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
