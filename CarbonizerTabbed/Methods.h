//
//  Methods.h
//  JSON iOS
//
//  Created by Eric Martin on 12/2/13.
//  Copyright (c) 2013 Martin Developments. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Methods : NSObject

+ (NSString *)sha1:(NSString *)str;
+ (NSString *)getDataBetweenFromString:(NSString *)data leftString:(NSString *)leftData rightString:(NSString *)rightData;
+ (void)mysqlStatusCheck:(NSString *)scriptUrl;
+ (NSString *)executeScript:(NSString *)scriptUrl;
+ (BOOL)stringToBool:(NSString *)boolString;

@end
