import SwiftUI
import MapKit
import TriggerSlider

struct DetailsPage: View {
    
    @Binding var pageState: String
    
    @State var search: String = ""
    @State var offsetX: CGFloat = 0
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    func profileSwitch(){
        pageState = "profilePage"
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
                        Button(action:{homeSwitch()}){
                            Image(systemName: "arrow.left")
                                .resizable()
                                .frame(width: 20,height: 20)
                        }
                        Spacer()
                        Text("Pickup Details")
                            .font(.system(size: 16,weight: .bold))
                        Spacer()
                        Button(action:{}){
                            Image(systemName: "questionmark.circle")
                                .resizable()
                                .frame(width: 20,height: 20)
                        }
                    }
                    .foregroundColor(.black)
                    .padding(20)
                    ZStack{
                        VStack{
                            Map(coordinateRegion: $region)
                                        .frame(width: 353, height: 280)
                        }
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        VStack{
                            Text("No. 2104, Amalfi, House of Hiranandani OMR, Egattur, Chennai")
                                .font(.system(size: 12))
                        }
                        .frame(width: 112)
                        .padding()
                        .background(Color("TernaryGreen"))
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:2)
                        )
                        .offset(x:80,y:-30)
                    }
                    .padding(20)
                    VStack(alignment:.leading){
                        VStack(alignment:.leading){
                            Text("")
                                .frame(maxWidth: .infinity)
                            HStack{
                                Text("Type of Item:")
                                    .font(.system(size: 12,weight: .bold))
                                Text("Paper")
                                    .font(.system(size: 12))
                            }
                            .padding(.bottom,3)
                            HStack{
                                Text("Pickup Location:")
                                    .font(.system(size: 12,weight: .bold))
                                Text("Home")
                                    .font(.system(size: 12))
                            }
                            .padding(.bottom,3)
                            HStack{
                                Text("Pickup Date:")
                                    .font(.system(size: 12,weight: .bold))
                                Text("18th")
                                    .font(.system(size: 12))
                            }
                            .padding(.bottom,3)
                            HStack{
                                Text("Pickup Time:")
                                    .font(.system(size: 12,weight: .bold))
                                Text("05:00 PM to 07:00 PM")
                                    .font(.system(size: 12))
                            }
                            .padding(.bottom,3)
                        }
                        .padding(10)
                    }
                    .frame(width: 353,height: 120)
                    .background(Color("SecondaryGreen"))
                    .cornerRadius(10)
                    HStack{
                        VStack{
                            Image(systemName: "phone.fill")
                                .resizable()
                                .frame(width: 30,height: 30)
                            Text("Call")
                                .font(.system(size: 12))
                        }
                        .frame(width:80,height:57)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                        Spacer()
                        VStack{
                            Image(systemName: "clock.badge.fill")
                                .resizable()
                                .frame(width: 30,height: 30)
                            Text("Postpone")
                                .font(.system(size: 12))
                        }
                        .frame(width:80,height:57)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                        Spacer()
                        VStack{
                            Image(systemName: "ticket.fill")
                                .resizable()
                                .frame(width: 40,height: 30)
                            Text("Ticket")
                                .font(.system(size: 12))
                        }
                        .frame(width:80,height:57)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                        VStack{
                            Image(systemName: "x.circle.fill")
                                .resizable()
                                .frame(width: 30,height: 30)
                            Text("Cancel")
                                .font(.system(size: 12))
                        }
                        .frame(width:80,height:57)
                        .background(Color("SecondaryGreen"))
                        .cornerRadius(8)
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal,20)
                    Spacer()
                    VStack{
                        TriggerSlider(sliderView: {
                                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                                .fill(Color("PrimaryGreen"))
                                                .overlay(Image(systemName: "arrow.right")
                                                .font(.system(size: 20))
                                                .foregroundColor(.white))
                                                .padding(-3)
                                        }, textView: {
                                            Text("Slide to Accept")
                                                .foregroundColor(.black)
                                        },
                                        backgroundView: {
                                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                                                .fill(Color("SecondaryGreen"))
                                                .padding(-8)
                                        },offsetX: $offsetX,
                                          didSlideToEnd: {
                                            print("Triggered right direction slider!")
                                            pageState = "otpPage"
                                        }, settings: TriggerSliderSettings(sliderViewVPadding: 5, slideDirection: .right)).padding(.vertical, 10).padding(.horizontal, 20)
                    }
                }
                .background(.white)
            }
        }
    }
}

struct detailsPreview: View {
    
    @State var pageState: String = "homePage"
    
    var body: some View {
        DetailsPage(pageState: $pageState)
    }
}

#Preview{
    detailsPreview()
}
