//
//  MGATextField.swift
//  MGUIKit
//
//  Created by matt on 21/09/2015.
//  Copyright © 2015 Matthew Green Associates. All rights reserved.
//

import UIKit

@IBDesignable public class MGATextField: UITextField {
    
    // BORDER COLOR
    // ------------
    
    @IBInspectable public var borderColor:UIColor = UIColor.grayColor() {
        didSet { self.layer.borderColor = borderColor.CGColor }
    }
    
    // BORDER WIDTH
    // ------------
    
    @IBInspectable public var borderWidth:CGFloat = 0.0 {
        didSet { self.layer.borderWidth = borderWidth }
    }
    
    // CORNER RADIUS
    // -------------
    
    @IBInspectable public var cornerRadius:CGFloat = 0.0 {
        didSet { self.layer.cornerRadius = cornerRadius }
    }
    
    // PLACEHOLDER COLOR
    // -----------------
    
    @IBInspectable public var placeholderColor:UIColor = UIColor.grayColor() {
        didSet {
            if let placeholderText = placeholder {
                self.attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [NSForegroundColorAttributeName:placeholderColor])
            }
        }
    }
    
    // PADDING
    // -------
    
    @IBInspectable public var paddingHorizontal:CGFloat = 0.0
    @IBInspectable public var paddingVertical:CGFloat = 0.0
    
    override public func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectMake(bounds.origin.x + paddingHorizontal, bounds.origin.y + paddingVertical, bounds.size.width - (paddingHorizontal * 2), bounds.size.height - (paddingVertical * 2))
    }
    
    override public func editingRectForBounds(bounds: CGRect) -> CGRect {
        return textRectForBounds(bounds)
    }
    
    // MAKE DEFAULT BORDER STYLE NONE
    // ------------------------------
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.borderStyle = .None
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.borderStyle = .None
    }

}
