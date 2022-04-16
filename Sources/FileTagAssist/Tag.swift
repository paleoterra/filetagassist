import Foundation

struct Tag: Hashable, Identifiable, Codable {
    /// Name of the tag
    let id: String
    /// Simple grouping of tags
    ///
    /// Provides a simple method to group tags, such as "Business", or "descriptive"
    var category: String?
    /// Date of first use
    ///
    /// Suggests that the tag should not be used for content prior to firstUse
    var firstUse: Date?
    /// Date of last use
    ///
    /// Suggests that the tag should not be used for content after to lastUse
    var lastUse: Date?
    /// Tags commonly associated with the current tag
    ///
    /// Provides a list of possible tags to associate with the current tags
    var associatedTags: [[String]]?
}

extension Array where Element == Tag {
    func sort() -> [Tag] {
      return sort { $0.id < $1.id }
    }

    func tagNames() -> [String] {
        return self.map { tag in
            tag.id
        }
    }

    func tagString(separator: String = ", ") -> String {
        let names = self.map { tag in
            tag.id
        }
        return names.reduce("") {$0 == "" ? $1 : $0 + separator + $1 }
    }
}
