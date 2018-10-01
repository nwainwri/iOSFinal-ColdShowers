//
//  Border.swift
//  ColdShowers
//
//  Created by Nathan Wainwright on 2018-09-28.
//  Copyright © 2018 Kit Clark-O'Neil and Nathan Wainwright All rights reserved.
//

import UIKit

class MakeBorder: NSObject
{
  class func addRightBorder (inpView: UIView, withColor: UIColor)
  {
    let layer = CALayer()
    layer.borderColor = withColor.cgColor
    layer.borderWidth = 1
    layer.frame = CGRect(x: inpView.frame.size.width,
                         y: 0,
                         width: 1,
                         height: inpView.frame.size.height);
    
    inpView.layer.addSublayer(layer);
  }
  
  class func addLeftBorder (inpView: UIView, withColor: UIColor)
  {
    let layer = CALayer()
    layer.borderColor = withColor.cgColor
    layer.borderWidth = 1
    layer.frame = CGRect(x: 0,
                         y: 0,
                         width: 1,
                         height: inpView.frame.size.height);
    
    inpView.layer.addSublayer(layer);
  }
  
  class func addTopBorder (inpView: UIView, withColor: UIColor)
  {
    let layer = CALayer()
    layer.borderColor = withColor.cgColor
    layer.borderWidth = 1
    layer.frame = CGRect(x: 0,
                         y: 0,
                         width: inpView.frame.size.width,
                         height: 1);
    
    inpView.layer.addSublayer(layer);
  }
  
  class func addBottomBorder (inpView: UIView, withColor: UIColor)
  {
    let layer = CALayer()
    layer.borderColor = withColor.cgColor
    layer.borderWidth = 1
    layer.frame = CGRect(x: 0,
                         y: inpView.frame.size.height - 1,
                         width: inpView.frame.size.width,
                         height: 1);
    
    inpView.layer.addSublayer(layer);
  }
  
  class func addAllBorders (inpView: UIView, withColor: UIColor, andWidthOf: CGFloat)
  {
    let layer = CALayer()
    layer.borderColor = withColor.cgColor
    layer.borderWidth = andWidthOf;
    layer.frame = CGRect(x: 0,
                         y: 0,
                         width: inpView.frame.size.width ,
                         height: inpView.frame.size.height )
    
    inpView.layer.addSublayer(layer);
  }
}
