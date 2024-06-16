import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_for_you_app/ui/navigation/main_navigation.dart';
import 'package:game_for_you_app/ui/widgets/loader_screen/cubit/loader_view_cubit.dart';
import 'package:provider/provider.dart';
import '../../../constant/color.dart';
import '../../../constant/style.dart';
import '../elements/radial_percent_widget.dart';

class LoaderWidget extends StatefulWidget {
  const LoaderWidget({super.key});

  @override
  _LoaderWidgetState createState() => _LoaderWidgetState();
}

class _LoaderWidgetState extends State<LoaderWidget> {
  @override
  void initState() {
    super.initState();
    context.read<LoaderViewCubit>().startLoading();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<LoaderViewCubit>();
    return BlocListener<LoaderViewCubit, LoaderViewCubitState>(
        listener: (context, percent) {
          if (cubit.state.currentPercent == 100) {
            Navigator.of(context)
                .pushNamed(MainNavigationRouteNames.usersScreen);
          }
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('images/background_of_gradient_lights.jpeg'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 65),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Games for you',
                            style: Styles.textLoaderWidget,
                          )),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40),
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: RadialPercentWidget(
                              fillColor: AspinsColors.fillColor,
                              percent: cubit.state.currentPercent / 100,
                              lineColor: AspinsColors.lineColor,
                              lineWidth: 10,
                              freeColor: AspinsColors.freeColor,
                              child: BlocBuilder<LoaderViewCubit,
                                      LoaderViewCubitState>(
                                  builder: (context, percent) {
                                final percent =
                                    cubit.state.currentPercent.toString();
                                return Text(
                                  '$percent%',
                                  style: Styles.textPercent,
                                );
                              }),
                            ),
                          ))
                    ],
                  ))),
        ));
  }
}
