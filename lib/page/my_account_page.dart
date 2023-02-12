import 'package:food_delivery_multi_template/localization/locals.dart';
import 'package:food_delivery_multi_template/widget/bottom_panel_with_button.dart';
import 'package:food_delivery_multi_template/widget/chic_button.dart';
import 'package:food_delivery_multi_template/widget/loading.dart';
import 'package:food_delivery_multi_template/widget/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_multi_template/cubit/my_account_cubit.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MyAccountCubit>();
    final titleLarge = Theme.of(context).textTheme.titleLarge;
    final locals = Locals.of(context);

    cubit.getCustomer();

    return Scaffold(
      appBar: AppBar(
        title: Text(locals.myAccount),
      ),
      body: BlocBuilder<MyAccountCubit, MyAccountState>(
        builder: (context, state) {
          if (state is InitialMyAccountState) {
            return const Loading();
          } else {
            state as LoadedMyAccountState;
            return Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                ListView(
                  padding: const EdgeInsets.all(24.0),
                  children: [
                    const SizedBox(height: 24.0),
                    UserAvatar(image: "assets/${state.customer.image}.jpg"),
                    const SizedBox(height: 24.0),
                    Text(
                      state.customer.fullName,
                      textAlign: TextAlign.center,
                      style: titleLarge,
                    ),
                    const SizedBox(height: 24.0),
                    ChicButton(
                      icon: Icons.favorite,
                      caption: locals.favorites,
                      callback: () {
                      },
                    ),
                    const SizedBox(height: 16.0),
                    ChicButton(
                      icon: Icons.shopping_bag,
                      caption: locals.orders,
                      callback: () {
                      },
                    ),
                    const SizedBox(height: 16.0),
                    ChicButton(
                      icon: Icons.local_shipping,
                      caption: locals.addresses,
                      callback: () {
                      },
                    ),
                    const SizedBox(height: 16.0),
                    ChicButton(
                        icon: Icons.person,
                        caption: locals.accountDetails,
                        callback: () {
                        }),
                    const SizedBox(height: 16.0),
                    ChicButton(
                      icon: Icons.lock,
                      caption: locals.changePassword,
                      callback: () {
                      },
                    ),
                    const SizedBox(height: 88),
                  ],
                ),
                BottomPanelWithButton(
                  caption: locals.logOut,
                  callback: () {
                  },
                )
              ],
            );
          }
        },
      ),
    );
  }
}
