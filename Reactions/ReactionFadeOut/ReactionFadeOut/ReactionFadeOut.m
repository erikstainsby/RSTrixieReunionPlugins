//
//  ReactionFadeOut.m
//  ReactionFadeOut
//
//  Created by Erik Stainsby on 12-03-01.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionFadeOut.h"

@interface ReactionFadeOut ()

@end

@implementation ReactionFadeOut

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Fade Out"];
		[self setAction:@"fadeOut"];
	}
    
    return self;
}


@end
