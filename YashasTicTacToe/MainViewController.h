//
//  MainViewController.h
//  YashasTicTacToe
//
//  Created by yashask on 7/1/14.
//  Copyright (c) 2014 spaneos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
- (IBAction)tapOnImage00:(UITapGestureRecognizer *)sender;
- (IBAction)tapOnImage01:(UITapGestureRecognizer *)sender;
- (IBAction)tapOnImage02:(UITapGestureRecognizer *)sender;
- (IBAction)tapOnImage10:(UITapGestureRecognizer *)sender;
- (IBAction)tapOnImage11:(UITapGestureRecognizer *)sender;
- (IBAction)tapOnImage12:(UITapGestureRecognizer *)sender;
- (IBAction)tapOnImage20:(UITapGestureRecognizer *)sender;
- (IBAction)tapOnImage21:(UITapGestureRecognizer *)sender;
- (IBAction)tapOnImage22:(UITapGestureRecognizer *)sender;

@property (weak, nonatomic) IBOutlet UIImageView *image00;
@property (weak, nonatomic) IBOutlet UIImageView *image01;
@property (weak, nonatomic) IBOutlet UIImageView *image02;
@property (weak, nonatomic) IBOutlet UIImageView *image10;
@property (weak, nonatomic) IBOutlet UIImageView *image11;
@property (weak, nonatomic) IBOutlet UIImageView *image12;
@property (weak, nonatomic) IBOutlet UIImageView *image20;
@property (weak, nonatomic) IBOutlet UIImageView *image21;
@property (weak, nonatomic) IBOutlet UIImageView *image22;

//curent player
@property (weak, nonatomic) IBOutlet UILabel *currentPlayerz;

//result
@property (weak, nonatomic) IBOutlet UILabel *result;

//reset button
- (IBAction)resetButton:(id)sender;

//player 1 and 2 wins

@property (weak, nonatomic) IBOutlet UILabel *player1Winz;
@property (weak, nonatomic) IBOutlet UILabel *player2Winz;


@end
