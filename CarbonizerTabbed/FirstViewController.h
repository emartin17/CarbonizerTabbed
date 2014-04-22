//
//  FirstViewController.h
//  CarbonizerTabbed
//
//  Created by Eric Martin on 3/3/14.
//  Copyright (c) 2014 Martin Developments. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstView.h"

@interface FirstViewController : UIViewController <UIAlertViewDelegate, UITextFieldDelegate>
{
    NSArray *majorSharpKeySigs;
    NSArray *majorSharpKeyAnswers;
    NSArray *majorFlatKeySigs;
    NSArray *majorFlatKeyAnswers;
    NSArray *minorSharpKeySigs;
    NSArray *minorSharpKeyAnswers;
    NSArray *minorFlatKeySigs;
    NSArray *minorFlatKeyAnswers;
    NSDictionary *keyset;
    NSDictionary *majSh;
    NSDictionary *majFl;
    NSDictionary *minSh;
    NSDictionary *minFl;
    NSMutableArray *sigs;
    bool majorSharpsOn;
    bool majorFlatsOn;
    bool minorSharpsOn;
    bool minorFlatsOn;
    bool flashingOn;
    bool timerOn;
    UITextField *betaKey;
    
    __weak IBOutlet UIButton *startButton;
    
    IBOutletCollection(UIButton) NSArray *guessButtons;
    
    IBOutlet UILabel *keySigShower;
    IBOutlet UILabel *score;
    IBOutlet UILabel *lives;
    IBOutlet UILabel *timerLabel;
    IBOutlet UILabel *answerLabel;
    bool MSKeySet;
    bool mSKeySet;
    bool MFKeySet;
    bool mFKeySet;
    NSString *guess;
    
    
}

-(IBAction)startQuiz:(id)sender;

-(IBAction)Zero:(id)sender;

-(IBAction)OneF:(id)sender;
-(IBAction)TwoF:(id)sender;
-(IBAction)ThreeF:(id)sender;
-(IBAction)FourF:(id)sender;
-(IBAction)FiveF:(id)sender;
-(IBAction)SixF:(id)sender;
-(IBAction)SevenF:(id)sender;

-(IBAction)OneS:(id)sender;
-(IBAction)TwoS:(id)sender;
-(IBAction)ThreeS:(id)sender;
-(IBAction)FourS:(id)sender;
-(IBAction)FiveS:(id)sender;
-(IBAction)SixS:(id)sender;
-(IBAction)SevenS:(id)sender;

-(bool)guessCheck;
-(NSString*)sigChooser;
-(void)flashGreen;
-(void)flashRed;
-(void)revertColor;

-(void)updateLabel;
-(void)timeRanOut;
-(void)resetTimer;



@end
