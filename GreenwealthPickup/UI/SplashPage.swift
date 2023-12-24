import SwiftUI

struct SplashPage: View {
    
    @Binding var pageState: String
    
    func loginSwitch(){
        pageState = "loginPage"
    }
    
    var body: some View {
        ZStack{
            
            Color("PrimaryGreen").ignoresSafeArea(.all)
            
            /* --- Boxes --- */
            
            VStack{}
            .frame(width: 200, height: 200)
            .background(Color("EmptyColor"))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 2)
            )
            .offset(x:-190,y:-420)
            
            VStack{}
            .frame(width: 200, height: 200)
            .background(Color("EmptyColor"))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 2)
            )
            .offset(x:210,y:-300)
            
            VStack{}
            .frame(width: 200, height: 200)
            .background(Color("EmptyColor"))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 2)
            )
            .offset(x:120,y:-40)
            
            VStack{}
            .frame(width: 200, height: 200)
            .background(Color("EmptyColor"))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 2)
            )
            .offset(x:-120,y:-40)
            
            VStack{}
            .frame(width: 200, height: 200)
            .background(Color("EmptyColor"))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 2)
            )
            .offset(y:-90)
            
            VStack{}
            .frame(width: 200, height: 200)
            .background(Color("EmptyColor"))
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 2)
            )
            .offset(x:-180,y:180)
            
            /* --- Text and Button --- */
            
            VStack{
                VStack(spacing:10){
                    Text("Greenwealth")
                        .font(.system(size: 30, weight: .black))
                    Text("Pickup")
                        .font(.system(size: 22, weight: .bold))
                }
                .foregroundColor(.white)
                .offset( y:50 )
                Spacer()
                VStack{
                    Button(action:{loginSwitch()}){
                        Text("Continue")
                            .font(.system(size: 12))
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .foregroundColor(.black)
                    .background(Color("SecondaryGreen"))
                    .cornerRadius(100)
                }
            }
            .padding(10)
        }
    }
}

struct splashPreview: View {
    
    @State var pageState: String = "splashPage"
    
    var body: some View {
        SplashPage(pageState: $pageState)
    }
}

#Preview {
    splashPreview()
}
