//
//  ViewController.m
//  TicTacToe
//
//  Created by David Miller on 1/8/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (strong, nonatomic) IBOutlet UILabel *labelOne;
@property (strong, nonatomic) IBOutlet UILabel *labelTwo;
@property (strong, nonatomic) IBOutlet UILabel *labelThree;
@property (strong, nonatomic) IBOutlet UILabel *labelFour;
@property (strong, nonatomic) IBOutlet UILabel *labelFive;
@property (strong, nonatomic) IBOutlet UILabel *labelSix;
@property (strong, nonatomic) IBOutlet UILabel *labelSeven;
@property (strong, nonatomic) IBOutlet UILabel *labelEight;
@property (strong, nonatomic) IBOutlet UILabel *labelNine;
@property (strong, nonatomic) IBOutlet UILabel *whichPlayerLabel;
@property (strong, nonatomic) IBOutlet UILabel *myPoint;

@property (strong, nonatomic) IBOutlet UIButton *LabelHelp;
@property (strong, nonatomic) IBOutlet UIButton *LabelGoButton;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *myTapGester;
@property NSString *notFirstTime;

@property NSArray *labelArray;
@property NSString *currentPlayer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.whichPlayerLabel.text = @"X";
    self.labelArray = @[self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine];

}

- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    CGPoint point = [sender locationInView:self.view];

    for (UILabel *label in self.labelArray) {

        if (CGRectContainsPoint(label.frame, point)) {
            NSLog(@"%@", label.text);
            [self togglePlayer];
            label.text = self.currentPlayer;
//    self.whichPlayerLabel.text = self.currentPlayer;

        }
    }
}

- (void) togglePlayer {
    if ([self.currentPlayer isEqual:@"X"]) {
        self.currentPlayer = @"O";
        self.whichPlayerLabel.text = @"X";
        self.whichPlayerLabel.backgroundColor = [UIColor blueColor];
    } else {
        self.currentPlayer = @"X";
        self.whichPlayerLabel.text = @"O";
        self.whichPlayerLabel.backgroundColor = [UIColor redColor];
        }

}


@end
