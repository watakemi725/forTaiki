//
//  ViewController.m
//  fortaiki
//
//  Created by Takemi Watanuki on 2015/02/14.
//  Copyright (c) 2015年 watakemi725. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


-(IBAction)randombtn{
    
    
    randomNum = arc4random_uniform(2);
    NSLog(@"%d",randomNum);
    
    if (randomNum == 0) {
        name = @"くも";
        nameString = [@[@"とり", @"ひこうき", @"くも"] mutableCopy];
        
    }else if (randomNum == 1){
        
        name = @"ひこうき";
        nameString = [@[@"とり", @"ひこうき", @"くも"] mutableCopy];
        
    }
    
    // 配列をランダムに並び替える
    for (int i=0; i<[nameString count]; i++)
    {
        int j = arc4random() % 3;
        [nameString exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    
    btn1.titleLabel.text=[NSString stringWithFormat:@"%@",nameString[0]];
    btn2.titleLabel.text=[NSString stringWithFormat:@"%@",nameString[1]];
    btn3.titleLabel.text=[NSString stringWithFormat:@"%@",nameString[2]];
    
    answerLabel.text=[NSString stringWithFormat:@"%@",name];
}

-(IBAction)pushBtn1{
    //答えがあっているかどうかチェックする
    if (name==nameString[0]) {
        hanteiLabel.text =@"正解";
    }else{
        hanteiLabel.text =@"ちがうよ";
    }
}

-(IBAction)pushBtn2{
    //答えがあっているかどうかチェックする
    if (name==nameString[1]) {
        hanteiLabel.text =@"正解";
    }else{
        hanteiLabel.text =@"ちがうよ";
    }
    
}

-(IBAction)pushBtn3{
    //答えがあっているかどうかチェックする
    if (name==nameString[2]) {
        hanteiLabel.text =@"正解";
    }else{
        hanteiLabel.text =@"ちがうよ";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
