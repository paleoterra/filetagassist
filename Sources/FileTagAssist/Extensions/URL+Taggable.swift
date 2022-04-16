import Foundation

extension URL: Taggable {
    func tags() throws -> [String] {
        let values = try self.resourceValues(forKeys: [URLResourceKey.tagNamesKey])
        return values.tagNames ?? []
    }

    func update(tags: [String]) throws {
        let newUrl = self as NSURL
        try newUrl.setResourceValue(tags, forKey: URLResourceKey.tagNamesKey)
    }
}
