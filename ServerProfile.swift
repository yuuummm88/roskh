import Foundation

struct ServerProfile: Identifiable, Codable, Equatable {
    var id: UUID
    var name: String
    var endpoint: URL
    var addedAt: Date

    init(id: UUID = UUID(), name: String, endpoint: URL, addedAt: Date = .now) {
        self.id = id
        self.name = name
        self.endpoint = endpoint
        self.addedAt = addedAt
    }

    var hostDescription: String {
        endpoint.host(percentEncoded: false) ?? endpoint.absoluteString
    }
}
