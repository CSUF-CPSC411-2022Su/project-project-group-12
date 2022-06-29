
import SwiftUI


//View that handles logic for the cards as well as displays the name used
struct CardView: View {
    @State private var offset = CGSize.zero
    @State private var color: Color = .black
    var restaurant: String  //The current restaurant being displayed
    @Binding var savedRestaurants: [String] //Shows current saved restaurants
    @EnvironmentObject var sharedRestaurants: SharedRestaurants
    
    var body: some View {
        NavigationView {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 320, height: 420)
                    .border(.white, width: 6.0)
                    .cornerRadius(4)
                    .foregroundColor(color.opacity(0.9))
                    .shadow(radius: 4)
                HStack {
                    Text(restaurant)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                }
            }
            HStack{
                Button(action: {
                    print (self.savedRestaurants)
                }){
                    NavigationLink(destination: RestaruantsView(savedRestaurants:   $savedRestaurants)) {
                    Text("View Saved Restaurants")
                        .padding(.top, 50)
                    }
                }
                Button(action: {
                    print (self.savedRestaurants)
                }){
                    NavigationLink(destination: SharedRestaruantsView()) {
                    Text("View Shared Restaurants")
                        .padding(.top, 50)
                    }
                }
            }
        }
    }
        .offset(x: offset.width * 1, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation
                    withAnimation {
                        changeColor(width: offset.width)
                    }
                }
                .onEnded { _ in
                    withAnimation {
                        swipeCard(width: offset.width,
                                  restaurant: restaurant)
                        changeColor(width: offset.width)
                    }
                }
        )
    }
    
    func swipeCard(width: CGFloat, restaurant: String) {
        switch width {
        case -500...(-150):
            print("\(restaurant) removed")
            offset = CGSize(width: -500, height: 0)
            if sharedRestaurants.sharedRestaurants.contains(restaurant){
                sharedRestaurants.sharedRestaurants = sharedRestaurants.sharedRestaurants.filter {$0 != restaurant}
            }
        case 150...500:
            print("\(restaurant) added")
            self.savedRestaurants.append(restaurant)
            sharedRestaurants.sharedRestaurants.append(restaurant)
            offset = CGSize(width: 500, height: 0)
        default:
            offset = .zero
        }
    }
    
    func changeColor(width: CGFloat) {
        switch width {
        case -500...(-130):
            color = .red
        case 130...500:
            color = .green
        default:
            color = .black
        }
    }
    
    
}
