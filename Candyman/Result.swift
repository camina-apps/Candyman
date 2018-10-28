//
//  Result.swift
//  Candyman
//
//  Created by Carmen Probst on 27.10.18.
//  Copyright © 2018 Camina Apps. All rights reserved.
//

public enum Result<T, error: Error> {
    case success(T)
    case failure(Error)
}
