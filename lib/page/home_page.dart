import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/cubit/home_cubit.dart';
import 'package:food_delivery_multi_template/localization/locals.dart';
import 'package:food_delivery_multi_template/widget/cuisine_tile.dart';
import 'package:food_delivery_multi_template/widget/loading.dart';
import 'package:food_delivery_multi_template/widget/place_pager_tile.dart';
import 'package:food_delivery_multi_template/widget/showcase.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    final locals = Locals.of(context);

    cubit.load();

    return Scaffold(
      appBar: AppBar(
        title: Text(locals.appName),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is InitialHomeState) {
            return const Loading();
          } else {
            state as LoadedHomeState;

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        child: AspectRatio(
                          aspectRatio: 1.8,
                          child: PageView.builder(
                            pageSnapping: true,
                            itemCount: state.featuredPlaces.length,
                            itemBuilder: (context, index) {
                              final place = state.featuredPlaces[index];
                              return PlacePagerTile(place);
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 126.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.cuisines.length,
                        itemBuilder: (context, index) {
                          final cuisine = state.cuisines[index];
                          return CuisineTile(cuisine: cuisine);
                        },
                      ),
                    ),
                    Showcase(
                      title: locals.recent,
                      places: state.recentPlaces,
                      callback: () {},
                    ),
                    Showcase(
                      title: locals.popular,
                      places: state.popularPlaces,
                      callback: () {},
                    ),
                    Showcase(
                      title: locals.favorite,
                      places: state.favoritePlaces,
                      callback: () {},
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
