//
//  DHImgTopBtn.m
//  qmtk
//
//  Created by dh on 2017/9/8.
//  Copyright © 2017年 dh. All rights reserved.
//

#import "DHImgTopBtn.h"

@implementation DHImgTopBtn

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        
    }
    return self;
}
-(void)setFont:(UIFont *)font {
    _font = font;
    self.titleLabel.font = font;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    //自定义按钮样式
    CGFloat btnW = self.frame.size.width;
    CGFloat btnH = self.frame.size.height;
//    CGSize textSize = [self.titleLabel.text boundingRectWithSize:CGSizeMake(1000, 100) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.titleLabel.font} context:nil].size;
    
    
    CGFloat textHeight = [self.titleLabel.text boundingRectWithSize:CGSizeMake(1000, 100) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:self.titleLabel.font} context:nil].size.height;
    
    CGSize textSize = CGSizeMake(btnW, textHeight);
    self.titleLabel.textAlignment = NSTextAlignmentCenter;

//    [self.titleLabel sizeToFit];
    [self.imageView sizeToFit];
    CGSize imageSize = self.imageView.frame.size;
    
    
    CGFloat padding = 6;
    if (_margin) {
        padding = _margin;
    }
    
    //文字与图片的间距设置为6个点
    CGFloat bothHeight = textSize.height + imageSize.height + padding;
    CGFloat imgY = (btnH - bothHeight) * 0.5;
    CGFloat imgX = (btnW - imageSize.width) * 0.5;
    //图标的frame值
    self.imageView.frame = CGRectMake(imgX, imgY, imageSize.width, imageSize.height);
    
    CGFloat textX = (btnW - textSize.width) * 0.5;
    CGFloat textY = imgY + imageSize.height + padding;
    //文字的frame值
    self.titleLabel.frame = CGRectMake(textX, textY, textSize.width, textSize.height);
    
    
}

-(void)setHighlighted:(BOOL)highlighted{
    
}

@end
