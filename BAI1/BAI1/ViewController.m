//
//  ViewController.m
//  BAI1
//
//  Created by ThanhTung on 4/1/13.
//  Copyright (c) 2013 THANHTUNG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.mySlider = [[UISlider alloc]initWithFrame:CGRectMake(0, 50, 320, 0)];
    NSString *a = @"Phan";
    NSString *b = @"Thanh Tung";
    NSString *c = [NSString stringWithFormat:@"%@ %@",a,b];
    NSLog(@"%@",c);
    self.mySlider.minimumValue = 0.0;
    self.mySlider.maximumValue = 320.0;
    self.mySlider.thumbTintColor = [UIColor blackColor];
    self.mySlider.minimumTrackTintColor = [UIColor greenColor];
    self.mySlider.maximumTrackTintColor = [UIColor redColor];
    self.mySlider.value = self.mySlider.maximumValue / 2 ;
    float x = self.mySlider.value;
    self.myLabel = [[UILabel alloc]initWithFrame:CGRectMake(x, 55, 50, 50)];
    self.myLabel.text = @"tung";
    [self.mySlider addTarget : self
                      action : @selector(action:)
            forControlEvents : UIControlEventValueChanged];
    [self.view addSubview:self.myLabel];
    [self.view addSubview:self.mySlider];
}
- (void) action : (UISlider*) paraSender{
    if([paraSender isEqual:self.mySlider]){
        float x = paraSender.value;
        self.myLabel.frame = CGRectMake(x, 55, 50, 50);
        self.myLabel.text = @"tung";
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
