
import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var DetailLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.age.bind(listener: { [unowned self] in
            
            guard let string = $0 else { return }
            
            self.DetailLabel.text = string
        })
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        guard let viewModel = viewModel else { return }

        DetailLabel.text = viewModel.description
        
        delay(delay: 3) {
            self.viewModel?.age.value = "Secret info "
        }
    }

    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay, execute: {
            closure()
        })
    }
}
