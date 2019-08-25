//
//  ViewController.swift
//  MiniBrowser
//
//  Created by baby1234 on 18/01/2019.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var mainWebView: WKWebView!
    @IBOutlet weak var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialURL = "https://www.facebook.com"
        let myURL = URL(string: initialURL)
        let myRequest = URLRequest(url: myURL!)
        mainWebView.load(myRequest)
        urlTextField.text = initialURL
        
        mainWebView.navigationDelegate = self
    }


    @IBAction func bookMarkAction(_ sender: UISegmentedControl) {
        
        let bookmarkURL = bookMarkSegmentedControl.titleForSegment(at: bookMarkSegmentedControl.selectedSegmentIndex)
        let urlString = "https://www.\(bookmarkURL!).com"

        mainWebView.load(URLRequest(url: URL(string: urlString)!))
        
        urlTextField.text = urlString
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        var urlString = "\(urlTextField.text!)"
        
        if !urlString.hasPrefix("https://"){
            urlString = "https://\(urlTextField.text!)"
        }
        urlTextField.text = urlString
        
        mainWebView.load(URLRequest(url: URL(string: urlString)!))

        textField.resignFirstResponder()
        return true
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        spinningActivityIndicatorView.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        spinningActivityIndicatorView.stopAnimating()
    }
    
    @IBAction func goBackAction(_ sender: UIBarButtonItem) {
        mainWebView.goBack()
    }
    
    @IBAction func goForwardAction(_ sender: UIBarButtonItem) {
        mainWebView.goForward()
    }
    
    @IBAction func stopLoadingAction(_ sender: UIBarButtonItem) {
        mainWebView.stopLoading()
    }
    
    @IBAction func reloadAction(_ sender: UIBarButtonItem) {
        mainWebView.reload()
    }
}

