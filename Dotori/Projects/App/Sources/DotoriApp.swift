import SwiftUI

@main
struct DotoriApp: App {
    var body: some Scene {
        WindowGroup {
            Button {
                let telephone = "tel://"
                let formattedString = telephone + "01052098858"
                guard let url = URL(string: formattedString) else { return }
                UIApplication.shared.open(url)
            } label: {
                Text("010-5209-8858")
            }
        }
    }
}
