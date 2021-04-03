import Foundation
import RealmSwift

class Person: Object {
    @objc dynamic var name = "Semen"
    @objc dynamic var surname = "Smith"
    @objc dynamic var age = 27
    
    override static func ignoredProperties() -> [String] {
        return ["surname"]
    }
}
