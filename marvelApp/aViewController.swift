//
//  aViewController.swift
//  marvelApp
//
//  Created by Derek on 2018/8/7.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

class aViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var mytext: UITextView!
    
    var photoFromFirstView:String?
    var stringFromFirstView:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myImage.image = UIImage(named: photoFromFirstView!)
        mytext.text = stringFromFirstView!
        
        // Do any additional setup after loading the view.
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
