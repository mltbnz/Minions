//
//  NibLoadableView.swift
//  Minions
//
//  Created by Malte Bünz on 28/06/16.
//  Copyright © 2016 clapp. All rights reserved.
//

import Foundation

public protocol NibLoadableView: class {
    var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(Self)
    }
}

