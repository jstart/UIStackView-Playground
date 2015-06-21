//: [Previous](@previous)
//: ## Alignment & Distribution
import UIKit
import XCPlayground

var redView = smallViewWithColor(.redColor())
var blueView = smallViewWithColor(.blueColor())
var greenView = smallViewWithColor(.greenColor())
var yellowView = smallViewWithColor(.yellowColor())

if #available(iOS 9, *) {
    var stackView = UIStackView(frame: CGRectMake(0, 0, redView.frame.size.width, redView.frame.size.height*4))
    stackView.axis = .Vertical
    stackView.spacing = 20
    stackView.alignment = UIStackViewAlignment.Fill
    stackView.distribution = UIStackViewDistribution.FillEqually
    stackView.addArrangedSubview(redView)
    stackView.addArrangedSubview(blueView)
    stackView.addArrangedSubview(greenView)
    stackView.addArrangedSubview(yellowView)
    
    XCPShowView("Distribution", view: stackView)
}
//: [Next](@next)
