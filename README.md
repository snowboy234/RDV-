# RDV-
学习使用RDVTabBarController

添加标题和图片时，要使用本库的接口

RDVTabBarController 这个库默认添加的视图的高度是减去tabbar高度49的，所以在跳转的时候底部会出现其他颜色的背景条，到RDVTabBarController.m里面第215修改了下

tabbar的隐藏：一级页面需要显示tabbar，二级页面需要隐藏
              所以写了2个父类，可以分别继承
