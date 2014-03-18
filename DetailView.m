//
//  DetailView.m
//  Persistent Capture
//
//  Created by InternetCowboy | Codin Pangell on 2/3/14.
//  Copyright (c) 2014 InternetCowboy | Codin Pangell. All rights reserved.
//

#import "DetailView.h"
#import "UIComponentsClass.h"
#import <QuartzCore/QuartzCore.h>

@implementation DetailView{
    UIComponentsClass * uicore;

}

static NSString * const kFontName = @"HelveticaNeue-Bold";
static float kFontSize = 13.0f;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"Detail View...");
        self.backgroundColor = [UIColor grayColor];
        uicore = [UIComponentsClass new];
        
        
        [self addSubview:self.coverView];
        [self addSubview:self.albumTitle];
        
    }
    return self;
}

- (void)layoutSubviews {
	[super layoutSubviews];
    
    self.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    self.coverView.frame = self.frame;
    
    //title
    self.albumTitle.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    self.albumTitle.textAlignment = NSTextAlignmentCenter;
    
}

- (UILabel *)albumTitle {
 
    if (!_albumTitle) {
        _albumTitle = [uicore newCustomFontLabel:@"BASE APPLICATION" y:0 x:0 w:0 h:0 fontName:kFontName fontSize:kFontSize];
        _albumTitle.textColor = [UIColor whiteColor];
    }
    
    return _albumTitle;
}
- (UIView *)coverView {
    if (!_coverView) {
        _coverView = [[UIView alloc] initWithFrame:self.frame];
        _coverView.frame = CGRectMake(20, 115, (self.frame.size.width / 2), (self.frame.size.width / 2));
        _coverView.backgroundColor = [UIColor grayColor];
    }
    
    return _coverView;
}



@end
