//
//  ReactionFadeToggle.m
//  ReactionFadeToggle
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionFadeToggle.h"

@interface ReactionFadeToggle ()

@end

@implementation ReactionFadeToggle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Fade Toggle"];
		[self setAction:@"fadeToggle"];
    }
    
    return self;
}

@end
