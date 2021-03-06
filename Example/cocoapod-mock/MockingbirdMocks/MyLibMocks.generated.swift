//
//  MyLibMocks.generated.swift
//  MyLib
//
//  Generated by Mockingbird v0.16.0.
//  DO NOT EDIT
//

@testable import Mockingbird
@testable import MyLib
import Foundation
import Swift

private var genericTypesStaticMocks = Mockingbird.Synchronized<[String: Mockingbird.StaticMock]>([:])

// MARK: - Mocked Consumer

public final class ConsumerMock: MyLib.Consumer, Mockingbird.Mock {
  static let staticMock = Mockingbird.StaticMock()
  public let mockingContext = Mockingbird.MockingContext()
  public let stubbingContext = Mockingbird.StubbingContext()
  public let mockMetadata = Mockingbird.MockMetadata(["generator_version": "0.16.0", "module_name": "MyLib"])
  public var sourceLocation: Mockingbird.SourceLocation? { get { fatalError("See 'Thunk Pruning' in the README") } set { fatalError("See 'Thunk Pruning' in the README") } }

  public enum InitializerProxy {
    public static func initialize(`provider`: MyLib.Provider, __file: StaticString = #file, __line: UInt = #line) -> ConsumerMock { fatalError("See 'Thunk Pruning' in the README") }
  }

  // MARK: Mocked `cosume`(`count`: Int)

  public override func `cosume`(`count`: Int) -> Void { fatalError("See 'Thunk Pruning' in the README") }

  public func `cosume`(`count`: @escaping @autoclosure () -> Int) -> Mockingbird.Mockable<Mockingbird.FunctionDeclaration, (Int) -> Void, Void> { fatalError("See 'Thunk Pruning' in the README") }

  // MARK: Mocked init(`provider`: MyLib.Provider)

  public required override init(`provider`: MyLib.Provider) { fatalError("See 'Thunk Pruning' in the README") }
}

/// Returns an abstract mock which should be initialized using `mock(Consumer.self).initialize(…)`.
public func mock(_ type: MyLib.Consumer.Type, file: StaticString = #file, line: UInt = #line) -> ConsumerMock.InitializerProxy.Type {
  return ConsumerMock.InitializerProxy.self
}

// MARK: - Mocked Provider

public final class ProviderMock: MyLib.Provider, Mockingbird.Mock {
  static let staticMock = Mockingbird.StaticMock()
  public let mockingContext = Mockingbird.MockingContext()
  public let stubbingContext = Mockingbird.StubbingContext()
  public let mockMetadata = Mockingbird.MockMetadata(["generator_version": "0.16.0", "module_name": "MyLib"])
  public var sourceLocation: Mockingbird.SourceLocation? {
    get { return self.stubbingContext.sourceLocation }
    set {
      self.stubbingContext.sourceLocation = newValue
      ProviderMock.staticMock.stubbingContext.sourceLocation = newValue
    }
  }

  fileprivate init(sourceLocation: Mockingbird.SourceLocation) {
    Mockingbird.checkVersion(for: self)
    self.sourceLocation = sourceLocation
  }

  // MARK: Mocked `provide`(`count`: Int)

  public func `provide`(`count`: Int) -> String {
    let invocation: Mockingbird.Invocation = Mockingbird.Invocation(selectorName: "`provide`(`count`: Int) -> String", arguments: [Mockingbird.ArgumentMatcher(`count`)], returnType: Swift.ObjectIdentifier((String).self))
    return self.mockingContext.didInvoke(invocation) { () -> String in
      let implementation = self.stubbingContext.implementation(for: invocation)
      if let concreteImplementation = implementation as? (Int) -> String {
        return concreteImplementation(`count`)
      } else if let concreteImplementation = implementation as? () -> String {
        return concreteImplementation()
      } else if let defaultValue = self.stubbingContext.defaultValueProvider.provideValue(for: (String).self) {
        return defaultValue
      } else {
        fatalError(self.stubbingContext.failTest(for: invocation))
      }
    }
  }

  public func `provide`(`count`: @escaping @autoclosure () -> Int) -> Mockingbird.Mockable<Mockingbird.FunctionDeclaration, (Int) -> String, String> {
    let arguments: [Mockingbird.ArgumentMatcher] = [Mockingbird.resolve(`count`)]
    let invocation: Mockingbird.Invocation = Mockingbird.Invocation(selectorName: "`provide`(`count`: Int) -> String", arguments: arguments, returnType: Swift.ObjectIdentifier((String).self))
    return Mockingbird.Mockable<Mockingbird.FunctionDeclaration, (Int) -> String, String>(mock: self, invocation: invocation)
  }
}

/// Returns a concrete mock of `Provider`.
public func mock(_ type: MyLib.Provider.Protocol, file: StaticString = #file, line: UInt = #line) -> ProviderMock {
  return ProviderMock(sourceLocation: Mockingbird.SourceLocation(file, line))
}

// MARK: - Mocked SomeProvider

public final class SomeProviderMock: MyLib.SomeProvider, Mockingbird.Mock {
  static let staticMock = Mockingbird.StaticMock()
  public let mockingContext = Mockingbird.MockingContext()
  public let stubbingContext = Mockingbird.StubbingContext()
  public let mockMetadata = Mockingbird.MockMetadata(["generator_version": "0.16.0", "module_name": "MyLib"])
  public var sourceLocation: Mockingbird.SourceLocation? { get { fatalError("See 'Thunk Pruning' in the README") } set { fatalError("See 'Thunk Pruning' in the README") } }

  fileprivate init(sourceLocation: Mockingbird.SourceLocation) {
    super.init()
    Mockingbird.checkVersion(for: self)
    self.sourceLocation = sourceLocation
  }

  // MARK: Mocked `provide`(`count`: Int)

  public override func `provide`(`count`: Int) -> String { fatalError("See 'Thunk Pruning' in the README") }

  public func `provide`(`count`: @escaping @autoclosure () -> Int) -> Mockingbird.Mockable<Mockingbird.FunctionDeclaration, (Int) -> String, String> { fatalError("See 'Thunk Pruning' in the README") }
}

/// Returns a concrete mock of `SomeProvider`.
public func mock(_ type: MyLib.SomeProvider.Type, file: StaticString = #file, line: UInt = #line) -> SomeProviderMock {
  return SomeProviderMock(sourceLocation: Mockingbird.SourceLocation(file, line))
}
