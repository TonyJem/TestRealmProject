import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        print("🟢 DB file URL: \(realm.configuration.fileURL)")
        
        let person = Person()
        do {
            try realm.write {
                realm.add(person)
            }
        } catch {
            print("\(error.localizedDescription)")
        }
    }
}
