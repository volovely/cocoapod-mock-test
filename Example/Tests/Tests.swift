// https://github.com/Quick/Quick

import Quick
import Nimble
@testable import MyLib

class TableOfContentsSpec: QuickSpec {
  override func spec() {
    describe("these will fail") {
      it("very first test with the Mock") {
        let consumer = Consumer(provider: SomeProvider())
      }
    }
  }
}
