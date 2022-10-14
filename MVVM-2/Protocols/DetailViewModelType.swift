//
//  DetailViewModelProtocol.swift
//  MVVM-2
//
//  Created by Влад Бокин on 13.10.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get    }
}
