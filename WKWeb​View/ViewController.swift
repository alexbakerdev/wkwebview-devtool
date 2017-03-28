//
//  ViewController.swift
//  UIWebview
//
//  Created by Alexander Baker on 27/03/2017.
//  Copyright © 2017 Fresh8. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: UIScreen.main.bounds, configuration: webConfiguration)
        
        webView.uiDelegate = self
        
        view = UIView(frame: UIScreen.main.bounds)
        
        view.backgroundColor = UIColor.black
        view.addSubview(webView)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://www.google.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if ((UIDevice.current.systemVersion as NSString).floatValue >= 7) {
            var viewBounds = webView.bounds
            viewBounds.origin.y = 20
            viewBounds.size.height = viewBounds.size.height - 20
            webView.frame = viewBounds
        }
    }
    
}
