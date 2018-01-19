//
//  ViewController.swift
//  DeletePhotoAlbum
//
//  Created by sano on 2018/01/19.
//  Copyright © 2018年 sano. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func deleteButtonTapped(_ sender: Any) {
        let list = PHAssetCollection.fetchAssetCollections(
            with: .album,
            subtype: .any, options: nil)
        print("👽 \(deleteButtonTapped)")
    }
}

