//
//  ViewController.m
//  23GennaioEsercizio3
//
//  Created by Maurizio on 23/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

bool _risposta;
int _number;
NSString *messaggio;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated {
    [self writeToLabelRandomNumber:[self getRandomNumberBetween:1 to:9999]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(void)writeToLabelRandomNumber:(int)num {
    [_randomNumberLabel setText:[NSString stringWithFormat:@"%i" ,num]];
    _number = num;
}
-(IBAction)buttonYesPressed:(id)sender {
    _risposta = true;
    [self validateAnswer];
    [self displayUIAlertView];
}
-(IBAction)buttonNoPressed:(id)sender {
    _risposta = false;
    [self validateAnswer];
    [self displayUIAlertView];
}
-(void)displayUIAlertView {
    UIAlertController *alertViewController = [UIAlertController alertControllerWithTitle:@"Soluzione" message:messaggio preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"SI" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self writeToLabelRandomNumber:[self getRandomNumberBetween:1 to:9999]];
    }];
    

    
    [alertViewController addAction:yesAction];
    [self presentViewController:alertViewController animated:true completion:nil];
}

-(void) validateAnswer {
    if (_number % 2 == 0) {
        NSLog(@"Il numero è pari");
        if ( _risposta == false) {
            NSLog(@"Sbagliato il numero è pari");
            messaggio = @"Risposta sbagliata";
        } else {
            messaggio = @"Risposta corretta";
        }
    } else {
        NSLog(@"Il numero è dispari %d",_risposta);
        if (_risposta == true) {
            NSLog(@"Sbagliato il numero è dispari");
            messaggio = @"Risposta sbagliata";
        } else {
            messaggio = @"Risposta corretta";
        }
    }
}
@end
