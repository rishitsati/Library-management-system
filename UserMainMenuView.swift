import SwiftUI

struct UserMainMenuView: View {
    var body: some View {
        VStack {
            NavigationLink("Vendor", destination: Text("Vendor View"))
            NavigationLink("Cart", destination: Text("Cart View"))
            NavigationLink("Guest List", destination: Text("Guest List View"))
        }
        .padding()
    }
}
