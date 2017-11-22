//
//  ViewController.m
//  DrawPicture
//
//  Created by 付正 on 2017/11/22.
//  Copyright © 2017年 付正. All rights reserved.
//

#import "ViewController.h"
#import "FzhDrawChart.h"

#define zzWidth    [UIScreen mainScreen].bounds.size.width
#define zzHeight   [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@property(nonatomic, strong)FzhDrawChart *drawView;//画图的view
@property(nonatomic, strong)NSArray *x_arr;//x轴数据数组
@property(nonatomic, strong)NSArray *y_arr;//y轴数据数组

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.drawView = [[FzhDrawChart alloc]initWithFrame:CGRectMake(0, 150, zzWidth, zzWidth)];
    self.drawView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.drawView];
    //画饼状图
    [self.drawView drawBingZhuangTu:self.x_arr and:self.y_arr];
    
    [self initSelBtn];
    
}

- (void)initSelBtn
{
    NSArray *arr = @[@"柱状图", @"饼状图", @"折线图"];
    for (int i=0; i<3; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(30+i*((zzWidth-60)/4 + (zzWidth-60)/8), 100, (zzWidth-60)/4, 30);
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor redColor];
        [btn setTitle:arr[i] forState:UIControlStateNormal];
        btn.tag = 100+i;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

- (NSArray *)x_arr
{
    if (!_x_arr) {
        _x_arr = @[@"北京", @"上海", @"广州", @"深圳", @"武汉", @"成都", @"南京"];
    }
    return _x_arr;
}

- (NSArray *)y_arr
{
    if (!_y_arr) {
        
        _y_arr = @[@"80", @"70", @"90", @"60", @"40", @"30", @"60"];
    }
    return _y_arr;
}

- (void)btnClick:(UIButton *)btn
{
    if (btn.tag == 100) {
        [self.drawView drawZhuZhuangTu:self.x_arr and:self.y_arr];
    }else if (btn.tag == 101){
        [self.drawView drawBingZhuangTu:self.x_arr and:self.y_arr];
    }else{
        [self.drawView drawZheXianTu:self.x_arr and:self.y_arr];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
