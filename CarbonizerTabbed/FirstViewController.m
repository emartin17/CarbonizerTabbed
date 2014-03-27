//
//  FirstViewController.m
//  CarbonizerTabbed
//
//  Created by Eric Martin on 3/3/14.
//  Copyright (c) 2014 Martin Developments. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"MajorSharpsOn"] && ![[NSUserDefaults standardUserDefaults] boolForKey:@"MajorFlatsOn"] && ![[NSUserDefaults standardUserDefaults] boolForKey:@"MinorSharpsOn"] && ![[NSUserDefaults standardUserDefaults] boolForKey:@"MinorFlatsOn"])
    {
        [[NSUserDefaults standardUserDefaults]
         setBool:TRUE forKey:@"MajorSharpsOn"];
        [[NSUserDefaults standardUserDefaults]
         setBool:TRUE forKey:@"MajorFlatsOn"];
        [[NSUserDefaults standardUserDefaults]
         setBool:TRUE forKey:@"MinorSharpsOn"];
        [[NSUserDefaults standardUserDefaults]
         setBool:TRUE forKey:@"MinorFlatsOn"];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    majorSharpKeySigs = [NSArray arrayWithObjects: @"C Major", @"G Major", @"D Major", @"A Major", @"E Major", @"B Major", @"F♯ Major", @"C♯ Major", nil];
    majorSharpKeyAnswers = [NSArray arrayWithObjects: @"0", @"1♯", @"2♯", @"3♯", @"4♯", @"5♯", @"6♯", @"7♯", nil];
    majorFlatKeySigs = [NSArray arrayWithObjects: @"C Major", @"F Major", @"B♭ Major", @"E♭ Major", @"A♭ Major", @"D♭ Major", @"G♭ Major", @"C♭ Major", nil];
    majorFlatKeyAnswers = [NSArray arrayWithObjects:  @"0", @"1f", @"2f", @"3f", @"4f", @"5f", @"6f", @"7f", nil];
    
    minorSharpKeySigs = [NSArray arrayWithObjects: @"A Minor", @"E Minor", @"B Minor", @"F♯ Minor", @"C♯ Minor", @"G♯ minor", @"D♯ minor", @"A♯ minor", nil];
    minorSharpKeyAnswers = [NSArray arrayWithObjects: @"0", @"1♯", @"2♯", @"3♯", @"4♯", @"5♯", @"6♯", @"7♯", nil];
    minorFlatKeySigs = [NSArray arrayWithObjects: @"A Minor", @"D Minor", @"G Minor", @"C Minor", @"F Minor", @"B♭ Minor", @"E♭ Minor", @"A♭ Minor", nil];
    minorFlatKeyAnswers = [NSArray arrayWithObjects: @"0", @"1f", @"2f", @"3f", @"4f", @"5f", @"6f", @"7f", nil];
    majSh = [[NSDictionary alloc] initWithObjects:majorSharpKeySigs forKeys:majorSharpKeyAnswers];
    majFl = [[NSDictionary alloc] initWithObjects:majorFlatKeySigs forKeys:majorFlatKeyAnswers];
    minSh = [[NSDictionary alloc] initWithObjects:minorSharpKeySigs forKeys:minorSharpKeyAnswers];
    minFl = [[NSDictionary alloc] initWithObjects:minorFlatKeySigs forKeys:minorFlatKeyAnswers];
    sigs = [[NSMutableArray alloc] init];
    keyset = [[NSDictionary alloc] init];
}

-(NSString*)sigChooser
{
    [sigs removeAllObjects];
    [NSUserDefaults standardUserDefaults];
    
    majorSharpsOn = [[NSUserDefaults standardUserDefaults]
                     boolForKey:@"MajorSharpsOn"];
    majorFlatsOn = [[NSUserDefaults standardUserDefaults]
                    boolForKey:@"MajorFlatsOn"];
    minorSharpsOn = [[NSUserDefaults standardUserDefaults]
                     boolForKey:@"MinorSharpsOn"];
    minorFlatsOn = [[NSUserDefaults standardUserDefaults]
                    boolForKey:@"MinorFlatsOn"];
    timerOn = [[NSUserDefaults standardUserDefaults]
               boolForKey:@"TimerEnabled"];
    
    if (majorSharpsOn)
    {
        [sigs addObject:majSh];
    }
    if (majorFlatsOn)
    {
        [sigs addObject:majFl];
    }
    if (minorSharpsOn)
    {
        [sigs addObject:minSh];
    }
    if (minorFlatsOn)
    {
        [sigs addObject:minFl];
    }
    
    NSUInteger randomIndex = arc4random()%sigs.count;
    keyset = [sigs objectAtIndex:randomIndex];
    NSArray *keys = [keyset allKeys];
    randomIndex = arc4random()%keys.count;
    NSString *randKey = [keys objectAtIndex:randomIndex];
    NSString *randSig = [keyset objectForKey:randKey];
    return randSig;
    //TODO: Then use arc4random on that Dictionary and pull that index's object to get a key, and the key is the answer.
}

