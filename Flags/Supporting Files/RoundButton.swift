//
//  File.swift
//  Flags
//
//  Created by Marc Kraus on 01.01.18.
//  Copyright © 2018 Marc Kraus. All rights reserved.
//
import UIKit

@IBDesignable
class RoundButton: UIButton {
    
    @IBInspectable var roundButton:Bool = false{
        didSet{
            if roundButton {
                layer.cornerRadius = frame.height / 3
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundButton {
            layer.cornerRadius = frame.height / 3
        }
    }
}
