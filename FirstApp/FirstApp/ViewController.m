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
    [self rectangleLogic];
    [self stringLogic];
}

-(void) rectangleLogic {
    Rectangle *rect = [[Rectangle alloc] init];
    [rect setWidth:10];
    [rect setHeight:10];
    NSLog(@"정사각형 : %@",[rect isSquare]?@"YES":@"NO");
    
    [rect setWidth:20];
    [rect setHeight:30];
    int rectSize = [rect size];
    NSLog(@"폭 : %d, 넓이 : %d , 크기 : %d",[rect width],[rect height],rectSize);
}

-(void) stringLogic {
    //존재확인
    NSString *baseData = @"It is a good day to do coding";
    NSString *part = @"cod";
//    NSString *part = @"coda";
    if ([baseData rangeOfString:part].location == NSNotFound) {
      NSLog(@"%@가 %@ 에 없어요.",part,baseData);
    } else {
        NSLog(@"%@가 %@ 문장 안에 있네요.",part,baseData);
    }
    
    //iOS8 이후
    if ([baseData containsString:part]) {
        NSLog(@"iOS8이후, containsString 이용 로직 : %@가 %@ 문장 안에 있네요.",part,baseData);
    } else {
        NSLog(@"iOS8이후, containsString 이용 로직 : %@가 %@ 에 없어요.",part,baseData);
    }
}

@end
