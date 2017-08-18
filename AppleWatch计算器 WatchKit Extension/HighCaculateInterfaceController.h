//
//  HighCaculateInterfaceController.h
//  AppleWatch计算器 WatchKit Extension
//
//  Created by Developer_Yi on 2017/8/18.
//  Copyright © 2017年 medcare. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface HighCaculateInterfaceController : WKInterfaceController
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *Square;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *PowerOf;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *arithmetic;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceButton *PowerOfN;

@end
