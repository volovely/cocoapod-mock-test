import Foundation

public class Consumer {
  private var provider: Provider
  
  init(provider: Provider) {
    self.provider = provider
  }
  
  func cosume(count: Int) {
    let res = provider.provide(count: count)
    print(res)
  }
}
