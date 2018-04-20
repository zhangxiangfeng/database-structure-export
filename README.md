# Database-Structure-Export 

> 一款提供JDBC基本连接信息,导出数据字典为网页,便于浏览的小工具

## 1.预览图

- a.访问首页
[![e1](http://img.openread.cn/e1.png "e1")](http://img.openread.cn/e1.png "e1")


- b.导出结果页面
[![e2](http://img.openread.cn/e2.png "e2")](http://img.openread.cn/e2.png "e2")


## 2.如何使用?


- a.tomcat方式
 
>  [下载platform.war](https://github.com/zhangxiangfeng/database-structure-export/releases "下载platform.war"),丢tomcat的webapps下面即可


-  b.docker方式(推荐)

```
docker run -d -it -p 8555:8080  --name local_database-structure-export registry.cn-hangzhou.aliyuncs.com/zhangxiangfeng/database-structure-export:0.1

浏览器访问 http://localhost:8555/platform/ 即可

```

`Tips:`

> 如果您采用docker启动,注意数据库的Host,不要写localhost或127.0.0.1,此时localhost或127.0.0.1指的是容器本身而不是宿主机

**如果感觉本资源帮到了您,给个star,鼓励一下作者吧!**
