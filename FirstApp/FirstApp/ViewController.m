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
    [self collectionLogic];
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

-(void) collectionLogic {
    NSString *tData = @"password";
    NSData *encodeData = [tData dataUsingEncoding:NSUTF8StringEncoding];
    NSString *base64String = [encodeData base64EncodedStringWithOptions:0];
    NSLog(@"Encode String Value: %@", base64String);

    NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:base64String options:0];
    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
    NSLog(@"Decode String Value: %@", decodedString);
    
    NSArray *arr = [NSArray arrayWithObjects:@1,@"2",@3,decodedData, nil];
//    NSArray *arr = @[@1,@"2",@3,decodedData];
    [self showItem:arr];
    [arr count];
    NSLog(@"3번째 아이템 : %@",[arr objectAtIndex:2]);
    
    NSMutableArray *muArr = [[NSMutableArray alloc] initWithArray:arr];
    [muArr addObject:@"base64"];
    [muArr addObject:@789];
    NSLog(@"===== MU ARR =========");
    [self showItem:muArr];
    
    NSLog(@"\n\n===== NSDictionary =====\n\n");
    NSString *str = @"{\"company\":\"ideatec\",\"name\":\"HanIT\"}";
    NSData *jsonData = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *resultDic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingFragmentsAllowed error:nil];
    NSLog(@"%@",resultDic);
    NSLog(@"resultDic의 모든 Key >>> %@",[resultDic allKeys]);
    NSLog(@"resultDic의 모든 Key >>> %@",[resultDic allValues]);
    NSLog(@"resultDic[\"company\"] >>> %@",[resultDic objectForKey:@"company"]);
    
    NSMutableDictionary *muDic = [[NSMutableDictionary alloc] initWithDictionary:resultDic];
    [muDic setObject:@"010-2085-8078" forKey:@"cellPhone"];
    
    NSLog(@"muDic : %@",muDic);
    
    
}

-(void) showItem:(id)paramArr {
    for (id item in paramArr) {
        NSLog(@"%@",item);
    }
}
@end
