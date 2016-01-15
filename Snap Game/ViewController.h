//
//  ViewController.h
//  Snap Game
//
//  Created by Roman on 1/15/16.
//  Copyright © 2016 Roman Puzey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *timer;
    int timerInt;

    NSTimer *ImageUpdate;
    int scoreInt;

}

@property (weak, nonatomic) IBOutlet UIImageView *Imageview1;
@property (weak, nonatomic) IBOutlet UIImageView *Imageview2;
@property (weak, nonatomic) IBOutlet UILabel *TimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *ScoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *StartOutlet;
@property (weak, nonatomic) IBOutlet UIButton *SnapOutlet;

- (IBAction)StartGame:(id)sender;
- (IBAction)Snap:(id)sender;

@end

