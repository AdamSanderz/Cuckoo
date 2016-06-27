//
//  ReturnValueOrError.swift
//  Cuckoo
//
//  Created by Filip Dolnik on 29.05.16.
//  Copyright © 2016 Brightify. All rights reserved.
//

enum ReturnValueOrError {
    case ReturnValue(Any)
    case Error(ErrorType)
    case CallRealImplementation
}