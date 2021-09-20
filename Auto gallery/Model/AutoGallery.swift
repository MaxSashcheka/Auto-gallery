//
//  File.swift
//  Auto gallery
//
//  Created by Max Sashcheka on 9/20/21.
//

import UIKit

import UIKit

/// Отдельная машина
struct Car {
    var name: String
    var cost: String
    var image: UIImage
}

/// Группа машин
struct Group {
    var name: String
    var cars: [Car]
   
}

/// Группа групп. На экране DetailViewController отображается именно она
struct GroupCollection {
    var name: String
    var groups: [Group]
    var image: UIImage
    
    init() {
        let bmwM0 = Car(name: "BMW M240i xDrive Coupe", cost: "4 590 000 р", image: UIImage(named: "bmwm0")!)
        let bmwM1 = Car(name: "BMW M235i xDrive Gran Coupe", cost: "4 430 000 р", image: UIImage(named: "bmwm1")!)
        let bmwM2 = Car(name: "BMW M3 Competition", cost: "7 370 000 р", image: UIImage(named: "bmwm2")!)
        let bmwM3 = Car(name: "BMW M4 Competition Coupe", cost: "7 470 000 р", image: UIImage(named: "bmwm3")!)
        let bmwM4 = Car(name: "BMW M440i xDrive Cabrio", cost: "5 820 000 р", image: UIImage(named: "bmwm4")!)
        let bmwM5 = Car(name: "BMW M5", cost: "9 600 000 р", image: UIImage(named: "bmwm5")!)
        let bmwM = Group(name: "BMW M", cars: [bmwM0, bmwM1, bmwM2, bmwM3, bmwM4, bmwM5])
        
        let bmwX0 = Car(name: "BMW X1", cost: "2 520 000 р", image: UIImage(named: "bmwx1")!)
        let bmwX1 = Car(name: "BMW X2", cost: "2 680 000 р", image: UIImage(named: "bmwx2")!)
        let bmwX2 = Car(name: "BMW X3", cost: "4 420 000 р", image: UIImage(named: "bmwx3")!)
        let bmwX3 = Car(name: "BMW X4", cost: "4 750 000 р", image: UIImage(named: "bmwx4")!)
        let bmwX = Group(name: "BMW X", cars: [bmwX0, bmwX1, bmwX2, bmwX3])
        
        let bmw2ser0 = Car(name: "BMW 2 серии Coupe", cost: "3 370 000 р", image: UIImage(named: "bmw2ser0")!)
        let bmw2ser1 = Car(name: "BMW 2 серии Gran Coupe", cost: "2 880 000 р", image: UIImage(named: "bmw2ser1")!)
        let bmw2ser = Group(name: "BMW 2 series", cars: [bmw2ser0, bmw2ser1])
        
        let bmw3ser = Group(name: "BMW 3 series", cars: [Car(name: "BMW 3 серии", cost: "3 230 000 р", image: UIImage(named: "bmw3ser0")!)])
        
        let bmw4ser0 = Car(name: "BMW 4 серии Coupe", cost: "3 650 000 р", image: UIImage(named: "bmw4ser0")!)
        let bmw4ser1 = Car(name: "BMW 4 серии Gran Coupe", cost: "3 730 000 р", image: UIImage(named: "bmw4ser1")!)
        let bmw4ser2 = Car(name: "BMW 4 серии Cabrio", cost: "4 210 000 р", image: UIImage(named: "bmw4ser2")!)
        let bmw4ser = Group(name: "BMW 4 series", cars: [bmw4ser0, bmw4ser1, bmw4ser2])

        let bmw5ser = Group(name: "BMW 5 series", cars: [Car(name: "BMW 5 серии", cost: "3 230 000 р", image: UIImage(named: "bmw5ser0")!)])

        let bmw7ser0 = Car(name: "BMW 7 серии ", cost: "6 980 000 р", image: UIImage(named: "bmw7ser0")!)
        let bmw7ser1 = Car(name: "BMW 7 серии long", cost: "9 980 000 р", image: UIImage(named: "bmw7ser1")!)
        let bmw7ser = Group(name: "BMW 7 series", cars: [bmw7ser0, bmw7ser1])
        
        let bmw8ser0 = Car(name: "BMW 8 серии Coupe", cost: "7 980 000 р", image: UIImage(named: "bmw8ser0")!)
        let bmw8ser1 = Car(name: "BMW 8 серии Cabrio", cost: "8 630 000 р", image: UIImage(named: "bmw8ser1")!)
        let bmw8ser2 = Car(name: "BMW 8 серии Gran Coupe", cost: "7 360 000 р", image: UIImage(named: "bmw8ser2")!)
        let bmw8ser = Group(name: "BMW 8 series", cars: [bmw8ser0, bmw8ser1, bmw8ser2])

        self.name = "BMW"
        self.groups = [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser]
        self.image = UIImage(named: "bmwSymbol")!
    }
    
