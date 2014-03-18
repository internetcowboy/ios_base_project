//
//  PCMainViewController.m
//  Persistent Capture
//
//  Created by InternetCowboy | Codin Pangell on 1/29/14.
//  Copyright (c) 2014 InternetCowboy | Codin Pangell. All rights reserved.
//

#import "PCMainViewController.h"
#import "DetailView.h"


@interface PCMainViewController ()

@property (nonatomic,strong) DetailView *detailView;

@end

@implementation PCMainViewController {
    
   
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
   
    //attach sub views
    [self.view addSubview:self.detailView];
        
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews
{
    self.detailView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
}

#pragma mark Subviews

- (DetailView *)detailView {
    if (!_detailView) {
        _detailView = [[DetailView alloc] initWithFrame:self.view.bounds];
    }
    
    return _detailView;
}


@end
