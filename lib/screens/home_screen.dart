import 'package:eshopbackend/blocs/profile/profile_bloc.dart';
import 'package:eshopbackend/features/blocs/user/user_bloc.dart';
import 'package:eshopbackend/features/blocs/user/user_event.dart';
import 'package:eshopbackend/features/screens/signup/signup_screen.dart';
import 'package:eshopbackend/screens/actualite/blocs/actualite_bloc.dart';
import 'package:eshopbackend/screens/actualite/blocs/actualite_event.dart';
import 'package:eshopbackend/screens/clients/list_clients/screens/listeclients_screen.dart';
import 'package:eshopbackend/screens/coachs/coach_screen.dart';
import 'package:eshopbackend/screens/products_screen.dart';
import 'package:eshopbackend/screens/reservation/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/get_core.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Administration',
              style: TextStyle(color: Colors.blue)),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      BlocProvider.of<UserBloc>(context).add(LoadUsers());
                      Get.to(() => const CartScreen());
                    },
                    child: const Card(
                      color: Colors.orange,
                      child: Center(
                          child: Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/clt.png'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Gérer  Clients',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      )),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      Get.to(() => OrdersScreen());
                    },
                    child: const Card(
                      color: Colors.orange,
                      child: Center(
                          child: Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/location.png'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Gérer Locations',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      )),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      print("act");
                      BlocProvider.of<ActualiteBloc>(context)
                          .add(const LoadActualite());

                      Get.to(() => ActualitesScreen());
                    },
                    child: const Card(
                      color: Colors.orange,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/prop.jpg'),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Center(
                              child: Text('Gérer Propriétés',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ))),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
