//
//  DHImgLeftBtn.m
//  qmtk
//
//  Created by dh on 2017/9/9.
//  Copyright © 2017年 dh. All rights reserved.
//

#import "DHImgRightBtn.h"

@implementation DHImgRightBtn


-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {

    }
    return self;
}
-(void)setFont:(UIFont *)font {
    _font = font;
    self.titleLabel.font = font;
}
//左图  6
-(void)layoutSubviews{
    [super layoutSubviews];
    //自定义按钮样式
    CGFloat btnW = self.frame.size.width;
    CGFloat btnH = self.frame.size.height;
    CGSize textSize = [self.titleLabel.text boundingRectWithSize:CGSizeMake(100, 100) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.titleLabel.font} context:nil].size;
    [self.imageView sizeToFit];
    CGSize imageSize = self.imageView.frame.size;
    
    
    CGFloat padding = 6;
    if (self.margin) {
        padding = self.margin;
    }
    
    
    //文字与图片的间距设置为6个点
    CGFloat bothW = textSize.width + imageSize.width + padding;
    
    CGFloat textX = (btnW - bothW) * 0.5;
    CGFloat textY = (btnH - textSize.height) * 0.5;
    self.titleLabel.frame = CGRectMake(textX, textY, textSize.width, textSize.height);
    
    CGFloat imgX = textX + textSize.width + padding;
    CGFloat imgY = (btnH - imageSize.height) * 0.5;
    self.imageView.frame = CGRectMake(imgX, imgY, imageSize.width, imageSize.height);
    
//    CGFloat imgX = (btnW - bothW) * 0.5;
//    CGFloat imgY = (btnH - imageSize.height) * 0.5;
//    //图标的frame值
//    self.imageView.frame = CGRectMake(imgX, imgY, imageSize.width, imageSize.height);
//
//    CGFloat textX = imgX + imageSize.width + padding;
//    CGFloat textY = (btnH - textSize.height) * 0.5;
//    //文字的frame值
//    self.titleLabel.frame = CGRectMake(textX, textY, textSize.width, textSize.height);
    
    
}

-(void)setHighlighted:(BOOL)highlighted{
    
}

@end
