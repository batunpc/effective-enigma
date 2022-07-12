//
//  ViewController.swift
//  Image_viewer
//
//  Created by Batuhan Ipci on 2022-07-11.
//

import UIKit

class ViewController: UIViewController {
    
    let planets = Array(Model().listOfImages)
    var index = 0
    
    @IBOutlet weak var planetImg: UIImageView!
    @IBOutlet weak var choosePlanetPC: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        choosePlanetPC.delegate = self
        choosePlanetPC.dataSource = self
        
        planetImg.isUserInteractionEnabled = true
        
        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(gestureFired(_:)))
        let swipeLeftGesture = UISwipeGestureRecognizer(target: self, action: #selector(gestureFired(_:)))

        swipeRightGesture.direction = .right
        swipeLeftGesture.direction = .left
        
        planetImg.addGestureRecognizer(swipeRightGesture)
        planetImg.addGestureRecognizer(swipeLeftGesture)
    }

    override func viewWillAppear(_ animated: Bool) {
        Service().downloadImg(urlString: planets.first!.value , imgView: planetImg)
        super.viewWillAppear(animated)
    }
}

//MARK: planet picker view setup
extension ViewController : UIPickerViewDataSource , UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return planets.count //num of element in dictionary
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return (planets[row].key)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        Service().downloadImg(urlString: planets[row].value , imgView: planetImg)
        
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let pcView = UIView(frame: CGRect(x: 20, y: 20, width: 20, height: 20))
        return pcView
    }

    
//MARK: UISwipeGesture Helpers
    func previous() {
        if index < planets.count - 1 {
            index += 1
           
        } else if index == planets.count - 1 {
            index = 0
        }
    }
    func following() {
        if index > 0 {
            index -= 1
        } else if index == 0 {
            index = planets.count - 1
        }
    }
    @objc func gestureFired(_ gesture: UISwipeGestureRecognizer){
        if (gesture.direction == .right) {
            previous()
            Service().downloadImg(urlString: planets[index].value , imgView: planetImg)
            
        }
        if (gesture.direction == .left){
            following()
            Service().downloadImg(urlString: planets[index].value , imgView: planetImg)

        }
    }
    

  
 
//    func getData(url : String)  {
//
//        Service.shared.getImg(url: xurl) { data in
//            if let data = data {
//                DispatchQueue.main.async {
//                    self.planetImg.image = UIImage(data: data)
//                }
//            }
//        }
//    }
    
}


