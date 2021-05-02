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

//-(int) width;
//-(void)setWidth:(int)newWidth;
@property int width;

//-(int)height;
//-(void)setHeight:(int)newHeight;
@property int height;

-(void)setWidth:(int)newWidth height:(int)newHeight;
-(int)size;
//-(BOOL)isSquare;
@property (readonly) BOOL isSquare; //readonly = getter만 허용

@end

NS_ASSUME_NONNULL_END