    init(name: String, groups: [Group], image: UIImage) {
        self.name = name
        self.groups = groups
        self.image = image
    }
    
}

struct AutoGallery {
    var name: String
    var groupsCollections: [GroupCollection]
    
    init() {
        
        let bmwM0 = Car(name: "BMW M240i xDrive Coupe", cost: "4 590 000 р", image: UIImage(named: "bmwm0")!)
        let bmwM1 = Car(name: "BMW M235i xDrive Gran Coupe", cost: "4 430 000 р", image: UIImage(named: "bmwm1")!)
        let bmwM2 = Car(name: "BMW M3 Competition", cost: "7 370 000 р", image: UIImage(named: "bmwm2")!)
        let bmwM3 = Car(name: "BMW M4 Competition Coupe", cost: "7 470 000 р", image: UIImage(named: "bmwm3")!)
        let bmwM4 = Car(name: "BMW M440i xDrive Cabrio", cost: "5 820 000 р", image: UIImage(named: "bmwm4")!)
        let bmwM5 = Car(name: "BMW M5", cost: "9 600 000 р", image: UIImage(named: "bmwm5")!)
        let bmwM = Group(name: "BMW M", cars: [bmwM0, bmwM1, bmwM2, bmwM3, bmwM4, bmwM5])
        
        let bmwX0 = Car(name: "BMW X1", cost: "2 520 000 р", image: UIImage(named: "bmwx1")!)
        let bmwX1 = Car(name: "BMW X2", cost: "2 680 000 р", image: UIImage(named: "bmwx2")!)
        let bmwX2 = Car(name: "BMW X3", cost: "4 420 000 р", image: UIImage(named: "bmwx3")!)
        let bmwX3 = Car(name: "BMW X4", cost: "4 750 000 р", image: UIImage(named: "bmwx4")!)
        let bmwX = Group(name: "BMW X", cars: [bmwX0, bmwX1, bmwX2, bmwX3])
        
        let bmw2ser0 = Car(name: "BMW 2 серии Coupe", cost: "3 370 000 р", image: UIImage(named: "bmw2ser0")!)
        let bmw2ser1 = Car(name: "BMW 2 серии Gran Coupe", cost: "2 880 000 р", image: UIImage(named: "bmw2ser1")!)
        let bmw2ser = Group(name: "BMW 2 series", cars: [bmw2ser0, bmw2ser1])
        
        let bmw3ser = Group(name: "BMW 3 series", cars: [Car(name: "BMW 3 серии", cost: "3 230 000 р", image: UIImage(named: "bmw3ser0")!)])
        
        let bmw4ser0 = Car(name: "BMW 4 серии Coupe", cost: "3 650 000 р", image: UIImage(named: "bmw4ser0")!)
        let bmw4ser1 = Car(name: "BMW 4 серии Gran Coupe", cost: "3 730 000 р", image: UIImage(named: "bmw4ser1")!)
        let bmw4ser2 = Car(name: "BMW 4 серии Cabrio", cost: "4 210 000 р", image: UIImage(named: "bmw4ser2")!)
        let bmw4ser = Group(name: "BMW 4 series", cars: [bmw4ser0, bmw4ser1, bmw4ser2])

        let bmw5ser = Group(name: "BMW 5 series", cars: [Car(name: "BMW 5 серии", cost: "3 230 000 р", image: UIImage(named: "bmw5ser0")!)])

        let bmw7ser0 = Car(name: "BMW 7 серии ", cost: "6 980 000 р", image: UIImage(named: "bmw7ser0")!)
        let bmw7ser1 = Car(name: "BMW 7 серии long", cost: "9 980 000 р", image: UIImage(named: "bmw7ser1")!)
        let bmw7ser = Group(name: "BMW 7 series", cars: [bmw7ser0, bmw7ser1])
        
        let bmw8ser0 = Car(name: "BMW 8 серии Coupe", cost: "7 980 000 р", image: UIImage(named: "bmw8ser0")!)
        let bmw8ser1 = Car(name: "BMW 8 серии Cabrio", cost: "8 630 000 р", image: UIImage(named: "bmw8ser1")!)
        let bmw8ser2 = Car(name: "BMW 8 серии Gran Coupe", cost: "7 360 000 р", image: UIImage(named: "bmw8ser2")!)
        let bmw8ser = Group(name: "BMW 8 series", cars: [bmw8ser0, bmw8ser1, bmw8ser2])

        let bmwGroupCollection = GroupCollection(name: "BMW", groups: [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser], image: UIImage(named: "bmwSymbol")!)
        
        
    
        self.name = "Auto gallery"
        self.groupsCollections = [bmwGroupCollection, bmwGroupCollection, bmwGroupCollection, bmwGroupCollection, bmwGroupCollection]
        
    }
}






