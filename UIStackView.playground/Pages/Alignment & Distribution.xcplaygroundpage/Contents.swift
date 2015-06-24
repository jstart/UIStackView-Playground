//: [Previous](@previous)
//: ## Alignment & Distribution
import UIKit
import XCPlayground

var redView = smallViewWithColor(.redColor())
var blueView = smallViewWithColor(.blueColor())
var greenView = smallViewWithColor(.greenColor())
var yellowView = smallViewWithColor(.yellowColor())

if #available(iOS 9, *) {
    var stackView = UIStackView(arrangedSubviews: [redView, blueView, greenView, yellowView])
    stackView.frame = CGRectMake(0, 0, redView.frame.size.width, redView.frame.size.height*4)
    stackView.axis = .Vertical
    stackView.spacing = 20
    stackView.alignment = UIStackViewAlignment.Fill
    stackView.distribution = UIStackViewDistribution.FillEqually
    
    XCPShowView("Distribution", view: stackView)
}
//: [Next](@next)
