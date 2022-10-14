
import UIKit

class TableViewController: UITableViewController {

    var viewModel: TableViewViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell, let viewModel = viewModel else { return UITableViewCell() }
        
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath) as? TableViewCellViewModel
        tableViewCell.viewModel = cellViewModel
        return tableViewCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         
        guard let viewModel = viewModel else {
            return
        }

        viewModel.selectRow(forIndexPath: indexPath)
        performSegue(withIdentifier: "showDetailVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indentifier = segue.identifier, let viewModel = viewModel else { return }
        if indentifier == "showDetailVC" {
            if let destinationVC = segue.destination as? DetailViewController {
                destinationVC.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }
}
