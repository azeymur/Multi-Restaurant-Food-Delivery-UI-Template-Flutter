import 'package:food_delivery_multi_template/globals.dart';
import 'package:food_delivery_multi_template/locator.dart';
import 'package:food_delivery_multi_template/model/customer.dart';
import 'package:food_delivery_multi_template/service/service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAccountCubit extends Cubit<MyAccountState> {
  final Service service = getIt<Service>();

  MyAccountCubit() : super(const InitialMyAccountState());

  void getCustomer() async {
    final customer = await service.getCustomer(Globals.loggedCustomerId);
    emit(LoadedMyAccountState(customer));
  }

  void save(
    String customerId,
    String fullName,
    String username,
    String email,
    String phone,
    String image,
  ) async {
    await service.updateCustomer(
      customerId,
      fullName,
      username,
      email,
      phone: phone,
      image: image,
    );

    final customer = await service.getCustomer(Globals.loggedCustomerId);
    emit(LoadedMyAccountState(customer));
  }
}

@immutable
abstract class MyAccountState extends Equatable {
  const MyAccountState();
}

class InitialMyAccountState extends MyAccountState {
  const InitialMyAccountState();

  @override
  List<Object?> get props => [];
}

class LoadedMyAccountState extends MyAccountState {
  final Customer customer;

  const LoadedMyAccountState(this.customer);

  @override
  List<Object?> get props => [customer];
}