-(IBAction)startQuiz:(id)sender
{
    if([startButton.titleLabel.text isEqualToString:@"Start"])
    {
        startButton.tintColor = [UIColor redColor];
        UIButton *currentButton;
        for (NSUInteger i = 0; i < guessButtons.count; i++)
        {
            currentButton = [guessButtons objectAtIndex:i];
            currentButton.enabled = TRUE;
            currentButton.alpha = 1.0;
        }
        keySigShower.text = [self sigChooser];
        [startButton setTitle:@"End" forState:UIControlStateNormal];
    }
    else if ([startButton.titleLabel.text isEqualToString:@"End"])
    {
        startButton.tintColor = [UIColor blueColor];
        UIButton *currentButton;
        for (NSUInteger i = 0; i < guessButtons.count; i++)
        {
            currentButton = [guessButtons objectAtIndex:i];
            currentButton.enabled = FALSE;
            currentButton.alpha = 0.4;
        }
        
        [startButton setTitle:@"Start" forState:UIControlStateNormal];
        int scoreNum = [score.text substringFromIndex:6].intValue;
        lives.text = @"Lives: 3";
        keySigShower.text = [NSString stringWithFormat:@"Game over. You ended with a score of %i.",scoreNum];
        score.text = @"Score: 0";
        answerLabel.text = @"";
        
    }
}

-(IBAction)Zero:(id)sender
{
    guess = @"0";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)OneF:(id)sender
{
    guess = @"1f";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)TwoF:(id)sender
{
    guess = @"2f";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)ThreeF:(id)sender
{
    guess = @"3f";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)FourF:(id)sender
{
    guess = @"4f";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)FiveF:(id)sender
{
    guess = @"5f";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)SixF:(id)sender
{
    guess = @"6f";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)SevenF:(id)sender
{
    guess = @"7f";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}
-(IBAction)OneS:(id)sender
{
    guess = @"1♯";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)TwoS:(id)sender
{
    guess = @"2♯";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)ThreeS:(id)sender
{
    guess = @"3♯";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)FourS:(id)sender
{
    guess = @"4♯";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)FiveS:(id)sender
{
    guess = @"5♯";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)SixS:(id)sender
{
    guess = @"6♯";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}

-(IBAction)SevenS:(id)sender
{
    guess = @"7♯";
    if([self guessCheck])
    {
        keySigShower.text = [self sigChooser];
    }
}




-(bool)guessCheck
{
    NSArray *correctAnswerArray = [keyset allKeysForObject:keySigShower.text];
    NSLog(@"%@",correctAnswerArray);
    NSString *correctAnswer = [correctAnswerArray objectAtIndex:0];
    int scoreNum = [score.text substringFromIndex:6].intValue;
    int livesNum = [lives.text substringFromIndex:6].intValue;
    
    
    if([guess isEqualToString:correctAnswer])
    {
        scoreNum = [score.text substringFromIndex:6].intValue;
        livesNum = [lives.text substringFromIndex:6].intValue;
        score.text = [NSString stringWithFormat:@"Score: %i",scoreNum+1];
        answerLabel.text = @"Correct!";
        return 1;
    }
    
    else
    {
        scoreNum = [score.text substringFromIndex:6].intValue;
        livesNum = [lives.text substringFromIndex:6].intValue;
        lives.text = [NSString stringWithFormat:@"Lives: %i",livesNum-1];
        correctAnswer = [correctAnswer stringByReplacingOccurrencesOfString:@"f" withString:@"♭"];
        correctAnswer = [correctAnswer stringByReplacingOccurrencesOfString:@"0" withString:@"0♯/♭"];
        answerLabel.text = [NSString stringWithFormat:@"Incorrect. The correct answer was %@",correctAnswer];
        if(livesNum == 0)
        {
            startButton.tintColor = [UIColor blueColor];
            UIButton *currentButton;
            for (NSUInteger i = 0; i < guessButtons.count; i++)
            {
                currentButton = [guessButtons objectAtIndex:i];
                currentButton.enabled = FALSE;
                currentButton.alpha = 0.4;
            }
            
            [startButton setTitle:@"Start" forState:UIControlStateNormal];
            int scoreNum = [score.text substringFromIndex:6].intValue;
            lives.text = @"Lives: 3";
            keySigShower.text = [NSString stringWithFormat:@"Game over. You ended with a score of %i.",scoreNum];
            score.text = @"Score: 0";
            answerLabel.text = @"";
            return false;
        }
        
        else
        {
            return TRUE;
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
