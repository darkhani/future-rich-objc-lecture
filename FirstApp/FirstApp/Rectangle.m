//
//  Rectangle.m
//  FirstApp
//
//  Created by INTAEK HAN on 2021/05/02.
//

#import "Rectangle.h"

@implementation Rectangle
@synthesize width,height;


-(void)setWidth:(int)newWidth height:(int)newHeight {
    [self setWidth:newWidth];
    [self setHeight:newHeight];
}

-(int) size {
    return width * height;
}

-(BOOL) isSquare {
    return (width == height);
}

@end
