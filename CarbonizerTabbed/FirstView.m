//
//  FirstView.m
//  CarbonizerTabbed
//
//  Created by Eric Martin on 4/20/14.
//  Copyright (c) 2014 Martin Developments. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView

@synthesize rightWrong;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    NSLog(@"Color: %@",self.backgroundColor);
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    //NSLog(@"%f",screenSize.height);
    
    if(screenSize.height == 480)
    {
        if(rightWrong != 1)
        {
            //// Color Declarations
            UIColor* carbonizerGray = [UIColor colorWithRed: 0.812 green: 0.812 blue: 0.812 alpha: 1];
            UIColor* carbonizerPurple = [UIColor colorWithRed: 0.667 green: 0.043 blue: 0.631 alpha: 1];
            
            //// Abstracted Attributes
            CGRect sevenFRect = CGRectMake(170, 371, 137, 55);
            CGRect threeFRect = CGRectMake(170, 242, 64, 55);
            CGRect fiveFRect = CGRectMake(170.5, 306, 64, 55);
            CGRect oneSRect = CGRectMake(12, 177, 64, 54);
            CGRect sevenSRect = CGRectMake(12, 372, 138, 54);
            CGRect threeSRect = CGRectMake(12, 242, 64, 54);
            CGRect fiveSRect = CGRectMake(12, 307, 64, 54);
            CGRect fiveS2Rect = CGRectMake(86, 307, 64, 54);
            
            
            //// FButtons
            {
                //// OneF Drawing
                UIBezierPath* oneFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(170, 177, 64, 55) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [oneFPath fill];
                [[UIColor blackColor] setStroke];
                oneFPath.lineWidth = 5;
                [oneFPath stroke];
                
                
                //// TwoF Drawing
                UIBezierPath* twoFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(244, 177, 64, 55) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [twoFPath fill];
                [[UIColor blackColor] setStroke];
                twoFPath.lineWidth = 5;
                [twoFPath stroke];
                
                
                //// SevenF Drawing
                UIBezierPath* sevenFPath = [UIBezierPath bezierPathWithRoundedRect: sevenFRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [sevenFPath fill];
                [[UIColor blackColor] setStroke];
                sevenFPath.lineWidth = 5;
                [sevenFPath stroke];
                
                
                //// ThreeF Drawing
                UIBezierPath* threeFPath = [UIBezierPath bezierPathWithRoundedRect: threeFRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [threeFPath fill];
                [[UIColor blackColor] setStroke];
                threeFPath.lineWidth = 5;
                [threeFPath stroke];
                
                
                //// FourF Drawing
                UIBezierPath* fourFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(243.5, 242, 64, 55) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fourFPath fill];
                [[UIColor blackColor] setStroke];
                fourFPath.lineWidth = 5;
                [fourFPath stroke];
                
                
                //// FiveF Drawing
                UIBezierPath* fiveFPath = [UIBezierPath bezierPathWithRoundedRect: fiveFRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fiveFPath fill];
                [[UIColor blackColor] setStroke];
                fiveFPath.lineWidth = 5;
                [fiveFPath stroke];
                
                
                //// SixF Drawing
                UIBezierPath* sixFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(244.5, 306, 64, 55) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [sixFPath fill];
                [[UIColor blackColor] setStroke];
                sixFPath.lineWidth = 5;
                [sixFPath stroke];
            }
            
            
            //// SButtons
            {
                //// OneS Drawing
                UIBezierPath* oneSPath = [UIBezierPath bezierPathWithRoundedRect: oneSRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [oneSPath fill];
                [[UIColor blackColor] setStroke];
                oneSPath.lineWidth = 5;
                [oneSPath stroke];
                
                
                //// TwoS Drawing
                UIBezierPath* twoSPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(86, 177, 64, 54) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [twoSPath fill];
                [[UIColor blackColor] setStroke];
                twoSPath.lineWidth = 5;
                [twoSPath stroke];
                
                
                //// SevenS Drawing
                UIBezierPath* sevenSPath = [UIBezierPath bezierPathWithRoundedRect: sevenSRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [sevenSPath fill];
                [[UIColor blackColor] setStroke];
                sevenSPath.lineWidth = 5;
                [sevenSPath stroke];
                
                
                //// ThreeS Drawing
                UIBezierPath* threeSPath = [UIBezierPath bezierPathWithRoundedRect: threeSRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [threeSPath fill];
                [[UIColor blackColor] setStroke];
                threeSPath.lineWidth = 5;
                [threeSPath stroke];
                
                
                //// FourS Drawing
                UIBezierPath* fourSPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(86, 242, 64, 54) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fourSPath fill];
                [[UIColor blackColor] setStroke];
                fourSPath.lineWidth = 5;
                [fourSPath stroke];
                
                
                //// FiveS Drawing
                UIBezierPath* fiveSPath = [UIBezierPath bezierPathWithRoundedRect: fiveSRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fiveSPath fill];
                [[UIColor blackColor] setStroke];
                fiveSPath.lineWidth = 5;
                [fiveSPath stroke];
                
                
                //// SixS Drawing
                UIBezierPath* fiveS2Path = [UIBezierPath bezierPathWithRoundedRect: fiveS2Rect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fiveS2Path fill];
                [[UIColor blackColor] setStroke];
                fiveS2Path.lineWidth = 5;
                [fiveS2Path stroke];
            }
            
            
            //// ZeroSF Drawing
            UIBezierPath* zeroSFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(12, 111, 296, 54) cornerRadius: 3.7];
            [carbonizerGray setFill];
            [zeroSFPath fill];
            [[UIColor blackColor] setStroke];
            zeroSFPath.lineWidth = 5;
            [zeroSFPath stroke];
            
            
            //// InfoDisplay Drawing
            UIBezierPath* infoDisplayPath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 320, 104)];
            [carbonizerPurple setFill];
            [infoDisplayPath fill];
        }
    }
    
    
    else
    {
        if(rightWrong != 1)
        {
            //// Color Declarations
            UIColor* carbonizerPurple = [UIColor colorWithRed: 0.667 green: 0.043 blue: 0.631 alpha: 1];
            UIColor* carbonizerGray = [UIColor colorWithRed: 0.812 green: 0.812 blue: 0.812 alpha: 1];
            
            //// Abstracted Attributes
            CGRect sevenFRect = CGRectMake(170, 448, 137, 64);
            CGRect threeFRect = CGRectMake(170, 298, 64, 64);
            CGRect fiveFRect = CGRectMake(170.5, 373, 64, 64);
            CGRect oneSRect = CGRectMake(12, 223, 64, 64);
            CGRect sevenSRect = CGRectMake(12, 448, 138, 64);
            CGRect threeSRect = CGRectMake(12, 298, 64, 64);
            CGRect fiveSRect = CGRectMake(12, 373, 64, 64);
            
            
            //// FButtons
            {
                //// OneF Drawing
                UIBezierPath* oneFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(170, 223, 64, 64) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [oneFPath fill];
                [[UIColor blackColor] setStroke];
                oneFPath.lineWidth = 5;
                [oneFPath stroke];
                
                
                //// TwoF Drawing
                UIBezierPath* twoFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(244, 223, 64, 64) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [twoFPath fill];
                [[UIColor blackColor] setStroke];
                twoFPath.lineWidth = 5;
                [twoFPath stroke];
                
                
                //// SevenF Drawing
                UIBezierPath* sevenFPath = [UIBezierPath bezierPathWithRoundedRect: sevenFRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [sevenFPath fill];
                [[UIColor blackColor] setStroke];
                sevenFPath.lineWidth = 5;
                [sevenFPath stroke];
                
                
                //// ThreeF Drawing
                UIBezierPath* threeFPath = [UIBezierPath bezierPathWithRoundedRect: threeFRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [threeFPath fill];
                [[UIColor blackColor] setStroke];
                threeFPath.lineWidth = 5;
                [threeFPath stroke];
                
                
                //// FourF Drawing
                UIBezierPath* fourFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(243.5, 298, 64, 64) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fourFPath fill];
                [[UIColor blackColor] setStroke];
                fourFPath.lineWidth = 5;
                [fourFPath stroke];
                
                
                //// FiveF Drawing
                UIBezierPath* fiveFPath = [UIBezierPath bezierPathWithRoundedRect: fiveFRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fiveFPath fill];
                [[UIColor blackColor] setStroke];
                fiveFPath.lineWidth = 5;
                [fiveFPath stroke];
                
                
                //// SixF Drawing
                UIBezierPath* sixFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(244.5, 373, 64, 64) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [sixFPath fill];
                [[UIColor blackColor] setStroke];
                sixFPath.lineWidth = 5;
                [sixFPath stroke];
            }
            
            
            //// SButtons
            {
                //// OneS Drawing
                UIBezierPath* oneSPath = [UIBezierPath bezierPathWithRoundedRect: oneSRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [oneSPath fill];
                [[UIColor blackColor] setStroke];
                oneSPath.lineWidth = 5;
                [oneSPath stroke];
                
                
                //// TwoS Drawing
                UIBezierPath* twoSPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(86, 223, 64, 64) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [twoSPath fill];
                [[UIColor blackColor] setStroke];
                twoSPath.lineWidth = 5;
                [twoSPath stroke];
                
                
                //// SevenS Drawing
                UIBezierPath* sevenSPath = [UIBezierPath bezierPathWithRoundedRect: sevenSRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [sevenSPath fill];
                [[UIColor blackColor] setStroke];
                sevenSPath.lineWidth = 5;
                [sevenSPath stroke];
                
                
                //// ThreeS Drawing
                UIBezierPath* threeSPath = [UIBezierPath bezierPathWithRoundedRect: threeSRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [threeSPath fill];
                [[UIColor blackColor] setStroke];
                threeSPath.lineWidth = 5;
                [threeSPath stroke];
                
                
                //// FourS Drawing
                UIBezierPath* fourSPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(86, 298, 64, 64) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fourSPath fill];
                [[UIColor blackColor] setStroke];
                fourSPath.lineWidth = 5;
                [fourSPath stroke];
                
                
                //// FiveS Drawing
                UIBezierPath* fiveSPath = [UIBezierPath bezierPathWithRoundedRect: fiveSRect cornerRadius: 3.7];
                [carbonizerGray setFill];
                [fiveSPath fill];
                [[UIColor blackColor] setStroke];
                fiveSPath.lineWidth = 5;
                [fiveSPath stroke];
                
                
                //// SixS Drawing
                UIBezierPath* sixSPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(86, 373, 64, 64) cornerRadius: 3.7];
                [carbonizerGray setFill];
                [sixSPath fill];
                [[UIColor blackColor] setStroke];
                sixSPath.lineWidth = 5;
                [sixSPath stroke];
            }
            
            
            //// ZeroSF Drawing
            UIBezierPath* zeroSFPath = [UIBezierPath bezierPathWithRoundedRect: CGRectMake(12, 147, 296, 64) cornerRadius: 3.7];
            [carbonizerGray setFill];
            [zeroSFPath fill];
            [[UIColor blackColor] setStroke];
            zeroSFPath.lineWidth = 5;
            [zeroSFPath stroke];
            
            
            //// InfoDisplay Drawing
            UIBezierPath* infoDisplayPath = [UIBezierPath bezierPathWithRect: CGRectMake(0, 0, 320, 139)];
            [carbonizerPurple setFill];
            [infoDisplayPath fill];
        }
    }
}


@end

