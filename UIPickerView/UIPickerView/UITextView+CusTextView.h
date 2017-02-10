//
//  UITextView+CusTextView.h
//  UIPickerView
//
//  Created by admin on 17/2/10.
//  Copyright © 2017年 wsl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (CusTextView)

@property (nonatomic,strong) NSString *placeholder;//占位符
@property (copy, nonatomic) NSNumber *limitLength;//限制字数

- (NSString *)yl_setText:(NSString *)text;

@end
