// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum Strings {
  /// All
  internal static let all = Strings.tr("Localizable", "all")
  /// Keto
  internal static let keto = Strings.tr("Localizable", "keto")
  /// Low Sugar
  internal static let lowSugar = Strings.tr("Localizable", "lowSugar")
  /// Sorry no Recipes for your query
  internal static let noResult = Strings.tr("Localizable", "NoResult")
  /// Enter Your Recipe Here
  internal static let searchBarPlaceholder = Strings.tr("Localizable", "SearchBarPlaceholder")
  /// Search
  internal static let searchButtonTitle = Strings.tr("Localizable", "SearchButtonTitle")
  /// Select To Filter of Your Healthy Recipes
  internal static let selectFilterTitle = Strings.tr("Localizable", "SelectFilterTitle")
  /// Vegan
  internal static let vegan = Strings.tr("Localizable", "vegan")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension Strings {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
