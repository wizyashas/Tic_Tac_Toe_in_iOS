//
//  MainViewController.m
//  YashasTicTacToe
//
//  Created by yashask on 7/1/14.
//  Copyright (c) 2014 spaneos. All rights reserved.
//

#import "MainViewController.h"
#import "GameContentHolder.h"
@interface MainViewController ()

@property(strong ,nonatomic) UIImage *xImage;
@property (strong , nonatomic) UIImage *oImage;
@property  NSInteger winflag;

@end

@implementation MainViewController
@synthesize xImage , oImage ,image00 ,image01 ,image02 ,image10 ,image11 , image12, image20, image21, image22 ,currentPlayerz , result , player1Winz , player2Winz,winflag;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    currentPlayer = 1;
    xImage = [UIImage imageNamed:@"x1.png"];
    oImage = [UIImage imageNamed:@"o1.png"];
    
    //setting images as empty
    
    image00.image = nil;
    image01.image = nil;
    image02.image = nil;
    image10.image = nil;
    image11.image = nil;
    image12.image = nil;
    image20.image = nil;
    image21.image = nil;
    image22.image = nil;
    
    result.text = @"Under Progress";
    currentPlayerz.text = @"No One";
    
    winflag = 1;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapOnImage00:(UITapGestureRecognizer *)sender {
    if(winflag == 1){
   UIImageView *imgView = (UIImageView *)[sender view];
    [self onTapAction:imgView];
        }
}

- (IBAction)tapOnImage01:(UITapGestureRecognizer *)sender{
    if(winflag == 1){
        UIImageView *imgView = (UIImageView *)[sender view];
        [self onTapAction:imgView];
    }
}
- (IBAction)tapOnImage02:(UITapGestureRecognizer *)sender{
    if(winflag == 1){
        UIImageView *imgView = (UIImageView *)[sender view];
        [self onTapAction:imgView];
    }
    
}
- (IBAction)tapOnImage10:(UITapGestureRecognizer *)sender{
    if(winflag == 1){
        UIImageView *imgView = (UIImageView *)[sender view];
        [self onTapAction:imgView];
    }
    
}
- (IBAction)tapOnImage11:(UITapGestureRecognizer *)sender{
    if(winflag == 1){
        UIImageView *imgView = (UIImageView *)[sender view];
        [self onTapAction:imgView];
    }
    
}
- (IBAction)tapOnImage12:(UITapGestureRecognizer *)sender{
    if(winflag == 1){
        UIImageView *imgView = (UIImageView *)[sender view];
        [self onTapAction:imgView];
    }
    
}
- (IBAction)tapOnImage20:(UITapGestureRecognizer *)sender{
    if(winflag == 1){
        UIImageView *imgView = (UIImageView *)[sender view];
        [self onTapAction:imgView];
    }
    
}
- (IBAction)tapOnImage21:(UITapGestureRecognizer *)sender{
    if(winflag == 1){
        UIImageView *imgView = (UIImageView *)[sender view];
        [self onTapAction:imgView];
    }
    
}
- (IBAction)tapOnImage22:(UITapGestureRecognizer *)sender{
    if(winflag == 1){
        UIImageView *imgView = (UIImageView *)[sender view];
        [self onTapAction:imgView];
    }
    
}


- (IBAction)resetButton:(id)sender {
     [self resetAllUiElements];
    
}

