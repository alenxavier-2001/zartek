import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartec/application/home/home_bloc.dart';

import 'package:zartec/core/constants/colors.dart';

import '../../domain/home/home_model/home_model.dart';

const img =
    "https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000";
List<HomeModel> cart = [];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(const LoadDataInHome());
    });
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawerScrimColor: Colors.transparent,
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            actions: [],
            bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: kGreyColor,
                unselectedLabelStyle: TextStyle(
                    fontSize: width / 21, fontWeight: FontWeight.bold),
                labelColor: kPink,
                indicatorColor: kPink,
                labelStyle: TextStyle(
                    fontSize: width / 20, fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "Salads and Soup",
                  ),
                  Tab(
                    text: "From The Barnyard",
                  ),
                  Tab(
                    text: "Salads and Soup",
                  ),
                ])),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(255, 157, 240, 134),
                        Colors.green,
                      ],
                    )),
                child: Center(
                  child: Text(
                    "HBJHJshjbs",
                    style: TextStyle(
                        fontSize: width / 21, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: width / 23,
                      fontWeight: FontWeight.w600),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              } else if (state.hasError) {
                return const Text("Error while getting data");
              } else if (state.homeData.isEmpty) {
                return const Text("List  is empty data");
              }
              return ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Divider(
                      height: 1.5,
                      thickness: 1,
                      color: Colors.black,
                    );
                  },
                  itemCount: state.homeData.length,
                  itemBuilder: (context, index) {
                    final product = state.homeData[index];
                    return ListTile(
                      leading: IconButton(
                          onPressed: () {
                            cart.add(product);
                          },
                          icon: const Icon(Icons.select_all)),
                      title: Text(
                        product.dishName.toString(),
                        style: TextStyle(
                            fontSize: width / 21, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "INR ${product.dishPrice}",
                                style: TextStyle(
                                    fontSize: width / 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Spacer(),
                              Text(
                                "${product.dishCalories} Calories",
                                style: TextStyle(
                                    fontSize: width / 22,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height / 50,
                          ),
                          Text(
                            product.dishDescription.toString(),
                            style: const TextStyle(color: Colors.grey),
                          ),
                          Padding(
                            padding: EdgeInsets.all(width / 60),
                            child: Container(
                              width: width / 2.5,
                              height: height / 15,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.minimize,
                                          )),
                                    ],
                                  ),
                                  Text("0"),
                                  IconButton(
                                      onPressed: () {}, icon: Icon(Icons.add)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      trailing: Image.network(
                        img,
                        fit: BoxFit.cover,
                        height: height / 4,
                        width: width / 4,
                      ),
                    );
                  });
            },
          ),
          Container(
            child: Text("sjbbsasdsd"),
          ),
          Container(
            child: Text("eddsjbbd"),
          ),
        ]),
      ),
    );
  }
}
