import 'package:food_delivery_multi_template/model/address.dart';
import 'package:food_delivery_multi_template/model/entity.dart';
import 'package:food_delivery_multi_template/model/order_item.dart';
import 'package:food_delivery_multi_template/model/order_status.dart';

// Type represent order entity
class Order extends Entity {
  // The id of the associated customer
  final String customerId;
  // The date of the order
  final DateTime dateGmt;
  // Billing address of the order
  final Address billingAddress;
  // Shipping address of the order
  final Address shippingAddress;
  // State of the order
  final OrderStatus status;
  // Shipping cost
  final double shipping;
  // Sum of the lines in the order
  final double total;
  final DateTime? placedTime;
  final DateTime? processingTime;
  final DateTime? onTheWayTime;
  final DateTime? deliveredTime;
  final DateTime? canceledTime;

  // Items in the order
  final List<OrderItem> items = [];

  // Calculated field: shipping + total
  double get grandTotal => shipping + total;

  Order({
    required super.id,
    required this.customerId,
    required this.dateGmt,
    required this.billingAddress,
    required this.shippingAddress,
    required this.status,
    this.shipping = 0.0,
    this.total = 0.0,
    this.placedTime,
    this.processingTime,
    this.onTheWayTime,
    this.deliveredTime,
    this.canceledTime,
  });

  Order copyWith(
      {double? shipping,
      double? total,
      DateTime? placedTime,
      DateTime? processingTime,
      DateTime? onTheWayTime,
      DateTime? deliveredTime,
      DateTime? canceledTime}) {
    return Order(
      id: id,
      customerId: customerId,
      dateGmt: dateGmt,
      billingAddress: billingAddress,
      shippingAddress: shippingAddress,
      status: status,
      placedTime: placedTime ?? this.placedTime,
      processingTime: processingTime ?? this.processingTime,
      onTheWayTime: onTheWayTime ?? this.onTheWayTime,
      deliveredTime: deliveredTime ?? this.deliveredTime,
      canceledTime: canceledTime ?? this.canceledTime,
      shipping: shipping ?? this.shipping,
      total: total ?? this.total,
    );
  }

  @override
  List<Object?> get props => [
        id,
        customerId,
        dateGmt,
        billingAddress,
        shippingAddress,
        status,
        shipping,
        total,
        placedTime,
        processingTime,
        onTheWayTime,
        deliveredTime,
        canceledTime,
        items,
      ];
}
