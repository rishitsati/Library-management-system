import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isAdmin = false
    @State private var navigateTo: String? = nil // Make this optional for NavigationLink

    var body: some View {
        VStack {
            // Username TextField
            TextField("Username", text: $username)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)

            // Password SecureField
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(8)

            // Admin Toggle
            Toggle("Admin", isOn: $isAdmin)
                .padding()

            // Login Button
            Button("Login") {
                if isAdmin {
                    navigateTo = "admin" // Navigate to Admin
                } else {
                    navigateTo = "user"  // Navigate to User
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)

            // Navigation Links
            NavigationLink(
                destination: AdminMainMenuView(),
                tag: "admin",
                selection: $navigateTo) {
                    EmptyView() // No view needed here
                }

            NavigationLink(
                destination: UserMainMenuView(),
                tag: "user",
                selection: $navigateTo) {
                    EmptyView() // No view needed here
                }
        }
        .padding()
    }
}
