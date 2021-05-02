//
//  Rectangle.m
//  FirstApp
//
//  Created by INTAEK HAN on 2021/05/02.
//

#import "Rectangle.h"

@implementation Rectangle
-(int)width {
    return width;
}

-(void)setWidth:(int)newWidth {
    width=newWidth;
}

-(int)height {
    return height;
}

-(void)setHeight:(int)newHeight {
    height=newHeight;
}

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
