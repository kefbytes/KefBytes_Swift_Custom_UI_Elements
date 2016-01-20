//
//  KefButton.swift
//  KefCustomUIElements
//
//  Created by Franks, Kent on 12/15/15.
//  Copyright © 2015 Franks, Kent. All rights reserved.
//


/*
Button not yet functional
*/

import UIKit

@IBDesignable public class KefButton: UIControl {
    
    var text: String?
    
    private let button: UIButton = UIButton(type: UIButtonType.Custom)
    
    // MARK: - IB Editable Properties
    @IBInspectable public var title: String = "" {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable public var titleColor: UIColor = UIColor.blackColor() {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable public var buttonColor: UIColor = UIColor.clearColor() {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.clearColor() {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0.0 {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable public var cornerRadius: CGFloat = 0.0 {
        didSet { setNeedsLayout() }
    }
    
    // MARK: - Initializers
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialiseView()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialiseView()
    }
    
    // MARK: - Setup Views
    private func initialiseView() {
        self.addSubview(button)
        button.addTarget(self, action: Selector("buttonTouchUpInside:event:"), forControlEvents: UIControlEvents.TouchUpInside)
        button.addTarget(self, action: Selector("touchDown:event:"), forControlEvents: UIControlEvents.TouchDown)
        setNeedsLayout()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        button.frame = CGRectMake(0, 0, self.frame.width, self.frame.height)
        button.setTitleColor(titleColor, forState: UIControlState.Normal)
        button.setTitle(title, forState: UIControlState.Normal)
        button.backgroundColor = buttonColor
        button.layer.borderColor = borderColor.CGColor
        button.layer.borderWidth = borderWidth
        button.layer.cornerRadius = cornerRadius
    }
    
    // MARK: - Action Events
    public func touchDown(control: UIControl,event: AnyObject) {
        UIView.animateWithDuration(0.1) { () -> Void in
            let newtransform = CGAffineTransformMakeScale(0.985, 0.985)
            self.transform = newtransform
        }
    }
    
    public func buttonTouchUpInside(control: UIControl,event: AnyObject) {
        sendActionsForControlEvents(UIControlEvents.TouchUpInside)
    }
    
    
}
