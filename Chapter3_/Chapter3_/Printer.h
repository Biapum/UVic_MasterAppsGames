//
//  Printer.h
//  Chapter3_
//
//  Created by Valenti on 21/02/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PrinterHelperDelegate;

@interface Printer : NSObject

@property (weak, nonatomic) id <PrinterHelperDelegate> delegate;

- (void) print:(NSString*) textToPrint;

@end

@protocol PrinterHelperDelegate <NSObject>

- (void) finishPrint;

@end

