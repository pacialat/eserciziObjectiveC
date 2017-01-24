//
//  ViewController.m
//  23gennaioEsercizio5
//
//  Created by Maurizio on 24/01/17.
//  Copyright © 2017 Maurizio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSMutableArray *nameArray ;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated {
    [self insertValueIntoArray];
    NSLog(@"%@",nameArray);
    [self orderNameAlphabetically:nameArray];
    //[self splitNameSurname];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) insertValueIntoArray {
    nameArray = @[].mutableCopy;
    [nameArray addObject:@"Freddie Campbell"];
    [nameArray addObject:@"Krista Kim"];
    [nameArray addObject:@"Merle Hubbard"];
    [nameArray addObject:@"Lorraine Weber"];
    [nameArray addObject:@"Lorenzo Greene"];
    [nameArray addObject:@"Sandra Brock"];
    [nameArray addObject:@"Nichole Hines"];
    [nameArray addObject:@"Floyd Clarke"];
    [nameArray addObject:@"Andrea Ramsey"];
    [nameArray addObject:@"Marcus Reid"];
    [nameArray addObject:@"Jacob Garza"];
    [nameArray addObject:@"Peter Herrera"];
    [nameArray addObject:@"Glenn Horton"];
    [nameArray addObject:@"Francis Mack"];
    [nameArray addObject:@"Yvetten Farmer"];
    [nameArray addObject:@"Evan Hughes"];
    [nameArray addObject:@"Shelley Lane"];
    [nameArray addObject:@"Gladys Carroll"];
    [nameArray addObject:@"Stellan Thornton"];
    [nameArray addObject:@"Mindy Wilkerson"];
    [nameArray addObject:@"Beth Diaz"];
    [nameArray addObject:@"Everett Mckinney"];
    [nameArray addObject:@"Audrey Cooper"];
    [nameArray addObject:@"Christie Sutton"];
    [nameArray addObject:@"Timothy Walters"];
}

-(void) orderNameAlphabetically:(NSMutableArray *) array {
    [array sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSLog(@"%@",array);
}

-(void) splitNameSurname {
    NSMutableArray * prova;
    prova = @[].mutableCopy;
    for (id object in nameArray) {

        [prova addObject: [object componentsSeparatedByString:@" "]];
            NSLog(@"%@",prova);

    
    
    }
}

@end
