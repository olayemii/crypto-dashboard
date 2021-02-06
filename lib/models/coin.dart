enum CoinType {
  BITCOIN,
  ETHEREUM,
  LITECOIN,
  MONERO,
  TRON,
}

class Coin {
  final CoinType type;
  final double currentPrice;
  final double percentProgress;
  final double amountProgress;
  final double balance;

  Coin({
    this.currentPrice,
    this.percentProgress,
    this.amountProgress,
    this.balance,
    this.type,
  });
}
