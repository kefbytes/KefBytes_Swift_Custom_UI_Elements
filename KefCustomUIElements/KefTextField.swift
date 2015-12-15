//
//  KefTextField.swift
//  KefCustomUIElements
//
//  Created by Franks, Kent on 12/15/15.
//  Copyright © 2015 Franks, Kent. All rights reserved.
//

import UIKit

@IBDesignable public class KefTextField: UIControl {
    
    public let textField: UITextField = UITextField()
    
    // MARK: - IB Setable Properties
    @IBInspectable var cornerRadius: CGFloat = 28.0 {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.lightGrayColor() {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var placeholder: String = "" {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var fontSize: CGFloat = 14 {
        didSet { setNeedsLayout() }
    }
    
    @IBInspectable var inset: CGFloat = 25 {
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
    
    // MARK: - Creating the views
    private func initialiseView() {
        self.addSubview(textField)
        setNeedsLayout()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        textField.layer.frame = CGRectMake(0, 0, self.frame.width, self.frame.height)
        
        textField.layer.cornerRadius = cornerRadius
        textField.layer.borderWidth = borderWidth
        textField.layer.borderColor = borderColor.CGColor
        
        let attributes = [
            NSForegroundColorAttributeName: UIColor.lightGrayColor(),
            NSFontAttributeName : UIFont(name: "HelveticaNeue", size: fontSize)!
        ]
        
        textField.attributedPlaceholder = NSAttributedString(string: placeholder, attributes:attributes)
        
        let paddingView = UIView(frame: CGRectMake(0, 0, inset, self.textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = UITextFieldViewMode.Always
        
        self.addSubview(textField)
    }
    
}

