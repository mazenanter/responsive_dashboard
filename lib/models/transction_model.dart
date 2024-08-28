class TransctionModel {
  final String titel, date, amount;
  final bool isWithdrawal;

  const TransctionModel(
      {required this.titel,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
