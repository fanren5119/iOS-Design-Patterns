//
//  Recive.m
//  CommandMode
//
//  Created by 王磊 on 16/3/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "Recive.h"

@interface Recive ()

@property (nonatomic, assign) CGFloat hue;
@property (nonatomic, assign) CGFloat saturation;
@property (nonatomic, assign) CGFloat brightness;
@property (nonatomic, assign) CGFloat alpha;

@end

@implementation Recive

- (void)setClientView:(UIView *)clientView
{
    _clientView = clientView;
    [clientView.backgroundColor getHue:&_hue
                            saturation:&_saturation
                            brightness:&_brightness
                                 alpha:&_alpha];
}

- (void)makeDarker:(CGFloat)parameter
{
    _brightness -= parameter;
    _brightness = MAX(_brightness, 0);
    self.clientView.backgroundColor = [UIColor colorWithHue:_hue saturation:_saturation brightness:_brightness alpha:_alpha];
}

- (void)makeLighter:(CGFloat)parameter
{
    _brightness += parameter;
    _brightness = MIN(_brightness, 1);
    self.clientView.backgroundColor = [UIColor colorWithHue:_hue saturation:_saturation brightness:_brightness alpha:_alpha];
}

@end
