import SwiftUI
import Combine

struct OtpPage: View {
    
    @Binding var pageState: String

    enum FocusPin {
        case  pinOne, pinTwo, pinThree, pinFour
    }

    @FocusState private var pinFocusState : FocusPin?
    @State var pinOne: String = ""
    @State var pinTwo: String = ""
    @State var pinThree: String = ""
    @State var pinFour: String = ""
    
    func homeSwitch(){
        pageState = "homePage"
    }


    //MARK -> BODY
    var body: some View {
            VStack {

                Text("Verify your Acceptance")
                    .font(.title2)
                    .fontWeight(.semibold)


                Text("Enter 4 digit code we'll text you on Message")
                    .font(.caption)
                    .fontWeight(.thin)
                    .padding(.top)

                HStack(spacing:15, content: {

                    TextField("", text: $pinOne)
                        .modifier(OtpModifierPage(pin:$pinOne))
                        .onChange(of:pinOne){newVal in
                            if (newVal.count == 1) {
                                pinFocusState = .pinTwo
                            }
                        }
                        .focused($pinFocusState, equals: .pinOne)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:3)
                        )

                    TextField("", text:  $pinTwo)
                        .modifier(OtpModifierPage(pin:$pinTwo))
                        .onChange(of:pinTwo){newVal in
                            if (newVal.count == 1) {
                                pinFocusState = .pinThree
                            }else {
                                if (newVal.count == 0) {
                                    pinFocusState = .pinOne
                                }
                            }
                        }
                        .focused($pinFocusState, equals: .pinTwo)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:3)
                        )


                    TextField("", text:$pinThree)
                        .modifier(OtpModifierPage(pin:$pinThree))
                        .onChange(of:pinThree){newVal in
                            if (newVal.count == 1) {
                                pinFocusState = .pinFour
                            }else {
                                if (newVal.count == 0) {
                                    pinFocusState = .pinTwo
                                }
                            }
                        }
                        .focused($pinFocusState, equals: .pinThree)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:3)
                        )


                    TextField("", text:$pinFour)
                        .modifier(OtpModifierPage(pin:$pinFour))
                        .onChange(of:pinFour){newVal in
                            if (newVal.count == 0) {
                                pinFocusState = .pinThree
                            }
                        }
                        .focused($pinFocusState, equals: .pinFour)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("PrimaryGreen"),lineWidth:3)
                        )


                })
                .padding(.vertical)


                Button(action: {homeSwitch()}, label: {
                    Spacer()
                    Text("Veify")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                    Spacer()
                })
                .padding(15)
                .background(Color("PrimaryGreen"))
                .clipShape(Capsule())
                .padding(.horizontal,20)
            }

    }
}

struct otpPreview: View {
    
    @State var pageState: String = "homePage"
    
    var body: some View {
        OtpPage(pageState: $pageState)
    }
}

#Preview{
    otpPreview()
}
