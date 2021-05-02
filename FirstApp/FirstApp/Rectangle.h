//
//  Rectangle.h
//  FirstApp
//
//  Created by INTAEK HAN on 2021/05/02.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : NSObject {
    int width;
    int height;
}

-(int) width;
-(void)setWidth:(int)newWidth;
-(int)height;
-(void)setHeight:(int)newHeight;
-(void)setWidth:(int)newWidth height:(int)newHeight;
-(int)size;
-(BOOL)isSquare;

@end

NS_ASSUME_NONNULL_END
