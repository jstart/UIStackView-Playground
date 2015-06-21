import UIKit

public func smallViewWithColor(color:UIColor) -> UIView{
    let view =  UIView(frame: CGRectMake(0, 0, 100, 100))
    view.backgroundColor = color
    return view
}
