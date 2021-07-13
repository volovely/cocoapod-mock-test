import Foundation

public class SomeProvider : Provider {
  public func provide(count: Int) -> String {
    return "some provider"
  }
}
