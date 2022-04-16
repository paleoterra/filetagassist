import Foundation

protocol Taggable {
    func tags() throws -> [String]
    func update(tags: [String]) throws
}
