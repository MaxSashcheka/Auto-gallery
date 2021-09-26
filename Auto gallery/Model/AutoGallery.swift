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
        //MARK: - BMW
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
        
        //MARK: - Audi
        
        let audiSov0 = Car(name: "Q5", cost: "2 256 000 р", image: UIImage(named: "sov0")!)
        let audiSov1 = Car(name: "SQ5", cost: "3 260 000 р", image: UIImage(named: "sov1")!)
        let audiSov2 = Car(name: "Q7 TDI", cost: "2 736 000 р", image: UIImage(named: "sov2")!)
        let audiSov3 = Car(name: "Q8", cost: "2 980 000 р", image: UIImage(named: "sov3")!)
        let audiSov4 = Car(name: "Q8 TDI", cost: "3 256 000 р", image: UIImage(named: "sov4")!)
        let audiSov5 = Car(name: "RS Q8", cost: "4 250 000 р", image: UIImage(named: "sov5")!)
        let audiSov = Group(name: "SUV", cars: [audiSov0, audiSov1, audiSov2, audiSov3, audiSov4, audiSov5])
        
        let audiCoupe0 = Car(name: "A5 Coupe", cost: "3 256 000 р", image: UIImage(named: "coupe0")!)
        let audiCoupe1 = Car(name: "RS5 Coupe", cost: "2 786 000 р", image: UIImage(named: "coupe1")!)
        let audiCoupe = Group(name: "Coupe", cars: [audiCoupe0, audiCoupe1])
        
        let audiSport0 = Car(name: "SQ5", cost: "3 256 000 р", image: UIImage(named: "sport0")!)
        let audiSport1 = Car(name: "SQ8 TDI", cost: "2 756 000 р", image: UIImage(named: "sport1")!)
        let audiSport2 = Car(name: "RS Q8", cost: "3 956 000 р", image: UIImage(named: "sport2")!)
        let audiSport = Group(name: "Sport", cars: [audiSport0, audiSport1, audiSport2])
        
        let audiSportBack0 = Car(name: "SQ5", cost: "2 159 000 р", image: UIImage(named: "sportback0")!)
        let audiSportBack1 = Car(name: "SQ5", cost: "3 670 000 р", image: UIImage(named: "sportback1")!)
        let audiSportBack2 = Car(name: "SQ5", cost: "3 100 000 р", image: UIImage(named: "sportback2")!)
        let audiSportBack = Group(name: "Sportback", cars: [audiSportBack0, audiSportBack1, audiSportBack2])
        
        let audiGroupCollection = GroupCollection(name: "Audi", groups: [audiSov, audiCoupe, audiSport, audiSportBack], image: UIImage(named: "audiSymbol")!)
        
        //MARK: - Kia
        
        let kiaStinger0 = Car(name: "Stinger luxe", cost: "2 256 000 р", image: UIImage(named: "stinger0")!)
        let kiaStinger1 = Car(name: "Stinger GT Line", cost: "3 756 000 р", image: UIImage(named: "stinger1")!)
        let kiaStinger2 = Car(name: "Stinger GT Line Suede", cost: "3 596 000 р", image: UIImage(named: "stinger2")!)
        let kiaStinger = Group(name: "Stinger", cars: [kiaStinger2, kiaStinger1, kiaStinger0])
        
        let kiaK9000 = Car(name: "K900 Prestige", cost: "5 856 000 р", image: UIImage(named: "k9000")!)
        let kiaK9001 = Car(name: "K900 Premium", cost: "6 220 000 р", image: UIImage(named: "k9001")!)
        let kiaK900 = Group(name: "K900", cars: [kiaK9000, kiaK9001])
        
        let kiaPicanto0 = Car(name: "Picanto Classic", cost: "2 250 000 р", image: UIImage(named: "picanto0")!)
        let kiaPicanto1 = Car(name: "Picanto Comfort", cost: "2 550 000 р", image: UIImage(named: "picanto1")!)
        let kiaPicanto2 = Car(name: "Picanto Premium", cost: "2 990 000 р", image: UIImage(named: "picanto2")!)
        let kiaPicanto = Group(name: "Picanto", cars: [kiaPicanto2, kiaPicanto1, kiaPicanto0])
        
        let kiaGroupCollection = GroupCollection(name: "Kia", groups: [kiaStinger, kiaK900, kiaPicanto], image: UIImage(named: "kiaSymbol")!)
        
        
        let honda = GroupCollection(name: "Honda", groups: [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser], image: UIImage(named: "hondaSymbol")!)
        let lexus = GroupCollection(name: "Lexus", groups: [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser], image: UIImage(named: "lexusSymbol")!)
        let mazda = GroupCollection(name: "Mazda", groups: [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser], image: UIImage(named: "mazdaSymbol")!)
        let mercedes = GroupCollection(name: "Mercedes", groups: [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser], image: UIImage(named: "mercedesSymbol")!)
        let subaru = GroupCollection(name: "Subaru", groups: [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser], image: UIImage(named: "subaruSymbol")!)
        let volkswagen = GroupCollection(name: "Volkswagen", groups: [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser], image: UIImage(named: "volkswagenSymbol")!)
        let volvo = GroupCollection(name: "Volvo", groups: [bmwM, bmwX, bmw2ser, bmw3ser, bmw4ser, bmw5ser, bmw7ser, bmw8ser], image: UIImage(named: "volvoSymbol")!)
        
    
        self.name = "Auto gallery"
        self.groupsCollections = [bmwGroupCollection, audiGroupCollection, kiaGroupCollection, honda, lexus, mazda, mercedes, subaru, volkswagen, volvo]
        
    }
}






