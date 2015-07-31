//: [Previous](@previous)
//: ## Alignment & Distribution
import UIKit
import XCPlayground

var redView = smallViewWithColor(.redColor())
redView.text = ""
var blueView = smallViewWithColor(.blueColor())
var greenView = smallViewWithColor(.greenColor())
var yellowView = smallViewWithColor(.yellowColor())

if #available(iOS 9, *) {
    var stackView = UIStackView(arrangedSubviews: [redView, blueView, greenView, yellowView])
    stackView.frame = CGRectMake(0, 0, redView.frame.size.width*5, redView.frame.size.height*5)
    stackView.axis = .Horizontal
    stackView.spacing = 20
    stackView.alignment = UIStackViewAlignment.Fill
    stackView.distribution = UIStackViewDistribution.Fill
    
    XCPShowView("Distribution", view: stackView)
}
//: [Next](@next)
