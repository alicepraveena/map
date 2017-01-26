//
//  ViewController.m
//  mappp
//
//  Created by Dinesh Jaganathan on 14/10/16.
//  Copyright © 2016 Greens. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "secViewController.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    str=[[NSBundle mainBundle]pathForResource:@"test" ofType:@"plist"];
    dict=[[NSDictionary alloc]initWithContentsOfFile:str];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [[[dict valueForKey:@"locations"]valueForKey:@"name"]count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    TableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.l1.text=[[[dict valueForKey:@"locations"]valueForKey:@"name"]objectAtIndex:indexPath.row];
    cell.l2.text=[NSString stringWithFormat:@"%@",[[[dict valueForKey:@"locations"]valueForKey:@"lan"]objectAtIndex:indexPath.row]];
    cell.l3.text=[NSString stringWithFormat:@"%@",[[[dict valueForKey:@"locations"]valueForKey:@"lat"]objectAtIndex:indexPath.row]];
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    secViewController *second=[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [[self navigationController]pushViewController:second animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
