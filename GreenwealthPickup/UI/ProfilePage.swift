import SwiftUI

struct ProfilePage: View {
    
    @Binding var pageState: String
    
    @State var search: String = ""
    
    func profileSwitch(){
        pageState = "profilePage"
    }
    
    func homeSwitch(){
        pageState = "homePage"
    }
    
    func logOut(){
        pageState = "loginPage"
    }
    
    var body: some View {
        ZStack(alignment:.top){
            Color("TernaryGreen").ignoresSafeArea(.all)
            VStack(spacing:0){
                HStack{
                    Button(action:{profileSwitch()}){
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 30,height: 30)
                    }
                    Spacer()
                    Button(action:{homeSwitch()}){
                        Image("Logo")
                            .resizable()
                            .frame(width: 40,height: 40)
                    }
                    Spacer()
                    VStack{}
                        .frame(width: 30,height: 30)
                }
                .padding(.horizontal,20)
                .padding(.vertical,10)
                .foregroundColor(.black)
                .overlay(
                    Rectangle()
                        .frame(height: 2, alignment: .bottom)
                        .foregroundColor(Color("PrimaryGreen")),
                    alignment: .bottom
                )
                .padding(.bottom,0)
                VStack{
                    HStack{
                        VStack(alignment:.leading){
                            Text("Jane Doe")
                                .font(.system(size: 16,weight: .bold))
                            Text("Member since: 09/2023")
                                .font(.system(size: 12))
                        }
                        Spacer()
                        VStack{}
                            .frame(width: 100,height: 100)
                            .background(Color("EmptyColor"))
                            .cornerRadius(100)
                    }
                    .padding(.vertical,20)
                    .padding(.horizontal,20)
                    HStack{
                        VStack{
                            Text("Total Amount")
                                .font(.system(size: 12))
                            HStack(spacing:2){
                                Image(systemName: "indianrupeesign")
                                    .resizable()
                                    .frame(width: 15,height: 20)
                                Text("1,453")
                                    .font(.system(size: 22,weight: .bold))
                            }
                        }
                        .padding(.horizontal,10)
                        Divider()
                        VStack(spacing:9){
                            Text("Eco-Points")
                                .font(.system(size: 12))
                            Text("12,343")
                                .font(.system(size: 22,weight: .bold))
                        }
                        .padding(.horizontal,10)
                        Divider()
                        VStack(spacing:9){
                            Text("Rewards")
                                .font(.system(size: 12))
                            Text("100")
                                .font(.system(size: 22,weight: .bold))
                        }
                        .padding(.horizontal,10)
                    }
                    .frame(width: 353,height: 80)
                    .background(Color("SecondaryGreen"))
                    .cornerRadius(10)
                    VStack{
                        VStack{
                            Text("How much you’ve recycled (yearly)")
                                .font(.system(size: 12,weight: .bold))
                        }
                        .padding(.vertical,10)
                        VStack{}
                            .frame(width: 353,height: 125)
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(10)
                    }
                    VStack{
                        VStack{
                            Text("Your estimated carbon footprint")
                                .font(.system(size: 12,weight: .bold))
                        }
                        .padding(.vertical,10)
                        VStack{}
                            .frame(width: 353,height: 125)
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(10)
                    }
                    Spacer()
                    VStack{
                        Button(action:{logOut()}){
                            Text("Log Out")
                                .font(.system(size: 12,weight: .bold))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                        .foregroundColor(.black)
                        .background(Color("PrimaryRed"))
                        .cornerRadius(100)
                    }
                    .padding(.bottom,10)
                    .padding(.horizontal,20)
                }
                .background(.white)
            }
        }
    }
}

struct profilePreview: View {
    
    @State var pageState: String = "homePage"
    
    var body: some View {
        ProfilePage(pageState: $pageState)
    }
}

#Preview{
    profilePreview()
}
