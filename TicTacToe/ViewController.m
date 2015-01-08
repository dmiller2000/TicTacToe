//
//  ViewController.m
//  TicTacToe
//
//  Created by David Miller on 1/8/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (strong, nonatomic) IBOutlet UILabel *LabelOne;
@property (strong, nonatomic) IBOutlet UILabel *LabelTwo;
@property (strong, nonatomic) IBOutlet UILabel *LabelThree;
@property (strong, nonatomic) IBOutlet UILabel *LabelFour;
@property (strong, nonatomic) IBOutlet UILabel *LabelFive;
@property (strong, nonatomic) IBOutlet UILabel *LabelSix;
@property (strong, nonatomic) IBOutlet UILabel *LabelSeven;
@property (strong, nonatomic) IBOutlet UILabel *LabelEight;
@property (strong, nonatomic) IBOutlet UILabel *LabelNine;
@property (strong, nonatomic) IBOutlet UILabel *whichPlayerLabel;

@property (strong, nonatomic) IBOutlet UIButton *LabelHelp;

@property (strong, nonatomic) IBOutlet UIButton *LabelGoButton;

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *myTapGester;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");

}
-(void)findLabelUsingPoint {
    NSLog(@"findLabelUsingPoint");

}

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    NSLog(@"onLabelTapped");

}

@end
