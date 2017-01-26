//
//  secViewController.h
//  mappp
//
//  Created by Dinesh Jaganathan on 14/10/16.
//  Copyright © 2016 Greens. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface secViewController : UIViewController
{
    
    
   IBOutlet MKMapView *mk;
    NSDictionary *dict;
    NSString *str;
    //MKPointAnnotation *m1;
     CLLocationCoordinate2D loc;
    int i;

}

@end
