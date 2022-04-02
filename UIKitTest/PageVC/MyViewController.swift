//
//  MyViewController.swift
//  UIKitTest
//
//  Created by Daniil Silin on 02/04/2022.
//

import UIKit

class MyViewController: UIPageViewController {

//    MARK: - Variables
    var cars = [CarsHelper]()
    let kekw = UIImage(named: "kekw")
    let loln = UIImage(named: "loln")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Cars"
        
        let firstCar = CarsHelper(name: "Car - Kekw", image: kekw!)
        let secondCar = CarsHelper(name: "Car - Loln", image: loln!)
        
        cars.append(firstCar)
        cars.append(secondCar)
    }
    
//    MARK: - create VC
    lazy var arrayCarVC: [CarViewController] = {
        var carsVC = [CarViewController]()
        
        for car in cars {
            carsVC.append(CarViewController(carWith: car))
        }
        
        return carsVC
    }()
    
//    MARK: - init UIPageViewController
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation, options: nil)
        
        self.view.backgroundColor = .green
        
        self.dataSource = self
        self.delegate = self
        
        setViewControllers([arrayCarVC[0]], direction: .forward, animated: true)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MyViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? CarViewController else {
            return nil
        }
        
        if let index = arrayCarVC.firstIndex(of: viewController) {
            if index > 0 {
                return arrayCarVC[index-1]
            }
        }
        
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? CarViewController else {
            return nil
        }
        
        if let index = arrayCarVC.firstIndex(of: viewController) {
            if index < cars.count - 1 {
                return arrayCarVC[index+1]
            }
        }
        
        return nil

    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return cars.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
