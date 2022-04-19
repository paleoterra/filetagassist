import Foundation

public protocol Taggable {
    func tagNames() throws -> [String]
    func tags() throws -> [Tag]
    func update(tags: [String]) throws
}
