//
//  BaseToBeStubbedFunction.swift
//  Cuckoo
//
//  Created by Filip Dolnik on 27.06.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

public protocol BaseToBeStubbedFunction {
    associatedtype StubFunction
    
    func createStubFunction() -> StubFunction
}