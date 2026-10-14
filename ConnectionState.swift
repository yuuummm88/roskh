import Foundation

enum ConnectionState: Equatable {
    case idle
    case preparing
    case connected
    case failed(String)

    var title: String {
        switch self {
        case .idle: "NOT CONNECTED"
        case .preparing: "CHECKING SETUP"
        case .connected: "CONNECTED"
        case .failed: "SETUP REQUIRED"
        }
    }

    var detail: String {
        switch self {
        case .idle: "Choose a server profile to review its setup."
        case .preparing: "Checking whether a supported game service is configured…"
        case .connected: "A supported service reported a connection."
        case .failed(let message): message
        }
    }
}
