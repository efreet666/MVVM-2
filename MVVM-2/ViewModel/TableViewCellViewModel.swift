//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Влад Бокин on 13.10.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
   
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return "\(profile.age)"
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
     
}
