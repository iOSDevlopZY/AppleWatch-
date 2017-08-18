//
//  BasicCaculateInterfaceController.h
//  AppleWatch计算器 WatchKit Extension
//
//  Created by Developer_Yi on 2017/8/17.
//  Copyright © 2017年 medcare. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface BasicCaculateInterfaceController : WKInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *resultLabel;

- (IBAction)divide;
- (IBAction)multiply;
- (IBAction)subtract;
- (IBAction)sum;
- (IBAction)decimal;
- (IBAction)result;

- (IBAction)zero;
- (IBAction)one;
- (IBAction)two;
- (IBAction)three;
- (IBAction)four;
- (IBAction)five;
- (IBAction)six;
- (IBAction)seven;
- (IBAction)eight;
- (IBAction)nine;
- (IBAction)Clear;
- (IBAction)Remove;

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *divideBtn;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *multiBtn;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *plusBtn;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *minusBtn;


@end
