//
//  HelpViewController.swift
//  BurgerBurner
//
//  Created by  on 2023-04-01.
//

import UIKit
import WebKit

class HelpViewController: UIViewController, WKNavigationDelegate {

    
    @IBOutlet weak var wbView: WKWebView!
    @IBOutlet weak var act: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //loads url to web view in our web link page
        let urlAddress = URL(string: "https://www.youtube.com/watch?v=eBGIQ7ZuuiU")!
        let url = URLRequest(url: urlAddress)
        wbView?.load(url)
        wbView.navigationDelegate = self
    }
    
    // function that handles UIActivityIndicator, if page is currently loading, then the view will run the loading animation
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        act?.isHidden = false
        act?.startAnimating()
    }
    // function that handles UIActivityIndicator, if page is done loading, then the view will stop running the loading animation
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        act?.isHidden = true
        act?.stopAnimating()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
