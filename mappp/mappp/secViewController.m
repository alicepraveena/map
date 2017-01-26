//
//  secViewController.m
//  mappp
//
//  Created by Dinesh Jaganathan on 14/10/16.
//  Copyright © 2016 Greens. All rights reserved.
//

#import "secViewController.h"

@interface secViewController ()
@end

@implementation secViewController

- (void)viewDidLoad {
    str=[[NSBundle mainBundle]pathForResource:@"test" ofType:@"plist"];
    dict=[[NSDictionary alloc]initWithContentsOfFile:str];
    NSLog(@"%@",dict);
    
    for (i=0; i<3; i++)
    {
    
MKPointAnnotation  *ann=[[MKPointAnnotation alloc]init];
    CLLocationCoordinate2D center;
   center.latitude=[[[[dict valueForKey:@"locations"]valueForKey:@"lan"]objectAtIndex:i]doubleValue];
    center.longitude=[[[[dict valueForKey:@"locations"]valueForKey:@"lat"]objectAtIndex:i]doubleValue];
          NSLog(@"%f",center.latitude);
        NSLog(@"%f",center.longitude);
        

        ann.coordinate=center;
    [mk addAnnotation:ann];
      
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
