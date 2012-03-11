//
//  ReactionFadeIn.m
//  ReactionFadeIn
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionFadeIn.h"

@interface ReactionFadeIn ()

@end

@implementation ReactionFadeIn

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Fade In"];
		[self setAction:@"fadeIn"];
    }
    
    return self;
}


@end
