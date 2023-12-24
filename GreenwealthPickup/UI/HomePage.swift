import SwiftUI

struct HomePage: View {
    
    @Binding var pageState: String
    
    @State var search: String = ""
    
    func profileSwitch(){
        pageState = "profilePage"
    }
    
    func detailsSwitch(){
        pageState = "detailsPage"
    }
    
    func homeSwitch(){
        pageState = "homePage"
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
                        Spacer()
                        Text("Pickup Log")
                            .font(.system(size: 16,weight: .bold))
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding(20)
                    VStack{
                        TextField("Search",text: $search)
                            .font(.system(size: 12,weight: .bold))
                            .padding(10)
                            .frame(width: 353,height: 38)
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(8)
                    }
                    .padding(.horizontal,20)
                    VStack(spacing:30){
                        Button(action:{detailsSwitch()}){
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Order ID: #123457")
                                    Spacer()
                                    Text("Accepted")
                                        .frame(width: 84,height: 18)
                                        .background(Color("PrimaryGreen"))
                                        .cornerRadius(100)
                                }
                                .font(.system(size: 10))
                                Divider()
                                HStack{
                                    VStack{}
                                        .frame(width: 60,height: 60)
                                        .background(Color("EmptyColor"))
                                        .cornerRadius(5)
                                    VStack(alignment:.leading,spacing: 8){
                                        HStack{
                                            Text("Materials:")
                                                .fontWeight(.bold)
                                            Text("10kg of Paper, Bottels")
                                        }
                                        HStack{
                                            Text("Pickup from:")
                                                .fontWeight(.bold)
                                            Text("Home")
                                        }
                                        HStack{
                                            Text("Slot:")
                                                .fontWeight(.bold)
                                            Text("18th from 09:00 AM t0 11:00 AM")
                                        }
                                    }
                                    .font(.system(size: 12))
                                }
                            }
                            .padding()
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(10)
                        }
                        .foregroundColor(.black)
                        
                        Button(action:{detailsSwitch()}){
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Order ID: #123457")
                                    Spacer()
                                    Text("in Progress")
                                        .frame(width: 84,height: 18)
                                        .background(Color("PrimaryGreen"))
                                        .cornerRadius(100)
                                }
                                .font(.system(size: 10))
                                Divider()
                                HStack{
                                    VStack{}
                                        .frame(width: 60,height: 60)
                                        .background(Color("EmptyColor"))
                                        .cornerRadius(5)
                                    VStack(alignment:.leading,spacing: 8){
                                        Text("10kg of Paper, Bottels")
                                        Text("Home")
                                        Text("18th from 09:00 AM to 11:00 AM")
                                    }
                                    .font(.system(size: 12))
                                    Spacer()
                                    HStack(spacing:1){
                                        Image(systemName: "indianrupeesign")
                                            .resizable()
                                            .frame(width: 10,height: 15)
                                        Text("300")
                                    }
                                    .frame(width: 84,height: 36)
                                    .background(Color("PrimaryGreen"))
                                    .cornerRadius(5)
                                }
                                Divider()
                                HStack{
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                }
                                .foregroundColor(.black)
                            }
                            .padding()
                            .background(Color("SecondaryGreen"))
                            .cornerRadius(10)
                        }
                            .foregroundColor(.black)
                        
                    }
                    .padding(.horizontal,20)
                    .padding(.top,10)
                    Spacer()
                }
                .background(.white)
            }
        }
    }
}

struct homePreview: View {
    
    @State var pageState: String = "homePage"
    
    var body: some View {
        HomePage(pageState: $pageState)
    }
}

#Preview{
    homePreview()
}
