//
//  ViewController.swift
//  change pic
//
//  Created by Monica Lo on 2021/4/23.
//

import UIKit

let movieImages = ["conan.jpg", "gojira.jpg", "love.jpg"]
let nameLabels = ["名偵探柯南：緋色的彈丸", "哥吉拉大戰金剛", "當男人戀愛時"]
let pageLabels = ["1/3", "2/3", "3/3"]

var arrayIndex: Int = 0

class ViewController: UIViewController {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var pageDot: UIPageControl!
    @IBOutlet weak var nameOfMovie: UILabel!
    @IBOutlet weak var numberOfPage: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    
    func sync() {
        movieImage.image = UIImage(named: movieImages[arrayIndex])
        pageDot.currentPage = arrayIndex
        nameOfMovie.text = nameLabels[arrayIndex]
        numberOfPage.text = pageLabels[arrayIndex]
        segment.selectedSegmentIndex = arrayIndex
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sync()
    }

    @IBAction func pageControlChange(_ sender: Any) {
        if pageDot.currentPage == 0 {
           arrayIndex = 0
           sync()
        }
        else if pageDot.currentPage == 1 {
           arrayIndex = 1
           sync()
        }
        else {
           arrayIndex = 2
           sync()
        }
    }
    
    @IBAction func leftButtonChange(_ sender: Any) {
        if arrayIndex == 0 {
           arrayIndex = arrayIndex + 2
           sync()
        }
        else if arrayIndex == 1 {
           arrayIndex = arrayIndex - 1
           sync()
        }
        else {
           arrayIndex = arrayIndex - 1
           sync()
        }
    }
    
 
    @IBAction func rightButtonChange(_ sender: Any) {
        if arrayIndex == 0 {
           arrayIndex = arrayIndex + 1
           sync()
        }
        else if arrayIndex == 1 {
           arrayIndex = arrayIndex + 1
           sync()
        }
        else {
           arrayIndex = arrayIndex - 2
           sync()
        }
    }
    
    @IBAction func segmentedControlChange(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
           arrayIndex = 0
           sync()
        }
        else if segment.selectedSegmentIndex == 1 {
           arrayIndex = 1
           sync()
        }
        else {
           arrayIndex = 2
           sync()
        }
    }
    
    @IBAction func swipeShowNextPic(_ sender: Any) {
        if arrayIndex == 0 {
           arrayIndex = arrayIndex + 1
           sync()
        }
        else if arrayIndex == 1 {
           arrayIndex = arrayIndex + 1
           sync()
         }
        else {
           arrayIndex = arrayIndex - 2
           sync()
        }
    }
    
    @IBAction func swipeShowPrecPic(_ sender: Any) {
        if arrayIndex == 0 {
           arrayIndex = arrayIndex + 2
           sync()
        }
        else if arrayIndex == 1 {
           arrayIndex = arrayIndex - 1
            sync()
        }
        else {
           arrayIndex = arrayIndex - 1
           sync()
        }
    }
    
}

