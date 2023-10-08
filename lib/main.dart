import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:tune_app/Features/home/Presentation/views/homeView.dart';
import 'package:tune_app/Features/home/Presentation/views/widgets/moreViewBody.dart';
import 'Features/home/data/BlocObserver.dart';
import 'Features/home/data/Cash_helper.dart';
import 'Features/home/data/todocubit/cubit.dart';
import 'Features/home/data/todocubit/states.dart';
import 'core/constant.dart';
import 'generated/l10n.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await CashHelper.init();
  bool? isshared = CashHelper.getbool(key: 'isDark');
  runApp( TuneApp(isshared));
}


class TuneApp extends StatefulWidget {
   TuneApp(this.isshared);

  final bool ? isshared;
  @override
  State<TuneApp> createState() => _TuneAppState();
}

class _TuneAppState extends State<TuneApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider(
            create: (context) {
              return AppCubit()
                ..changedarkmode(
                    fromshared: widget.isshared
                );
            }
        ),
      ],
      child: BlocConsumer<AppCubit,AppState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return MaterialApp(
            locale: Locale(AppCubit.get(context).isAr ? 'ar' : 'en'),

            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              S.delegate,
            ],

            supportedLocales: S.delegate.supportedLocales,

            debugShowCheckedModeBanner: false,

            theme: AppCubit.get(context).isdark ? darkTheme : lightTheme,
           themeMode:  AppCubit.get(context).isdark ?
           ThemeMode.dark :ThemeMode.light,
            home: HomeView(),
          );
        },
      ),
    );
  }
}