

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
