![Image of Ingenuity](https://github.com/TheAppWizard/IngenuitySwiftUI/blob/main/output.png)


# IngenuitySwiftUI
Nasa Ingenuity Helicopter animation made with SwiftUI.

## NASA [Ingenuity!](https://mars.nasa.gov/technology/helicopter/#Quick-Facts)
Ingenuity is a small robotic helicopter operating on Mars as part of NASA's Mars 2020 mission. On April 19, 2021, it successfully completed the first powered controlled flight by an aircraft on a planet besides Earth, taking off vertically, hovering and landing.

## How to animate images in SwiftUI (Frame by Frame) ?
I solved this using UIViewRepresentable protocol. Here I returned a UIView with the ImageView as it's subview.

```
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
```





