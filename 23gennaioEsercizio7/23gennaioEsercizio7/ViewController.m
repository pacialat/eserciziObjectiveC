//
//  ViewController.m
//  23gennaioEsercizio7
//
//  Created by Maurizio on 24/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
int _timeCounter;

NSTimer *_myTimer;

}
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void) viewDidAppear:(BOOL)animated {
    [self contaSecondi];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)contaSecondi {
    _myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeFormatted) userInfo:(nil) repeats:(true)];
    
}



- (void)timeFormatted {
    _timeCounter++;
    
    int seconds = _timeCounter % 60;
    int minutes = (_timeCounter / 60) % 60;
    int hours = _timeCounter / 3600;
    
    [self.timeLabel setText:[NSString stringWithFormat:@"%02d:%02d:%02d",hours, minutes, seconds]];
}

@end
