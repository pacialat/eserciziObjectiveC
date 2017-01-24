//
//  ViewController.m
//  23gennaioEsercizio4
//
//  Created by Maurizio on 23/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSMutableArray *intArray ;
int _arraySum = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated {
    [self createArrayHundredNumber];
    NSLog(@"La somma delle componenti e': %i",_arraySum);
    NSLog(@"%@",intArray);
    [self ascendingOrderArray:intArray];
    [self descendingOrderArray:intArray];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(void) createArrayHundredNumber {
    //mutableCopy va messo fuori dal ciclo for
    intArray = @[].mutableCopy;
    for (int i = 0; i < 100; i++) {
        int numero = [self getRandomNumberBetween:1 to:9999];
        NSNumber* intWrapped = [NSNumber numberWithInt:numero];
        
        [intArray addObject:intWrapped];
        _arraySum += numero;

    }
     [_sumArray setText:[NSString stringWithFormat:@"%i" ,_arraySum]];

}

-(void) ascendingOrderArray:(NSArray *) array {
    NSArray *arrayAscending = [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if (value1 == value2) {
            return NSOrderedSame;
        }
        if (value1 < value2) {
            return NSOrderedAscending;
        }
        else {
            return NSOrderedDescending;
        }
    }];
    NSLog(@"%@",arrayAscending);
}

-(void) descendingOrderArray:(NSArray *) array {
    NSArray *arrayDescending = [array sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if (value1 == value2) {
            return NSOrderedSame;
        }
        if (value1 > value2) {
            return NSOrderedAscending;
        }
        else {
            return NSOrderedDescending;
        }
    }];
    NSLog(@"%@",arrayDescending);

}

@end
