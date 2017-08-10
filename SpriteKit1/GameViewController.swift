//
//  GameViewController.swift
//  SpriteKit1
//
//  Created by John Dwyer on 8/8/17.
//  Copyright © 2017 John Dwyer. All rights reserved.
//
import UIKit
import SpriteKit
import GoogleMobileAds

class GameViewController: UIViewController, GADBannerViewDelegate{
    
    var adBannerView: GADBannerView!


    override func viewDidLoad() {

        
        
        super.viewDidLoad()
        
      
        let scene = GameScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
        
        
        adBannerView = GADBannerView(frame: CGRect(x: 0, y: self.view.frame.size.height * 0.88, width: self.view.frame.size.width, height: 50))
        adBannerView.delegate = self
        adBannerView.rootViewController = self
        adBannerView.adUnitID = "ca-app-pub-531615035778e9665/3274184541"
        
        print ("lit")
        
        let reqAd = GADRequest()
        reqAd.testDevices = [kGADSimulatorID] // If you want test ad's
        adBannerView.load(reqAd)
        
        self.view.addSubview(adBannerView)
    
    }
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
