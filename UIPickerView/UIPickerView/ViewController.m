//
//  ViewController.m
//  UIPickerView
//
//  Created by admin on 17/2/10.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import "ViewController.h"
#import "CusPickerView.h"
#import "CusDatePickerView.h"

@interface ViewController ()

@property (nonatomic, strong) CusPickerView *cusPickerView;
@property (nonatomic, strong) CusDatePickerView *cusDateView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 之前是用懒加载的方式初始化inputView和datePicker，
 发现会有一定时间的延迟，约60ms，故将初始化方法在这里调用，
 这样则一点击按钮控件就能弹出来。
 */
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if (!_cusPickerView){
        _cusPickerView = [[CusPickerView alloc]init];
        _cusPickerView.dataList = @[@"yqiow11", @"yqiow22", @"yqiow33", @"yqiow44"];
    }
    if (!_cusDateView){
        _cusDateView = [[CusDatePickerView alloc]init];
    }
}


- (IBAction)clickPick:(UIButton *)sender {
    [self showPickerView];
}

- (IBAction)clickDate:(UIButton *)sender {
    [self showDateView];
}


//显示
-(void)showPickerView{
    [self.cusPickerView show];
    
    //回调,赋值
    self.cusPickerView.myBlock = ^(NSString *selectStr){
        NSLog(@"%@",selectStr);
    };
}
-(void)showDateView{
    [self.cusDateView show];
    //回调,赋值
    self.cusDateView.myBlock = ^(NSString *selectStr){
        NSLog(@"%@",selectStr);
    };
}

@end
