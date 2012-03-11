//
//  ReactionFadeTo.m
//  ReactionFadeTo
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionFadeTo.h"

@interface ReactionFadeTo ()

@end

@implementation ReactionFadeTo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Fade To"];
		[self setAction:@"fadeTo"];
    }
    
    return self;
}

@end
