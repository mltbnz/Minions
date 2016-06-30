//
//  Loading.swift
//  Minions
//
//  Created by Malte Bünz on 29/06/16.
//  Copyright © 2016 clapp. All rights reserved.
//

import Foundation

protocol Loading {
    associatedtype ResourceType
    var spinner: UIActivityIndicatorView { get }
}

extension Loading {
    func load(resource: Resource<ResourceType>) {
        
    }
}