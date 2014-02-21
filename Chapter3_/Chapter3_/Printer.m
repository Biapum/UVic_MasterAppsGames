//
//  Printer.m
//  Chapter3_
//
//  Created by Valenti on 21/02/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "Printer.h"

@implementation Printer

- (void) print:(NSString *)textToPrint
{
    NSLog(@"The printer delegates print the text: %@",textToPrint);
    [_delegate finishPrint];
}






@end
