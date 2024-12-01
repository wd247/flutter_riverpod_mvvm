// 1. 관리해야될 상태 클래스 만들기
import 'package:flutter/gestures.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_mvvm/user.dart';
import 'package:flutter_riverpod_mvvm/user_repository.dart';

class HomeState {
  User? user;
  HomeState(this.user);
}

// 2. 뷰모델 만들기. Notifier
class HomeViewModel extends Notifier<HomeState> {
  @override
  HomeState build() {
    return HomeState(null);
  }

  void getUser() async {
    UserRepository userRepository = UserRepository();
    User user = await userRepository.getUser();
    state = HomeState(user);
  }
}

// 3. 뷰모델을 위젯에게 공급해줄 관리자 만들기
final HomeViewModelProvider = NotifierProvider<HomeViewModel, HomeState>(() {
  return HomeViewModel();
});
