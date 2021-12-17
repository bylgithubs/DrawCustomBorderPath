//
//  CustomButtonBorder.m
//  Test1
//
//  Created by BaoYu Liao on 2021/12/17.
//

#import "CustomButtonBorder.h"

#define kCalloutWidth   80.0   //气泡高度

#define kCalloutHeight  95.0   //气泡宽度

#define kArrorHeight    15      //底部距离高度

@implementation CustomButtonBorder

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor orangeColor];
        self.bubbleWidth = frame.size.width-10;
        self.bubbleHeight = frame.size.height-10;
//        self.layer.borderColor = [UIColor purpleColor].CGColor;
//        self.layer.borderWidth = 1;
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    [self drawInContext:UIGraphicsGetCurrentContext()];
    self.layer.shadowColor = [[UIColor clearColor] CGColor];
    self.layer.shadowOpacity = 1.0;
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
 }

 

- (void)drawInContext:(CGContextRef)context
{
    CGContextSetStrokeColorWithColor(context, self.lineColor.CGColor);//线条颜色
    CGContextSetLineWidth(context, self.lineWidth);//线条宽度
    CGRect rect = self.bounds;
    CGFloat midX = CGRectGetMidX(rect);
    CGFloat midY = CGRectGetMidY(rect);
    
    CGFloat width = self.bubbleWidth;
    CGFloat height = self.bubbleHeight;
    CGFloat cor = self.triangleSize;
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, midX - width/2 + cor, midY - height/2);
    CGContextAddLineToPoint(context, midX + width/2 - cor, midY - height/2);
    CGContextAddArcToPoint(context, midX + width/2, midY - height/2, midX + width/2, midY - height/2 + cor, cor);
    CGContextAddLineToPoint(context, midX + width/2, midY + height/2 - cor);
    CGContextAddArcToPoint(context, midX + width/2, midY + height/2, midX + width/2 - cor, midY + height/2, cor);
    CGContextAddLineToPoint(context, midX - (width/2 - cor)*0.75, midY + height/2);
    CGContextAddLineToPoint(context, midX - (width/2 - cor)*0.75 - cor/2, midY + height/2 + cor/2);
    CGContextAddLineToPoint(context, midX - (width/2 - cor)*0.75 - cor, midY + height/2);
    CGContextAddLineToPoint(context, midX - width/2 + cor, midY + height/2);
    CGContextAddArcToPoint(context, midX - width/2, midY + height/2, midX -width/2, midY + height/2 - cor, cor);
    CGContextAddLineToPoint(context, midX - width/2, midY - height/2 + cor);
    CGContextAddArcToPoint(context, midX - width/2, midY - height/2, midX -width/2 + cor, midY - height/2, cor);
    
    CGContextDrawPath(context, kCGPathStroke); //根据坐标绘制路径
}


//
//- (CGContextRef )getDrawPath1:(CGContextRef)context
//{
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);//线条颜色
//    CGContextSetLineWidth(context, 5.0);//线条宽度
//    CGRect rect = self.bounds;
//    CGFloat midx = CGRectGetMidX(rect);
//    CGFloat midy = CGRectGetMidY(rect);
//
//    CGContextBeginPath(context);
//    CGContextMoveToPoint(context, midx - 25, midy - 50);
//    CGContextAddLineToPoint(context, midx + 25, midy - 50);
//    CGContextAddArcToPoint(context, midx + 50, midy - 50, midx + 50, midy - 25, 25);
//    CGContextAddLineToPoint(context, midx + 50, midy + 25);
//    CGContextAddArcToPoint(context, midx + 50, midy + 50, midx + 25, midy + 50, 25);
//    CGContextAddLineToPoint(context, midx - 10, midy + 50);
//    CGContextAddLineToPoint(context, midx - 15, midy + 55);
//    CGContextAddLineToPoint(context, midx - 20, midy + 50);
//    CGContextAddLineToPoint(context, midx - 25, midy + 50);
//    CGContextAddArcToPoint(context, midx - 50, midy + 50, midx -50, midy + 25, 25);
//    CGContextAddLineToPoint(context, midx - 50, midy - 25);
//    CGContextAddArcToPoint(context, midx - 50, midy - 50, midx -25, midy - 50, 25);
//
//    CGContextDrawPath(context, kCGPathStroke); //根据坐标绘制路径
//    return context;
//
//}

- (CGFloat)bubbleWidth {
    if (!_bubbleWidth) {
        _bubbleWidth = 100.0f;
    }
    return _bubbleWidth-10;
}

- (CGFloat)bubbleHeight {
    if (!_bubbleHeight) {
        _bubbleHeight = 30.0f;
    }
    return _bubbleHeight-10;
}

- (CGFloat)triangleSize {
    if (!_triangleSize) {
        _triangleSize = 8.0f;
    }
    return _triangleSize;
}

- (CGFloat)lineWidth {
    if (!_lineWidth) {
        _lineWidth = 1.0f;
    }
    return _lineWidth;
}

- (UIColor *)lineColor {
    if (!_lineColor) {
        _lineColor = [UIColor blackColor];
    }
    return _lineColor;
}
 


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
