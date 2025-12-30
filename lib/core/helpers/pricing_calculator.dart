class YPricingCalculator {
  /// -- Calculate price based on tax and shiping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    final taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // lookup the tax rate for the given location from a tax rate datbase or API
    // return the appropriate tax rate
    return 0.10; // tax rate of 10%
  }

  static double getShippingCost(String location) {
    // lookup the shipping cost for the given location using a shipping rate API
    // calculate the shipping rate based on various factors like distance, weight etc.
    return 5.00; // shipping cost of $5
  }
}
