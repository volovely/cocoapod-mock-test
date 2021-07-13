import Foundation

public protocol Provider {
  func provide(count: Int) -> String
}
