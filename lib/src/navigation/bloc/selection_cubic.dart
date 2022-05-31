import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_exp.dart';


class SelectionCubit extends Cubit<Selection> {
  SelectionCubit() : super(Selection());

  void selectNav(NavBean navBean){
    if (navBean.isLeft) {
      final int activeNavId = state.activeLeftNavId;
      if (activeNavId == navBean.id && activeNavId != 0) {
        emit(state.copyWith(activeLeftNavId: 0));
      } else {
        emit(state.copyWith(activeLeftNavId: navBean.id));
      }
    }

    if (navBean.isRight) {
      final int activeRightNavId = state.activeRightNavId;
      if (activeRightNavId == navBean.id && activeRightNavId != 0) {
        emit(state.copyWith(activeRightNavId: 0));
      } else {
        emit(state.copyWith(activeRightNavId: navBean.id));

      }
    }
  }


  void selectTab(int index){
    emit(state.copyWith(activeTabIndex: index));
  }

}