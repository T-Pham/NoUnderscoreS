//
//  Array.swift
//  Pods
//
//  Created by Thanh Pham on 5/28/16.
//
//

public extension Array {
    func first(n: Int) -> Array {
        return Array(self.prefix(n))
    }
}
