//
//  ViewController.swift
//  UIWebViewTest
//
//  Created by Tetsuya Shiraishi on 2015/08/11.
//  Copyright (c) 2015年 Tetsuya Shiraishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

@IBInspectable var WebURL: String = ""
@IBInspectable var LocalFile: String = ""
@IBInspectable var InDirectory: String = ""
    
    @IBOutlet weak var wv: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var path:String = ""
        
        if (InDirectory != ""){
            path = NSBundle.mainBundle().pathForResource(LocalFile, ofType: "html", inDirectory: InDirectory)!
        }else{
            if(LocalFile != ""){
                path = NSBundle.mainBundle().pathForResource(LocalFile, ofType: "html")!
            }else{
                path = WebURL
            }
        }
        wv.loadRequest(NSURLRequest(URL: NSURL(string: path)!))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

