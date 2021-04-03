import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🟢 ViewDid Load")
        let realm = try! Realm()
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
