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
            subtype: .any, options: nil
        )
        var albums: NSMutableArray = []
        list.enumerateObjects { album, index, isStop in
//            let title = String(describing: album.localizedTitle)
//            print(title)
//            if title == String(describing: "Lovegreen") {
//                albums.add(album)
//            }
            
            if index <= 4546 {
                albums.add(album)
            }
        }
        print("👅 albums.count: \(albums.count)")
        PHPhotoLibrary.shared().performChanges({
            PHAssetCollectionChangeRequest.deleteAssetCollections(albums)
        }) { isSuccess, error in
            if isSuccess {
                print("🤗 success: delete album.")
            } else {
                print("😱 failure: \(error)")
            }
        }
    }
}

