//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Cherrish Khay on 22/9/17.
//  Copyright © 2017 com.mobile.development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var images = [UIImageView]()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var contentWidth: CGFloat = 0.0
        print("scrollview size \(scrollView.frame.size.width)")
        
        for x in 0...2 {
            
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            let scrollWidth = scrollView.frame.size.width
            
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            
            newX =  scrollWidth/2 + scrollWidth * CGFloat(x)
            
            contentWidth += newX
            
            scrollView.addSubview(imageView)
            scrollView.clipsToBounds = false
            
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
            
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }
}