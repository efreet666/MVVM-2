//
//  Box.swift
//  MVVM-2
//
//  Created by Влад Бокин on 14.10.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

class Box<T> {
    
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    var value: T {
        
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    init(_ value: T){
        self.value = value
    }
}
