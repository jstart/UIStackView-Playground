//: ## I ♥️ [UIStackView](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIStackView_Class_Reference/index.html#//apple_ref/c/tdef/UIStackViewDistribution)
import UIKit
import XCPlayground

//: Create 3 image views and create a view that can contain all three views horizontally and veritically.
var imageView1 = UIImageView(image: UIImage(named: "headshot")!)
var imageView2 = UIImageView(image: UIImage(named: "headshot")!)
var imageView3 = UIImageView(image: UIImage(named: "headshot")!)

var slide1 = UIView(frame: CGRectMake(0, 0, imageView1.frame.size.width * 3, imageView1.frame.size.height * 3))
slide1.backgroundColor = UIColor.grayColor()

@available(iOS 9, *)
func flipAxis(imageView1: UIImageView, stackView:UIStackView){
    UIView.animateWithDuration(1.0, animations: {
        stackView.axis = .Vertical
    })
    UIView.animateWithDuration(1.0, delay: 1.0, options:.CurveEaseInOut, animations: {
                stackView.axis = .Horizontal
                }, completion: { _ in
                    UIView.animateWithDuration(1.0, delay:0.1, options:.CurveEaseInOut, animations: {
                        stackView.axis = .Vertical
                        }, completion: { _ in
                            UIView.animateWithDuration(1.0, animations: {
                                imageView3.hidden = true
                            })
                        })
            })
}

if #available(iOS 9, *) {
    var stackView = UIStackView(arrangedSubviews: [imageView1, imageView2, imageView3])
    stackView.axis = UILayoutConstraintAxis.Horizontal
    stackView.alignment = UIStackViewAlignment.Fill
    stackView.distribution = UIStackViewDistribution.FillProportionally
    stackView.layoutMarginsRelativeArrangement = true
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    stackView.frame = CGRectMake(0, 0, imageView1.frame.size.width * 3, imageView1.frame.size.height * 3)
    
    slide1.addSubview(stackView)
    XCPShowView("Stack Axis Animation", view: slide1)
    flipAxis(imageView1, stackView:stackView)
}
//: [Next](@next)
