
import SwiftUI

struct AdminMainMenuView: View {
    var body: some View {
        VStack {
            NavigationLink("Maintenance", destination: ReportsView())
            NavigationLink("Transactions", destination: TransactionView())
            NavigationLink("Add Membership", destination: AddMembershipView())
            NavigationLink("Update Membership", destination: UpdateMembershipView())
        }
        .padding()
    }
}
