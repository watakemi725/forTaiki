//
//  ViewController.h
//  fortaiki
//
//  Created by Takemi Watanuki on 2015/02/14.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton *btn1;
    IBOutlet UIButton *btn2;
    IBOutlet UIButton *btn3;
    
    NSMutableArray *nameString;
    NSString *name ;
    
    int randomNum;
    
    IBOutlet UILabel *hanteiLabel;
    IBOutlet UILabel *answerLabel;
}

-(IBAction)randombtn;

-(IBAction)pushBtn1;
-(IBAction)pushBtn2;
-(IBAction)pushBtn3;
@end

