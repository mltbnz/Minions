//
//  UIViewController.swift
//  AVKitTest
//
//  Created by Malte Bünz on 09/06/16.
//  Copyright © 2016 mbnz. All rights reserved.
//

import Foundation
import UIKit

public protocol ReusableView {
    static var reuseIdentifier: String { get }
}

public extension ReusableView where Self: UIViewController {
    static var reuseIdentifier: String {
        return String(Self)
    }
}

extension UIViewController: ReusableView {  }