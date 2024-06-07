import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_for_you_app/ui/widgets/loader_screen/loader_view_cubit.dart';
import 'package:game_for_you_app/ui/widgets/main_screen/users.screen.dart';
import 'package:provider/provider.dart';
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
    context.read<LoaderViewCubit>().progressLoadDate();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<LoaderViewCubit>();
    return BlocListener<LoaderViewCubit, LoaderViewCubitState>(
        listener: (context, percent) {
          if (cubit.state.currentPercent <= 100) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => UsersScreenWidget()));
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
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 65),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'Games for you',
                            style: TextStyle(
                              letterSpacing: 10,
                              fontWeight: FontWeight.w600,
                              fontSize: 40,
                              color: Colors.white,
                            ),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 40),
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: RadialPercentWidget(
                              fillColor: Color.fromRGBO(127, 117, 174, 0),
                              percent: cubit.state.currentPercent / 100,
                              lineColor: Color.fromRGBO(240, 117, 195, 9),
                              lineWidth: 10,
                              freeColor: Color.fromRGBO(68, 76, 117, 1),
                              child: BlocBuilder<LoaderViewCubit,
                                      LoaderViewCubitState>(
                                  builder: (context, percent) {
                                    final percent = cubit.state.currentPercent.toString();
                                return Text(
                                  '$percent%',

                                  style: const TextStyle(
                                      fontSize: 35, color: Colors.white),
                                );
                              }),
                            ),
                          ))
                    ],
                  ))),
        ));
  }
}
