//
//  ViewController.m
//  FirstApp
//
//  Created by INTAEK HAN on 2021/05/02.
//

#import "ViewController.h"
#import "Rectangle.h"

@interface ViewController () {
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Rectangle *rect = [[Rectangle alloc] init];
    [rect setWidth:10];
    [rect setHeight:10];
    NSLog(@"정사각형 : %@",[rect isSquare]?@"YES":@"NO");
    
    [rect setWidth:20];
    [rect setHeight:30];
    int rectSize = [rect size];
    NSLog(@"폭 : %d, 넓이 : %d , 크기 : %d",[rect width],[rect height],rectSize);
    
}

@end
