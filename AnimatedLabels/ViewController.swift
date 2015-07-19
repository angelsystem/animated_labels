//
//  ViewController.swift
//  AnimatedLabels
//
//  Created by angelito on 7/17/15.
//  Copyright (c) 2015 Angelito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myFirstLabel: UILabel!
    var iPhoneLabel: UILabel!
    var slideLabel: UILabel!
    var frozeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myFirstLabel = UILabel()
        iPhoneLabel = UILabel()
        slideLabel = UILabel()
        frozeImage = UIImageView()
        frozeImage.frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        frozeImage.image = UIImage(named: "frozen.jpg")
        view.addSubview(frozeImage)
        
        
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTapGesture:"))
        view.addGestureRecognizer(tapGesture)
    }
    
    func handleTapGesture(tapGesture: UITapGestureRecognizer){
        addLabels()
    }
    
    func addLabels(){
        let xcenter = UIScreen.mainScreen().bounds.size.width/2
        let myRedColor = UIColor(red:1.0, green:0.0,blue:0.0,alpha:1.0)
        let myBlueColor = UIColor(red:5.0, green:4.0,blue:112.0,alpha:1.0)
        
        myFirstLabel.text = "Hola"
        myFirstLabel.font = UIFont.systemFontOfSize(30)
        myFirstLabel.sizeToFit()
        myFirstLabel.textColor = myBlueColor
        myFirstLabel.center = CGPoint(x: xcenter, y: 40)
        view.addSubview(myFirstLabel)
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: nil, animations: {
            self.myFirstLabel.center = CGPoint(x: xcenter, y: 40 + 100)
        }, completion: nil)
        
        
        iPhoneLabel.text = "Pequeña"
        iPhoneLabel.font = UIFont.boldSystemFontOfSize(38)
        iPhoneLabel.textColor = myRedColor
        iPhoneLabel.sizeToFit()
        iPhoneLabel.center = CGPoint(x: xcenter, y: 50)
        view.addSubview(iPhoneLabel)
        iPhoneLabel.alpha = 0.0
        
        UIView.animateWithDuration(2.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: nil, animations: {
            self.iPhoneLabel.center = CGPoint(x: xcenter, y: 200)
            self.iPhoneLabel.alpha = 1.0
        }, completion: nil)
        
        slideLabel.text = "Melanie :)"
        slideLabel.alpha = 0
        slideLabel.font = UIFont.systemFontOfSize(48)
        slideLabel.textColor = UIColor(red: 5.0, green: 61.0, blue: 112.0, alpha: 1.0)
        slideLabel.sizeToFit()
        slideLabel.center = CGPoint(x: 0, y: 350)
        view.addSubview(slideLabel)
        UIView.animateWithDuration(2.0, delay: 2.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: nil, animations: {
            self.slideLabel.center = CGPoint(x: xcenter, y: 350)
            self.slideLabel.alpha = 1.0
            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

