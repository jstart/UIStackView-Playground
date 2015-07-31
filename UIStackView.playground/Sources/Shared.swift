import UIKit

public func smallViewWithColor(color:UIColor) -> UILabel{
    let view =  UILabel(frame: CGRectMake(0, 0, 100, 100))
    view.backgroundColor = color
    view.text = "Distribution"
    return view
}

public func boldWhiteLabel(text:String) -> UILabel{
    let label = UILabel()
    label.font = UIFont.boldSystemFontOfSize(300)
    label.text = text
    label.textColor = UIColor.whiteColor()
    return label
}

public func boldWhiteLabelLarge(text:String) -> UILabel{
    let label = boldWhiteLabel(text)
    label.numberOfLines = 0
    label.frame = CGRectMake(0, 0, 5000, 600)
    return label
}
@available(iOS 9.0, *)
public func hStack(views:[UIView]) -> UIStackView {
    let stackView = UIStackView(arrangedSubviews: views)
    stackView.frame = CGRectMake(0, 0, 5000, 400)
    stackView.axis = .Horizontal
    stackView.spacing = 10
    stackView.distribution = .FillProportionally
    return stackView
}
