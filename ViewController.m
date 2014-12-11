//
//  ViewController.m
//  lblSizeHeightBy
//
//  Created by Subramani B R on 6/21/14.
//  Copyright (c) 2014 Subramani B R. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(CGSize)lblSize:(NSString *)content lblFont:(UIFont *)contectLblFont width:(int)Width
{
    CGSize maximumLabelSize;
    maximumLabelSize = CGSizeMake(Width,9999);
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:content
     attributes:@
     {
     NSFontAttributeName:contectLblFont
     }];
    CGRect rect = [attributedText boundingRectWithSize:(CGSize){maximumLabelSize.width, CGFLOAT_MAX}
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                               context:nil];
    CGSize size = rect.size;
    return size;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    NSString *tempStr=@"I plan on developing for iOS and Android. I have some experience in programming, particularly c++ and Java.";
    
    

    UIFont *font = [UIFont boldSystemFontOfSize:28];
    self.lbl=[[UILabel alloc]init];
    CGSize lblSize=[self lblSize:tempStr lblFont:font width:300];
    self.lbl.frame=CGRectMake(10, 70, 300, lblSize.height+10);
    self.lbl.numberOfLines = 0;
    self.lbl.textAlignment=NSTextAlignmentLeft;
    self.lbl.text=tempStr;
    [self.view addSubview:self.lbl];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
