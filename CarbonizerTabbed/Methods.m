//
//  Methods.m
//  JSON iOS
//
//  Created by Eric Martin on 12/2/13.
//  Copyright (c) 2013 Martin Developments. All rights reserved.
//

#import "Methods.h"
#import "CommonCrypto/CommonDigest.h"

@implementation Methods

+ (NSString *)sha1:(NSString*)str
{
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    
    CC_SHA1(data.bytes, (CC_LONG)data.length, digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    
    for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
    {
        [output appendFormat:@"%02x", digest[i]];
    }
    
    return output;
}

+ (NSString *)getDataBetweenFromString:(NSString *)data leftString:(NSString *)leftData rightString:(NSString *)rightData
{
    NSInteger leftPos = [leftData length];
    NSInteger left, right;
    NSString *foundData;
    NSScanner *scanner=[NSScanner scannerWithString:data];
    [scanner scanUpToString:leftData intoString: nil];
    left = [scanner scanLocation];
    [scanner setScanLocation:left + leftPos];
    [scanner scanUpToString:rightData intoString: nil];
    right = [scanner scanLocation] + 1;
    left += leftPos;
    foundData = [data substringWithRange: NSMakeRange(left, (right - left) - 1)];
    return foundData;
}

+ (BOOL)stringToBool:(NSString *)boolString
{
    if([boolString isEqualToString:@"1" ] || [boolString caseInsensitiveCompare:@"True"] == NSOrderedSame)
    {
        return TRUE;
    }
    else if([boolString isEqualToString:@"0" ] || [boolString caseInsensitiveCompare:@"False"] == NSOrderedSame)
    {
        return FALSE;
    }
    else
    {
        return FALSE;
    }
}

+ (NSString *)executeScript:(NSString *)scriptUrl
{
    NSString *strURL = [NSString stringWithFormat:@"%@",scriptUrl];
    NSString *encodedURL = [strURL stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    NSURL *url = [NSURL URLWithString:encodedURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSData *statuses = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *successfulString = [[NSString alloc] initWithData:statuses encoding:NSUTF8StringEncoding];
    successfulString = [successfulString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return successfulString;
}

+ (void)mysqlStatusCheck:(NSString *)scriptUrl
{
    NSString *strURL = [NSString stringWithFormat:@"%@",scriptUrl];
    NSString *encodedURL = [strURL stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
    NSURL *url = [NSURL URLWithString:encodedURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSData *statuses = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSString *successfulString = [[NSString alloc] initWithData:statuses encoding:NSUTF8StringEncoding];
    successfulString = [successfulString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if([successfulString isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Connection Failed" message:@"Connection could not be established" delegate: nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        NSString * connectionStat = [successfulString substringWithRange:NSMakeRange(0, 1)];
        NSString * queryStat = [successfulString substringWithRange:NSMakeRange(1, 1)];
        NSString * connectionString = @"Connection";
        NSString * queryString = @"Query";
        
        
        if ([connectionStat isEqualToString:@"0"])
        {
            connectionString = @"Failure";
        }
        else if ([connectionStat isEqualToString:@"1"])
        {
            connectionString = @"Success";
        }
        
        if ([queryStat isEqualToString:@"0"])
        {
            queryString = @"Failure";
        }
        else if ([queryStat isEqualToString:@"1"])
        {
            queryString = @"Success";
        }
        
        
        
        
        NSString *alertViewMsg = [NSString stringWithFormat:@"Connection Status: %@\n Query Status: %@",connectionString, queryString];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Connection/Query Results" message:alertViewMsg delegate: nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

@end
