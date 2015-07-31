//: [Previous](@previous)
//: ## Nested Stacks
import UIKit
import XCPlayground

if #available(iOS 9, *) {
    var stackViewContainer = UIStackView(frame: CGRectMake(0, 0, 500, 500))
    stackViewContainer.axis = .Horizontal
    stackViewContainer.spacing = 10
    stackViewContainer.distribution = .FillEqually

    var stackViewColumn1 = UIStackView()
    stackViewColumn1.axis = .Vertical
    stackViewColumn1.spacing = 10
    stackViewColumn1.distribution = .FillEqually
    
    var view1 = UIView()
    view1.backgroundColor = .greenColor()
    var view2 = UIView()
    view2.backgroundColor = .yellowColor()
    
    stackViewColumn1.addArrangedSubview(view1)
    stackViewColumn1.addArrangedSubview(view2)
    
    var stackViewColumn2 = UIStackView()
    stackViewColumn2.axis = .Vertical
    stackViewColumn2.spacing = 10
    stackViewColumn2.distribution = .FillEqually
    
    var view3 = UIView()
    view3.backgroundColor = .whiteColor()
    var view4 = UIView()
    view4.backgroundColor = .blueColor()
    
    stackViewColumn2.addArrangedSubview(view3)
    stackViewColumn2.addArrangedSubview(view4)

    stackViewContainer.addArrangedSubview(stackViewColumn1)
    stackViewContainer.addArrangedSubview(stackViewColumn2)
    
    XCPShowView("Nested Stacks", view: stackViewContainer)
}
//: [Next](@next)
