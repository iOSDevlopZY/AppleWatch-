//
//  HighCaculateInterfaceController.m
//  AppleWatch计算器 WatchKit Extension
//
//  Created by Developer_Yi on 2017/8/18.
//  Copyright © 2017年 medcare. All rights reserved.
//

#import "HighCaculateInterfaceController.h"
#include <math.h>
typedef NS_ENUM(NSUInteger, OperationType) {
    OperationTypeUnknown,
    OperationTypeSqure,
    OperationTypePowerOf,
    OperationTypeArithmetic,
    OperationTypePowerOfN
};
@interface HighCaculateInterfaceController ()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *resultLabel;
@property (strong, nonatomic) NSString *displayString;
//前一个数字
@property (strong, nonatomic) NSString *previousNumber;
//当前操作符
@property (assign, nonatomic) OperationType currentOperation;

@end

@implementation HighCaculateInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    self.displayString=@"";
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}
- (IBAction)square {
    self.previousNumber = self.displayString;
    self.displayString = [NSMutableString string];
    self.currentOperation = OperationTypeSqure;
    NSString *stringResult = [NSString stringWithFormat:@"%.4f", [self.previousNumber floatValue]*[self.previousNumber floatValue]];
    [self.resultLabel setText:stringResult];
    self.displayString = [stringResult mutableCopy];
}
- (IBAction)powerof {
    
    self.previousNumber = self.displayString;
    self.displayString = [NSMutableString string];
    self.currentOperation = OperationTypePowerOf;
}
- (IBAction)Arithmetic {
    self.previousNumber = self.displayString;
    self.displayString = [NSMutableString string];
    self.currentOperation = OperationTypeArithmetic;
    NSString *stringResult = [NSString stringWithFormat:@"%.4f",sqrt([self.previousNumber floatValue])];
    [self.resultLabel setText:stringResult];
    self.displayString = [stringResult mutableCopy];
}
- (IBAction)powerOfN {
    self.previousNumber = self.displayString;
    self.displayString = [NSMutableString string];
    self.currentOperation = OperationTypePowerOfN;
}
- (IBAction)zero {
    [self addDigitToDisplay:@"0"];
}

- (IBAction)one {
    [self addDigitToDisplay:@"1"];
}

- (IBAction)two {
    [self addDigitToDisplay:@"2"];
}

- (IBAction)three {
    [self addDigitToDisplay:@"3"];
}

- (IBAction)four {
    [self addDigitToDisplay:@"4"];
}

- (IBAction)five {
    [self addDigitToDisplay:@"5"];
}

- (IBAction)six {
    [self addDigitToDisplay:@"6"];
}

- (IBAction)seven {
    [self addDigitToDisplay:@"7"];
}

- (IBAction)eight {
    [self addDigitToDisplay:@"8"];
}

- (IBAction)nine {
    [self addDigitToDisplay:@"9"];
}
- (IBAction)result {
    
    if (self.currentOperation == OperationTypePowerOf) {
        NSString *stringResult = [NSString stringWithFormat:@"%.4f", powf(2.0,[self.previousNumber floatValue])];
        [self.resultLabel setText:stringResult];
        self.displayString = [stringResult mutableCopy];
    }
    else if(self.currentOperation == OperationTypePowerOfN)
    {
        NSString *stringResult = [NSString stringWithFormat:@"%.4f", powf([self.previousNumber floatValue],1.0/[self.displayString floatValue])];
        [self.resultLabel setText:stringResult];
        self.displayString = [stringResult mutableCopy];
    }
}
- (IBAction)Clear {
    self.previousNumber = nil;
    self.currentOperation = OperationTypeUnknown;
    self.displayString = [NSMutableString string];
    [self.resultLabel setText:@"0"];
}

- (IBAction)Remove {
    if (self.displayString.length > 0) {
        self.displayString = [self.displayString substringToIndex:[self.displayString length] - 1];
        [self.resultLabel setText:self.displayString];
    }
}
#pragma mark - 设置显示屏幕上的文字
- (void)addDigitToDisplay:(NSString *)string {
    self.displayString = [self.displayString stringByAppendingString:string];
    [self.resultLabel setText:self.displayString];
}
@end



