//
//  ContentView.swift
//  NasaIngenuitySwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 30/05/21.
//  The App Wizard
//  Instagram : theappwizard2408

import SwiftUI



struct ContentView: View {
    var body: some View {
        MarsView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



































var images : [UIImage]! =
    [UIImage(named: "image0")!,
     UIImage(named: "image1")!,
     UIImage(named: "image2")!,
     UIImage(named: "image3")!,
     UIImage(named: "image4")!,
     UIImage(named: "image5")!,
     UIImage(named: "image6")!,
     UIImage(named: "image7")!,
     UIImage(named: "image8")!,
     UIImage(named: "image9")!,
     UIImage(named: "image10")!
  
    ]

let animatedImage = UIImage.animatedImage(with: images, duration: 0.5)

struct IngenuityAnimation: UIViewRepresentable {

    func makeUIView(context: Self.Context) -> UIView {
        let IngenuityAnimView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        let IngenuityImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        IngenuityImage.clipsToBounds = true
        IngenuityImage.layer.cornerRadius = 20
        IngenuityImage.autoresizesSubviews = true
        IngenuityImage.contentMode = UIView.ContentMode.scaleAspectFill
        IngenuityImage.image = animatedImage
        IngenuityAnimView.addSubview(IngenuityImage)
        return IngenuityAnimView
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<IngenuityAnimation>) {
    }
}


struct IngenuityView: View {
    
    //Its for rotate and hover
    @State var ingenuityhover  = false
    @State var ingenuityrotate  = false
    
   
    
    var body: some View {
        ZStack{
            IngenuityAnimation()
                .offset(x: 120, y: ingenuityhover ? 200 : 595)
                .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                       .onAppear() {
                           self.ingenuityhover.toggle()
                  }
           }
           
            .rotationEffect(.degrees(ingenuityrotate ? -10 : 10))
        .animation(Animation.easeInOut(duration: 0.9).repeatForever(autoreverses: true))
                .onAppear() {
                        self.ingenuityrotate.toggle()
                        }
    }
}

struct MarsView: View {
    var body: some View {
        ZStack{
            Image("marsbg").resizable().edgesIgnoringSafeArea(.all)
            IngenuityView()
            
            VStack{
                Image("titlen").resizable().frame(width: 420, height: 150, alignment: .center)
                    .offset(x: 10, y: -300)
                
            }
        }
    }
}

