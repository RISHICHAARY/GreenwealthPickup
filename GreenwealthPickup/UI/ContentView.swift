import SwiftUI

struct ContentView: View {
    @State var pageState: String = "splashPage"
    
    var body: some View {
        
        if(pageState == "splashPage"){
            SplashPage(pageState: $pageState)
        }
        else if(pageState == "loginPage"){
            LoginPage(pageState: $pageState)
        }
        else if(pageState == "homePage"){
            HomePage(pageState: $pageState)
        }
        else if(pageState == "profilePage"){
            ProfilePage(pageState: $pageState)
        }
        else if(pageState == "detailsPage"){
            DetailsPage(pageState: $pageState)
        }
        else if(pageState == "otpPage"){
            OtpPage(pageState: $pageState)
        }
    }
}

#Preview {
    ContentView()
}