-(BOOL)checkForWin{
    BOOL resultForPlayer1 = NO;
    BOOL resultForPlayer2 = NO;
  
    //checking  for row match
    if([image00.image isEqual:xImage] && [image01.image isEqual:xImage] && [image02.image isEqual:xImage]){
        [self addAnimationToVictory:image00 withImage2:image01 withImageView3:image02];
        
        resultForPlayer1 = YES;
    }else if ([image10.image isEqual:xImage] && [image11.image isEqual:xImage] && [image12.image isEqual:xImage]){
        
        [self addAnimationToVictory:image10 withImage2:image11 withImageView3:image12];
        
        resultForPlayer1 = YES;
    }else if ([image20.image isEqual:xImage] && [image21.image isEqual:xImage] && [image22.image isEqual:xImage]){
        [self addAnimationToVictory:image20 withImage2:image21 withImageView3:image22];
        
        resultForPlayer1 = YES;
    }
    
    //checking for coluoms
    if([image00.image isEqual:xImage] && [image10.image isEqual:xImage] && [image20.image isEqual:xImage]){
        [self addAnimationToVictory:image00 withImage2:image10 withImageView3:image20];
        resultForPlayer1 = YES;
    }else if ([image01.image isEqual:xImage] && [image11.image isEqual:xImage] && [image21.image isEqual:xImage]){
       [self addAnimationToVictory:image01 withImage2:image11 withImageView3:image21];
        
        resultForPlayer1 = YES;
    }else if ([image02.image isEqual:xImage] && [image12.image isEqual:xImage] && [image22.image isEqual:xImage]){
        [self addAnimationToVictory:image02 withImage2:image12 withImageView3:image22];
        
        resultForPlayer1 = YES;
    }
    
    
    //checking diagonal
    if([image00.image isEqual:xImage] && [image11.image isEqual:xImage] && [image22.image isEqual:xImage]){
        [self addAnimationToVictory:image00 withImage2:image11 withImageView3:image22];
        
        resultForPlayer1 = YES;
    }else if([image02.image isEqual:xImage] && [image11.image isEqual:xImage] && [image20.image isEqual:xImage]){
        [self addAnimationToVictory:image02 withImage2:image11 withImageView3:image20];
        
        resultForPlayer1 = YES;
    }
    
    if(resultForPlayer1 == YES){
        player1Wins++;
        player1Winz.text = [NSString stringWithFormat:@"%i",player1Wins];
        result.text = @"Player 1 Wins";
        winflag = 0;
    }
    
    //player 2 win checking
    
    //checking  for row match
    if([image00.image isEqual:oImage] && [image01.image isEqual:oImage] && [image02.image isEqual:oImage]){
       [self addAnimationToVictory:image00 withImage2:image01 withImageView3:image02];
        
        resultForPlayer2 = YES;
    }else if ([image10.image isEqual:oImage] && [image11.image isEqual:oImage] && [image12.image isEqual:oImage]){
        [self addAnimationToVictory:image10 withImage2:image11 withImageView3:image12];
        
        resultForPlayer2 = YES;
    }else if ([image20.image isEqual:oImage] && [image21.image isEqual:oImage] && [image22.image isEqual:oImage]){
        [self addAnimationToVictory:image20 withImage2:image21 withImageView3:image22];
        
        resultForPlayer2 = YES;
    }
    
    //checking for coluoms
    if([image00.image isEqual:oImage] && [image10.image isEqual:oImage] && [image20.image isEqual:oImage]){
        [self addAnimationToVictory:image00 withImage2:image10 withImageView3:image20];
        
        resultForPlayer2 = YES;
    }else if ([image01.image isEqual:oImage] && [image11.image isEqual:oImage] && [image21.image isEqual:oImage]){
       [self addAnimationToVictory:image01 withImage2:image11 withImageView3:image21];
        
        resultForPlayer2 = YES;
    }else if ([image02.image isEqual:oImage] && [image12.image isEqual:oImage] && [image22.image isEqual:oImage]){
        [self addAnimationToVictory:image02 withImage2:image12 withImageView3:image22];
        
        resultForPlayer2 = YES;
    }
    
    
    //checking diagonal
    if([image00.image isEqual:oImage] && [image11.image isEqual:oImage] && [image22.image isEqual:oImage]){
        [self addAnimationToVictory:image00 withImage2:image11 withImageView3:image22];
        
        resultForPlayer2 = YES;
    }else if([image02.image isEqual:oImage] && [image11.image isEqual:oImage] && [image20.image isEqual:oImage]){
        [self addAnimationToVictory:image02 withImage2:image11 withImageView3:image20];
        
        resultForPlayer2 = YES;
    }
    
    if(resultForPlayer2 == YES){
        player2Wins++;
        player2Winz.text = [NSString stringWithFormat:@"%i",player2Wins];
        result.text = @"Player 2 Wins";
        winflag = 0;
    }
    
    if(currentPlayer == 1){
        return resultForPlayer1;
    }else if (currentPlayer == 2 ){
        return  resultForPlayer2;
    }
    
    return  NO;
    
    
}

-(void)resetAllUiElements{
    [self viewDidLoad];
    
    
}

-(void)onTapAction:(UIImageView *)imageView{
    if([[imageView image] isEqual:xImage] || [[imageView image] isEqual:oImage]){
        return;
    }

    if(currentPlayer == 1){
        currentPlayerz.text = @"Player 1";
        [imageView setImage:[UIImage imageNamed:@"x1.png"]];
        if([self checkForWin]){
            [self winDeclared];
            return;
        }
    }else if (currentPlayer == 2){
        currentPlayerz.text = @"Player 2";
        [imageView setImage:[UIImage imageNamed:@"o1.png"]];
        if([self checkForWin]){
            [self winDeclared];
            return;
        }
    }
    
    if ([self checkForDraw]) {
        result.text = @"Match Draw";
         winflag = 0;
        
    }
    
    if(currentPlayer == 1){
        currentPlayer = 2;
    }else if (currentPlayer == 2){
        currentPlayer = 1;
    }
}


-(void)flipUpSideDownEffectAnimation:(UIImageView*)webView
{
    CATransition *animation = [CATransition animation];
    [animation setDelegate:self];
    [animation setDuration:2.0f];
    [animation setTimingFunction:UIViewAnimationCurveEaseInOut];
    [animation setType:@"oglFlip" ];
    [webView.layer addAnimation:animation forKey:NULL];
    
}

-(void) winDeclared{
    [[[UIAlertView alloc]initWithTitle:@"Victory" message:[NSString stringWithFormat:@"%@",result.text] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}


//adding animation to the imageviews after victory

-(void) addAnimationToVictory:(UIImageView *)imageView1 withImage2:(UIImageView *)imageView2 withImageView3:(UIImageView *)imageView3{
    [self flipUpSideDownEffectAnimation:imageView1];
    [self flipUpSideDownEffectAnimation:imageView2];
    [self flipUpSideDownEffectAnimation:imageView3];
}


-(BOOL)checkForDraw{
    BOOL resultz = YES;
    
    if(image00.image == nil || image01.image == nil || image02.image == nil || image10.image == nil || image11.image ==nil || image12.image == nil || image20.image == nil || image21.image == nil || image22 == nil){
        resultz = NO;
    }
    
    return resultz;
}




@end
