//
//  FzhDrawChart.h
//  FzhDrawPicture
//
//  Created by fuzheng on 16/12/02.
//  Copyright © 2016年 fuzheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FzhDrawChart : UIView

@property (nonatomic, assign) CGFloat zzWidth;
@property (nonatomic, assign) CGFloat zzHeight;

//画柱状图
- (void)drawZhuZhuangTu:(NSArray *)x_itemArr and:(NSArray *)y_itemArr;

//画饼形图
- (void)drawBingZhuangTu:(NSArray *)x_itemArr and:(NSArray *)y_itemArr;

//画折线图
- (void)drawZheXianTu:(NSArray *)x_itemArr and:(NSArray *)y_itemArr;

@end

/*
 *使用方法:
 *1.导入本文件到工程;
 *2.导入头文件#import "FzhDrawChart.h";
 *3.示例代码:
 *
 self.drawView = [[DrawChart alloc]initWithFrame:CGRectMake(50, 150, 250, 250)];
 self.drawView.backgroundColor = [UIColor lightGrayColor];
 [self.view addSubview:self.drawView];
 //画柱状图
 [self.drawView drawZhuZhuangTu:self.x_arr and:self.y_arr];
 //画饼状图
 [self.drawView drawBingZhuangTu:self.x_arr and:self.y_arr];
 //画折线图
 [self.drawView drawZheXianTu:self.x_arr and:self.y_arr];
 *
 - (NSArray *)x_arr{
 if (!_x_arr) {
 _x_arr = @[@"北京", @"上海", @"广州", @"深圳", @"武汉", @"成都", @"南京"];
 }
 return _x_arr;
 }
 *
 - (NSArray *)y_arr{
 if (!_y_arr) {
 
 _y_arr = @[@"80", @"70", @"90", @"60", @"40", @"30", @"60"];
 }
 return _y_arr;
 }
 *
 */
