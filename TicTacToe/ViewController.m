//
//  ViewController.m
//  TicTacToe
//
//  Created by David Miller on 1/8/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//
//mmb 15-01-10 TODO center text in labels
//mmb 15-01-10 TODO add a reset board
//mmb 15-01-10 TODO add floating animation from LabelPlayer to destionation
//mmb 15-01-10 TODO add winner logic method
//mmb 15-01-10 DEL  myPoint probably dead code
//mmb 15-01-10 ADD  Win NSArray win XXX or OOO




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
//@property (strong, nonatomic) IBOutlet UILabel *myPoint;

@property (strong, nonatomic) IBOutlet UIButton *LabelHelp;
@property (strong, nonatomic) IBOutlet UIButton *LabelGoButton;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *myTapGester;
@property NSString *notFirstTime;

@property NSArray *labelArray;
@property NSString *currentPlayer;
// Win XXX
// winA is   label1 & label2 & label3 = @"X"
@property NSArray *winA;
// winB is   label4 & label5 & label6 = @"X"
@property NSArray *winB;
@property NSArray *winC;
@property NSArray *winD;
@property NSArray *winE;
@property NSArray *winF;
@property NSArray *winG;
@property NSArray *winH;
// Win OOO
@property NSArray *winI;
@property NSArray *winJ;
@property NSArray *winK;
@property NSArray *winL;
@property NSArray *winM;
@property NSArray *winN;
@property NSArray *winO;
@property NSArray *winP;



@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"<%@:%@:%d>", NSStringFromClass([self class]), NSStringFromSelector(_cmd), __LINE__);
    [super viewDidLoad];
    self.whichPlayerLabel.text = @"X";
    self.labelArray = @[self.labelOne, self.labelTwo, self.labelThree, self.labelFour, self.labelFive, self.labelSix, self.labelSeven, self.labelEight, self.labelNine];
    [self resetBoard];

}

- (void) resetBoard {
    NSLog(@"<%@:%@:%d>", NSStringFromClass([self class]), NSStringFromSelector(_cmd), __LINE__);
    for (UILabel *label in self.labelArray) {
        label.text = @"";
        label.backgroundColor = [UIColor greenColor];
        self.whichPlayerLabel.text = @"X";
        self.whichPlayerLabel.backgroundColor = [UIColor blueColor];
    }
}


- (IBAction)onLabelTapped:(UITapGestureRecognizer *)sender {
    NSLog(@"<%@:%@:%d>", NSStringFromClass([self class]), NSStringFromSelector(_cmd), __LINE__);
    CGPoint point = [sender locationInView:self.view];

    for (UILabel *label in self.labelArray) {

        if (CGRectContainsPoint(label.frame, point)) {
            NSLog(@"%@", label.text);
            [self togglePlayer];
            label.text = self.currentPlayer;
//    self.whichPlayerLabel.text = self.currentPlayer;
////////
            if ([label.text isEqualToString:@"X"]) {
                label.backgroundColor = [UIColor blueColor];
                NSLog(@"set x background color");
            }
            if ([label.text isEqualToString:@"O"]) {
                label.backgroundColor = [UIColor redColor];
                NSLog(@"set x background color");
            }


        }
    }
}

- (void) togglePlayer {
    NSLog(@"<%@:%@:%d>", NSStringFromClass([self class]), NSStringFromSelector(_cmd), __LINE__);
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
