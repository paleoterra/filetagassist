import Foundation

extension URL: Taggable {
    public func tags() throws -> [String] {
        let values = try self.resourceValues(forKeys: [URLResourceKey.tagNamesKey])
        return values.tagNames ?? []
    }

    public func update(tags: [String]) throws {
        let newUrl = self as NSURL
        try newUrl.setResourceValue(tags, forKey: URLResourceKey.tagNamesKey)
    }
}
