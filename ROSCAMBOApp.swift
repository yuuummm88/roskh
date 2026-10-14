import SwiftUI

@main
struct ROSCAMBOApp: App {
    @StateObject private var launcher = LauncherViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView(launcher: launcher)
                .preferredColorScheme(.dark)
                .tint(LauncherPalette.lime)
        }
    }
}

enum LauncherPalette {
    static let background = Color(red: 0.035, green: 0.055, blue: 0.075)
    static let panel = Color(red: 0.075, green: 0.105, blue: 0.13)
    static let panelRaised = Color(red: 0.105, green: 0.14, blue: 0.165)
    static let lime = Color(red: 0.72, green: 0.96, blue: 0.34)
    static let muted = Color(red: 0.58, green: 0.65, blue: 0.69)
    static let warning = Color(red: 1.0, green: 0.69, blue: 0.32)
}
