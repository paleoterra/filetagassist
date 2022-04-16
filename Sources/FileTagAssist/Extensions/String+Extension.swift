import Foundation

extension String {
    func tags(separator: String = ",") -> [Tag] {
        let names = self.components(separatedBy: separator)
        return names.map { name in
            Tag(id: name.trimmingCharacters(in: .whitespacesAndNewlines))
        }
    }
}
