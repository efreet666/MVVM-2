//
//  TableViewViewModel.swift
//  MVVM-2
//
//  Created by Влад Бокин on 13.10.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

protocol TableViewViewModelType: AnyObject {
    
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(forIndexPath indexPath: IndexPath)
}
