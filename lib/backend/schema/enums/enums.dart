import 'package:collection/collection.dart';

enum TicketStatus {
  Open,
  Closed,
  Resolved,
}

enum OrderStatus {
  Processing,
  Cancelled,
  Delivered,
  Shipped,
}

enum TransactionType {
  Credit,
  Debit,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (TicketStatus):
      return TicketStatus.values.deserialize(value) as T?;
    case (OrderStatus):
      return OrderStatus.values.deserialize(value) as T?;
    case (TransactionType):
      return TransactionType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
