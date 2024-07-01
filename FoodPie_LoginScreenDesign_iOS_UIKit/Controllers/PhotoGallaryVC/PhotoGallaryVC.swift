//
//  PhotoGallaryVC.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 23/03/24.
//

import UIKit

class PhotoGallaryVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var photosData: PhotoResponse?
    var imageCache: [String: UIImage] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPhotos()
        myCollectionView.register(UINib(nibName: "PhotoGallaryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell1")
    }
    
    internal func fetchPhotos() {
        guard let endPoint = URL(string: "https://api.slingacademy.com/v1/sample-data/photos") else {
            print("endPoint is not a valid URL")
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: endPoint) {(data,response,error) in
            if let error = error {
                print("Error: \(error)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                self.photosData = try decoder.decode(PhotoResponse.self, from: data)
                
                DispatchQueue.main.async {
                    self.myCollectionView.reloadData()
                }
                
            } catch {
                print("Error decoding JSON: \(error.localizedDescription)")
            }
        }
        task.resume()
    }

    func downloadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
        if let cachedImage = imageCache[url.absoluteString] {
            completion(cachedImage)
        } else {
            let session = URLSession.shared
            let task = session.dataTask(with: url) { data, response, error in
                guard let imageData = data, error == nil else {
                    completion(nil)
                    return
                }
                
                if let downloadedImage = UIImage(data: imageData) {
                    self.imageCache[url.absoluteString] = downloadedImage
                    completion(downloadedImage)
                }
            }
            task.resume()
        }
    }



    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photosData?.photos.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as? PhotoGallaryCollectionViewCell,
              let photo = photosData?.photos[indexPath.item] else {
            return UICollectionViewCell()
        }
        
        downloadImage(from: photo.url) { image in
            DispatchQueue.main.async {
                cell.imageView.image = image ?? UIImage(named: "placeholder")
            }
        }
        
        return cell
    }
    
    deinit {
        print("PhotoGallaryVC has been REMOVED...!")
    }
}
