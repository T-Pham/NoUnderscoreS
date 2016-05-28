//
//  Array.swift
//  Pods
//
//  Created by Thanh Pham on 5/28/16.
//
//

public extension Array {
    func first(n: Int) -> Array {
        let _n = max(0, n)
        return Array(self.prefix(_n))
    }
}
