//
//  ViewController.m
//  2PlayerMath
//
//  Created by Aaron Johnson on 2017-10-09.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic, strong) GameModel *gameModel;
@property (nonatomic, strong) NSMutableString *answerString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.gameModel = [GameModel new];
    self.Player1Label.text = [NSString stringWithFormat:@"%d", self.gameModel.player1.lives];
    self.Player2Label.text = [NSString stringWithFormat:@"%d", self.gameModel.player2.lives];
    self.QuestionLabel.text = [self.gameModel newQuestion];
    self.answerString = [NSMutableString new];
    self.playerNameLabel.text = self.gameModel.currentPlayer.name;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)updateCurrentAnswer
{
    self.answerLabel.text = self.answerString;
}

- (IBAction)button1:(id)sender {
    [self.answerString appendString:@"1"];
    [self updateCurrentAnswer];
}
- (IBAction)button2:(id)sender {
    [self.answerString appendString:@"2"];
    [self updateCurrentAnswer];
}
- (IBAction)button3:(id)sender {
    [self.answerString appendString:@"3"];
    [self updateCurrentAnswer];
}
- (IBAction)button4:(id)sender {
    [self.answerString appendString:@"4"];
    [self updateCurrentAnswer];
}
- (IBAction)button5:(id)sender {
    [self.answerString appendString:@"5"];
    [self updateCurrentAnswer];
}
- (IBAction)button6:(id)sender {
    [self.answerString appendString:@"6"];
    [self updateCurrentAnswer];
}
- (IBAction)button7:(id)sender {
    [self.answerString appendString:@"7"];
    [self updateCurrentAnswer];
}
- (IBAction)button8:(id)sender {
    [self.answerString appendString:@"8"];
    [self updateCurrentAnswer];
}
- (IBAction)button9:(id)sender {
    [self.answerString appendString:@"9"];
    [self updateCurrentAnswer];
}
- (IBAction)button0:(id)sender {
    [self.answerString appendString:@"0"];
    [self updateCurrentAnswer];
}
- (IBAction)buttonMinus:(id)sender {
    [self.answerString appendString:@"-"];
    [self updateCurrentAnswer];
}
- (IBAction)submitButton:(id)sender {
    if([self.gameModel checkAnaswer:[self.answerString intValue]]) {
        self.answerLabel.text = @"Correct!";
    } else {
        self.answerLabel.text = @"Failure!";
        
    }
    self.answerString = [NSMutableString new];
    self.QuestionLabel.text = [self.gameModel newQuestion];
    self.playerNameLabel.text = self.gameModel.currentPlayer.name;

}



@end
