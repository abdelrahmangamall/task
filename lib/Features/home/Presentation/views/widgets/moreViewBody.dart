import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tune_app/core/customAppBar.dart';
import 'package:tune_app/core/styles.dart';
import 'package:tune_app/generated/l10n.dart';
import '../../../../../core/constant.dart';
import '../../../data/todocubit/cubit.dart';
import '../../../data/todocubit/states.dart';

class moreViewBody extends StatefulWidget{
  const moreViewBody({super.key});


  @override
  State<moreViewBody> createState() => _moreViewBodyState();
}


class _moreViewBodyState extends State<moreViewBody>  {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
  listener: (context, state) {

  },
  builder: (context, state) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.
      of(context).size.height *.1,left:7 ,right: 7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                 customAppBar(S.of(context).appBar2),
           Text(S.of(context).title3,style: Styles.textStyle26,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                    Text(S.of(context).txt5,style: Styles.textStyleNormal,),
                     IconButton(
                          icon:Icon(AppCubit.get(context).isdark ?
                         iconOn : iconOff),
           onPressed: () {
             AppCubit.get(context).changedarkmode();
           }
                     ),],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Text(S.of(context).txt6,style: Styles.textStyleNormal,),
            IconButton(onPressed: () {
             AppCubit.get(context).changeLang();}
                , icon:Icon(AppCubit.get(context).isAr ? iconOn : iconOff)
            ),],),
          SizedBox(height: 150,)
        ],
      ),
    );
  },
);
  }
}