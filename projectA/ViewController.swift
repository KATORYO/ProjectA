//
//  ViewController.swift
//  projectA
//
//  Created by 加藤諒 on 2017/10/16.
//  Copyright © 2017年 mirai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

  @IBOutlet weak var myTitle: UITextView!
  
  var attach:NSTextAttachment = NSTextAttachment()
  
  var matext = NSMutableAttributedString(string: "")
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    var a:NSAttributedString = myTitle.attributedText
    
    var matext = NSMutableAttributedString(string: "")
    
    matext.append(NSAttributedString(string: myTitle.text))
    
    var attach:NSTextAttachment = NSTextAttachment()
    attach.image = (#imageLiteral(resourceName: "Image"))
    
    //どこの行に333という文字をインサートするか
//    matext.insert(NSMutableAttributedString(string: "333"), at: 20)
    
    //1~100番目の文字に青色の文字を適用する
    matext.addAttribute(NSAttributedStringKey.foregroundColor, value: UIColor.red, range: NSMakeRange(1,14))
    
//    attach.bounds =
//      CGRect(x: 50, y: 50, width: 50, height: 50)
//    var attr_string:NSAttributedString = NSAttributedString(attachment: attach)
//    //result.insertAttributedString(matext, atIndex: )
      myTitle.attributedText = matext as NSAttributedString

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

