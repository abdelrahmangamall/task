import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tune_app/Features/home/data/todocubit/states.dart';
import '../Cash_helper.dart';




class AppCubit extends Cubit<AppState>
{
  AppCubit(): super(IntialAppState());
  static AppCubit get(context)
  {
    return BlocProvider.of(context);
  }



  bool isdark = false;
  void changedarkmode({bool ?fromshared})
  {
    if(fromshared!=null) {
      isdark = fromshared;
      emit(ChangeDarkness());
    }
    else
      {
    isdark=!isdark;
    CashHelper.putbool(key: 'isDark', value: isdark).then((value) {
      emit(ChangeDarkness());
    });

    }
    print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaa${fromshared}');
  }

  bool isAr = false;
  void changeLang({bool ?fromshared})
  {
    if(fromshared!=null) {
      isAr = fromshared;
      emit(ChangeLang());
    }
    else
    {
      isAr=!isAr;
      CashHelper.putbool(key: 'isAr', value: isAr).then((value) {
        emit(ChangeLang());
      });

    }
    print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaa${fromshared}');
  }
}