import SwiftUI

struct LoginPage: View {
    
    @Binding var pageState: String
    
    @State var userName: String = ""
    @State var passWord: String = ""
    
    func splashSwitch(){
        pageState = "splashPage"
    }
    
    func homeSwitch(){
        pageState = "homePage"
    }
    
    var body: some View {
        VStack{
            VStack(alignment:.leading){
                VStack{
                    Button(action:{splashSwitch()}){
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 30,height: 30)
                    }
                }
                .foregroundColor(.black)
                .padding(.bottom,50)
                VStack(alignment:.leading){
                    Text("Login with")
                    Text("your credentials")
                }
                .font(.system(size: 32,weight: .black))
                .foregroundColor(Color("PrimaryGreen"))
                .padding(.bottom,50)
                HStack(alignment:.center){
                    Button(action:{homeSwitch()}){
                        Image(systemName: "apple.logo")
                            .resizable()
                            .frame(width: 30,height: 35)
                    }
                    .foregroundColor(.black)
                    .padding(20)
                    .frame(width: 175)
                    .background(Color("PrimaryGreen"))
                    .cornerRadius(100)
                    Button(action:{homeSwitch()}){
                        Image("Google")
                            .resizable()
                            .frame(width: 30,height: 35)
                    }
                    .foregroundColor(.black)
                    .padding(20)
                    .frame(width: 175)
                    .background(Color("SecondaryGreen"))
                    .cornerRadius(100)
                }
                .padding(.bottom,20)
                
                HStack{
                    VStack{
                        Divider()
                    }
                    Text("or")
                        .font(.system(size: 24))
                        .padding(.horizontal,10)
                    VStack{
                        Divider()
                    }
                }
            }
            VStack(alignment: .center){
                TextField("Username",text: $userName)
                    .font(.system(size: 18,weight: .bold))
                    .padding(20)
                    .background(Color("SecondaryGreen"))
                    .cornerRadius(10)
                SecureField("Password",text: $userName)
                    .font(.system(size: 18,weight: .bold))
                    .padding(20)
                    .background(Color("SecondaryGreen"))
                    .cornerRadius(10)
            }
            .padding(.bottom,40)
            HStack{
                Text("Forgot Password")
                Image(systemName: "arrow.right")
            }
            .fontWeight(.bold)
            .foregroundColor(Color("PrimaryGreen"))
        }
        .padding(25)
    }
}

struct loginPreview: View {
    
    @State var pageState: String = "loginPage"
    
    var body: some View {
        LoginPage(pageState: $pageState)
    }
}

#Preview {
    loginPreview()
}
