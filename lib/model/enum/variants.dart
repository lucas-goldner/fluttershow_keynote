/// An enum for enabling different variants.
enum Variants {
  /// Variant one.
  one(1),

  /// Variant two.
  two(2);

  /// Constructs a `Variants` enum with the given variant value.
  const Variants(this.variant);

  /// The value associated with the variant.
  final int variant;
}
