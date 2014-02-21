//
//  ViewController.m
//  Chapter3_
//
//  Created by Valenti on 21/02/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "ViewController.h"

#import "Printer.h"


@interface ViewController ()<PrinterHelperDelegate>

@property (nonatomic, strong) NSString *myTextToPrint;

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.myTextToPrint = @"My first text to print";
    
    NSLog(@"My viewController did load");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"My viewController will appear again");
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"my viewController view did appear");
    
    Printer *myFirstPrinter = [[Printer alloc] init];
    [myFirstPrinter setDelegate:self];
    [myFirstPrinter print:self.myTextToPrint];
    NSLog(@"hola");
}

- (void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"My viewController will disappear");
}

- (void) viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    NSLog(@"my viewController view did disappear");
}


//method delegate from pinter
#pragma mark - Printer delegate
- (void) finishPrint
{
    NSLog(@"The view controller knows that printer finish the task");
}






#pragma mark - Memory
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"I am having memory problems!");
}

@end
