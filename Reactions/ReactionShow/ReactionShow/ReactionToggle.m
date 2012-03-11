//
//  ReactionToggle.m
//  ReactionShow
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionToggle.h"

@interface ReactionToggle ()

@end

@implementation ReactionToggle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Toggle"];
		[self setAction:@"toggle"];
    }
    
    return self;
}

@end
