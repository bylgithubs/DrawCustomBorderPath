//
//  CustomButtonBorder.h
//  Test1
//
//  Created by BaoYu Liao on 2021/12/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomButtonBorder : UIButton

@property (nonatomic, assign) CGFloat bubbleWidth;
@property (nonatomic, assign) CGFloat bubbleHeight;
@property (nonatomic, assign) CGFloat triangleSize;
@property (nonatomic, assign) CGFloat lineWidth;
@property (nonatomic, strong) UIColor *lineColor;


@end

NS_ASSUME_NONNULL_END
