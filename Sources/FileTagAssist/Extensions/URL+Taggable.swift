import Foundation

extension URL: Taggable {
    public func tagNames() throws -> [String] {
        let values = try self.resourceValues(forKeys: [URLResourceKey.tagNamesKey])
        return values.tagNames ?? []
    }

    public func tags() throws -> [Tag] {
        let values = try self.resourceValues(forKeys: [URLResourceKey.tagNamesKey])
        if let strings = values as? [String] {
            return strings.map { name in
                Tag(id: name)
            }
        } else {
            return []
        }
    }

    public func update(tags: [String]) throws {
        let newUrl = self as NSURL
        try newUrl.setResourceValue(tags, forKey: URLResourceKey.tagNamesKey)
    }
}
