import 'package:crypto_dashboard/models/coin.dart';

class StaticData {
  static final List<Coin> userCoins = [
    Coin(
      amountProgress: 82.13,
      balance: 0.00692133,
      currentPrice: 3432.92,
      type: CoinType.BITCOIN,
      percentProgress: 3,
      trend: Trend.UP,
    ),
    Coin(
      amountProgress: 13.10,
      balance: 2.45670,
      currentPrice: 90.96,
      type: CoinType.ETHEREUM,
      percentProgress: 2.3,
      trend: Trend.UP,
    ),
  ];

  static final List<Coin> otherCoins = [
    Coin(
      amountProgress: 5.25,
      balance: 0.00,
      currentPrice: 24.37,
      type: CoinType.LITECOIN,
      percentProgress: 4,
      trend: Trend.DOWN,
    ),
    Coin(
      amountProgress: 13.10,
      balance: 0.00,
      currentPrice: 43.36,
      type: CoinType.MONERO,
      percentProgress: 2.3,
      trend: Trend.UP,
    ),
    Coin(
      amountProgress: 6.75,
      balance: 0.00,
      currentPrice: 0.0136,
      type: CoinType.TRON,
      percentProgress: 2.7,
      trend: Trend.DOWN,
    ),
  ];
}
