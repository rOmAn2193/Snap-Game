//
//  ViewController.m
//  Snap Game
//
//  Created by Roman on 1/15/16.
//  Copyright © 2016 Roman Puzey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    scoreInt = 0;
    timerInt = 20;

    self.SnapOutlet.enabled = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)StartGame:(id)sender
{
    if (scoreInt == 0)
    {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerUpdate) userInfo:nil repeats:YES];

        self.SnapOutlet.enabled = YES;
        self.StartOutlet.enabled = NO;
    }

    if (timerInt == 0)
    {
        timerInt = 28;
        scoreInt = 0;

        self.TimeLabel.text = [NSString stringWithFormat:@"%i", timerInt];
        self.ScoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];

        [self.StartOutlet setTitle:@"Start Game" forState:UIControlStateNormal];
    }
}

-(void)TimerUpdate
{
    timerInt -= 1;

    self.TimeLabel.text = [NSString stringWithFormat:@"%i", timerInt];

    int RandomOne = arc4random() % 6;
    switch (RandomOne)
    {
        case 0:
            self.Imageview1.image = [UIImage imageNamed:@"Car1.jpg"];
            break;
        case 1:
            self.Imageview1.image = [UIImage imageNamed:@"Car2.jpg"];
            break;
        case 2:
            self.Imageview1.image = [UIImage imageNamed:@"Car3.jpg"];
            break;
        case 3:
            self.Imageview1.image = [UIImage imageNamed:@"Car4.jpg"];
            break;
        case 4:
            self.Imageview1.image = [UIImage imageNamed:@"Car5.jpg"];
            break;
        case 5:
            self.Imageview1.image = [UIImage imageNamed:@"Car6.jpg"];
            break;

        default:
            break;
    }

    int RandomTwo = arc4random() % 6;
    switch (RandomTwo)
    {
        case 0:
            self.Imageview2.image = [UIImage imageNamed:@"Car1.jpg"];
            break;
        case 1:
            self.Imageview2.image = [UIImage imageNamed:@"Car2.jpg"];
            break;
        case 2:
            self.Imageview2.image = [UIImage imageNamed:@"Car3.jpg"];
            break;
        case 3:
            self.Imageview2.image = [UIImage imageNamed:@"Car4.jpg"];
            break;
        case 4:
            self.Imageview2.image = [UIImage imageNamed:@"Car5.jpg"];
            break;
        case 5:
            self.Imageview2.image = [UIImage imageNamed:@"Car6.jpg"];
            break;

        default:
            break;
    }

    if (timerInt == 0)
    {
        [timer invalidate];

        self.SnapOutlet.enabled = NO;
        self.StartOutlet.enabled = YES;

        [self.StartOutlet setTitle:@"Restart Game" forState:UIControlStateNormal];
    }
}

- (IBAction)Snap:(id)sender
{
    if ([self.Imageview1.image isEqual:self.Imageview2.image])
    {
        scoreInt += 1;

        self.ScoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    }
    else
    {
        scoreInt -= 1;

        self.ScoreLabel.text = [NSString stringWithFormat:@"%i", scoreInt];
    }

}
@end
