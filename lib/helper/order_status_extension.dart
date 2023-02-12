import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/localization/locals.dart';
import 'package:food_delivery_multi_template/model/order_status.dart';

extension OrderStatusExtension on OrderStatus {
  String friendlyName(BuildContext context) {
    final locals = Locals.of(context);

    switch (this) {
      case OrderStatus.placed:
        return locals.placed;
      case OrderStatus.processing:
        return locals.processing;
      case OrderStatus.onTheWay:
        return locals.onTheWay;
      case OrderStatus.delivered:
        return locals.delivered;
      default:
        return locals.cancelled;
    }
  }

  IconData get iconData {
    switch (this) {
      case OrderStatus.placed:
        return Icons.receipt;
      case OrderStatus.processing:
        return Icons.incomplete_circle;
      case OrderStatus.onTheWay:
        return Icons.local_shipping;
      case OrderStatus.delivered:
        return Icons.check_circle;
      default:
        return Icons.cancel;
    }
  }
}
