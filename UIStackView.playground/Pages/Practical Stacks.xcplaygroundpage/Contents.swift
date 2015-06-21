//: [Previous](@previous)
//: ## Practical Stack Views
import UIKit
import XCPlayground
//: To use a XIB in a playground you can recompile with this command:
//: >`/Applications/Xcode-beta.app/Contents/Developer/usr/bin/ibtool --compile View.nib View.xib")`

//: Then you can replace the View.nib in the resources in this playground to see it rendered in the timeline
let path = NSBundle.mainBundle().bundlePath.stringByAppendingPathComponent("Contents/Resources/View.xib")

var viewController = UIViewController()
var view = NSBundle.mainBundle().loadNibNamed("View", owner: viewController, options: nil).first as! UIView
XCPShowView("NIB Stack", view: view)

//: This XIB has basically no constraints, yet sets up an interface that would have taken tons of time and constraints previously.

//: [Next](@next)
