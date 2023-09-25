//
//  ViewController.swift
//  SafariSwift
//
//  Created by Matt Larkin on 4/8/15.
//  Copyright (c) 2015 Matt Larkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate,UIAlertViewDelegate {
    @IBOutlet var textField: UITextField!

    @IBOutlet var webView: UIWebView!
    
    @IBOutlet var spinner: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadRequestWithString(theString: "http://www.mobilemakers.co")
        webView.delegate = self

    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        webView.loadRequestWithString(theString: textField.text)
        return true
    }




    func webView(webView: UIWebView, didFailWithLoadError: NSError) {
        let alertController = UIAlertController(title: "Error", message: "Sure didn't work", preferredStyle: UIAlertControllerStyle.Alert)

        let homeAction = UIAlertAction(title: "Home", style: UIAlertActionStyle.Default) { (ACTION) -> Void in
            webView.loadRequestWithString(theString: "http://www.mobilemakers.co")

}

        let cancelAction = UIAlertAction(title: "cancel", style: UIAlertActionStyle.Cancel) { (ACTION) -> Void in
        //do nothing
        }

    }

    func webViewDidStartLoad(webView: UIWebView) {
        spinner.startAnimating()
    }


    func webViewDidFinishLoad(webView:UIWebView) {
        spinner.stopAnimating()
    }
}

