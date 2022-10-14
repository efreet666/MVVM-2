

import Foundation

protocol TableViewViewModelType: AnyObject {
    
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(forIndexPath indexPath: IndexPath)
}
