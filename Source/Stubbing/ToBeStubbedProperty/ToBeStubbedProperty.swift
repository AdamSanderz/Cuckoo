//
//  ToBeStubbedProperty.swift
//  Cuckoo
//
//  Created by Filip Dolnik on 29.05.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

public struct ToBeStubbedProperty<T> {
    private let manager: MockManager
    private let name: String
    
    public var get: StubFunction<Void, T> {
        return StubFunction(stub: manager.createStub(getterName(name), parameterMatchers: []))
    }
    
    public func set<M: Matchable where M.MatchedType == T>(matcher: M) -> StubNoReturnFunction<T> {
        return StubNoReturnFunction(stub: manager.createStub(setterName(name), parameterMatchers: [matcher.matcher]))
    }
    
    public init(manager: MockManager, name: String) {
        self.manager = manager
        self.name = name
    }
}