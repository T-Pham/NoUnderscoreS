//
//  Array.swift
//  Pods
//
//  Created by Thanh Pham on 5/28/16.
//
//

public extension Array {

    private func exec(n: Int?, f: Int -> ArraySlice<Element>) -> Array {
        return Array(f(max(0, n ?? 1)))
    }

    func first(n: Int? = nil) -> Array {
        return exec(n, f: prefix)
    }

    func initial(n: Int? = nil) -> Array {
        return exec(n, f: dropLast)
    }

    func last(n: Int? = nil) -> Array {
        return exec(n, f: suffix)
    }

    func rest(n: Int? = nil) -> Array {
        return exec(n, f: dropFirst)
    }
}
