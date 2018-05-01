- [参考:How to Share Files Between Windows and Linux](https://www.howtogeek.com/176471/how-to-share-files-between-windows-and-linux/)

1. 打开控制面板，进入“网络和共享中心”，点击左侧“更改高级共享设置”

![](img/sf0.png)  
2. 开启网络发现和文件共享，保存更改

![](img/sf1.png)  
3. 编辑要共享的文件夹`D:smb_usr\`，属性

![](img/sf2.png)  
4. 勾选“共享此文件夹”，并点击权限

![](img/sf3.png)  
5. 添加用户名，设置权限。账号密码登录共享目录的用户为admin
，匿名登录共享目录的用户为Everyone

![](img/sf4.png)

![](img/sf6.png)  
6. 回到文件夹属性的“安全栏”，更改对应用户的权限。若没有相关用户，如Everyone，则要添加（用户应与第5步设置相同）

![](img/sf5.png)

![](img/sf7.png)

![](img/sf8.png)
