// https://github.com/Quick/Quick

import Quick
import Nimble
import Mockingbird
@testable import MyLib

class TableOfContentsSpec: QuickSpec {
  override func spec() {
    describe("consumer") {
      let providerMock = mock(Provider.self)
      it("very first test with the Mock") {
        let consumer = Consumer(provider: providerMock)
        
        given(providerMock.provide(count: 2)).willReturn("Mocks are working really nice")
        
        consumer.cosume(count: 2)
        
        verify(providerMock.provide(count: 2)).wasCalled()
      }
    }
  }
}
