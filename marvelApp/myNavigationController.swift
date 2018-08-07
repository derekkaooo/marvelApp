//
//  myNavigationController.swift
//  marvelApp
//
//  Created by Derek on 2018/8/7.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit

class myNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let image = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.orange]
        
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
