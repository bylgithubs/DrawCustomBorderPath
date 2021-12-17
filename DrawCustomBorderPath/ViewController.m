//
//  ViewController.m
//  DrawCustomBorderPath
//
//  Created by BaoYu Liao on 2021/12/17.
//

#import "ViewController.h"
#import "CustomButtonBorder.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@property(nonatomic, strong) CustomButtonBorder *borderBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    CustomButtonBorder *button = [[CustomButtonBorder alloc] initWithFrame:CGRectMake(100, 100, 200, 60)];
    [self.view addSubview:button];
    
    [self.view addSubview:self.borderBtn];
    
    [self.borderBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(200);
        make.left.equalTo(self.view).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.borderBtn layoutIfNeeded];
    self.borderBtn.bubbleWidth = self.borderBtn.frame.size.width;
    self.borderBtn.bubbleHeight = self.borderBtn.frame.size.height;
}

- (CustomButtonBorder *)borderBtn {
    if (!_borderBtn) {
        _borderBtn = [CustomButtonBorder new];
//        _borderBtn.backgroundColor = [UIColor clearColor];
        [_borderBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_borderBtn setTitle:@"aaaaaaaaaaaaaaa" forState:UIControlStateNormal];
        _borderBtn.contentEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 20);
    }
    return _borderBtn;
}


@end
