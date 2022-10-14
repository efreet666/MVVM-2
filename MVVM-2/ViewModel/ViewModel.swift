//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Влад Бокин on 13.10.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

class ViewModel: TableViewViewModelType {
  
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Max", secondName: "Kolby", age: 21),
        Profile(name: "Mark", secondName: "Salmon", age: 55)]
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else {
            return nil
        }

        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(forIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
   
  

}
