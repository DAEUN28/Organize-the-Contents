//
//  ViewController.swift
//  ImageDownloader
//
//  Created by baby1234 on 27/01/2019.
//  Copyright © 2019 baby1234. All rights reserved.
//

import UIKit

class ViewController: UIViewController, URLSessionDownloadDelegate {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    
    var downloadTask:URLSessionDownloadTask!
    
    @IBAction func downloadAction(_ sender: Any){
        imgView.image = nil
        indicatorView.startAnimating()
        let sessionConfiguration = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: OperationQueue.main)
//        downloadTask = session.downloadTask(with: URL(string: "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!)
        
        downloadTask = session.downloadTask(with: URL(string: "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg")!, completionHandler: { data, response, error -> Void in
            let dataTemp:Data = try! Data(contentsOf: data!)
            self.imgView.image = UIImage(data: dataTemp)
            self.indicatorView.stopAnimating()
        })
        downloadTask.resume()
    }
    
    @IBAction func suspendAction(_ sender: UIButton) {
        downloadTask.suspend()
    }
    
    @IBAction func resumeAction(_ sender: UIButton) {
        downloadTask.resume()
    }
    
    @IBAction func cancelAction(_ sender: UIButton) {
        downloadTask.cancel()
        progressView.setProgress(0.0, animated: false)
        indicatorView.stopAnimating()
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let progress:Float = Float(totalBytesWritten)/Float(totalBytesExpectedToWrite)
        progressView.setProgress(progress, animated: true)
    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        let dataTemp:Data = try! Data(contentsOf: location)
        imgView.image = UIImage(data: dataTemp)
        indicatorView.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

