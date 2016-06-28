//
//  Stack.swift
//  AVKitTest
//
//  Created by Malte Bünz on 15/06/16.
//  Copyright © 2016 mbnz. All rights reserved.
//

import Foundation

public struct Stack<Element> {
    public var items = [Element]()
    public mutating func push(item: Element) {
        items.append(item)
    }
    public mutating func pop() -> Element {
        return items.removeLast()
    }
}

extension Stack {
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}