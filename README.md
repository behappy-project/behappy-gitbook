# 定制化`gitbook`在线文档

#### 项目介绍
定制化`gitbook`服务

#### 安装部署教程

> Docker

1. 安装docker服务：`https://docs.docker.com/install/#supported-platforms`
2. 安装docker-compose：`https://docs.docker.com/compose/install/`
3. 进入根目录执行 `docker-compose up -d`

> 本地试运行

1. 安装 GitBook-cli `npm install gitbook-cli -g`
2. cmd切到book下,gitbook 初始化 `gitbook init`   
   `注: 超过node10的版本,需替换掉/xxx/lib/node_modules/gitbook-cli/node_modules/npm/node_modules/graceful-fs/polyfills.js文件,或注释掉61-63`
3. 下载依赖项,执行 `gitbook install `  
   `注: 4,5可选一个执行`
4. 服务形式启动,默认端口4000:执行`gitbook serve`
5. 构建成静态文件:执行`gitbook build`,使用代理工具,如下是nginx的例子

~~~
location /gitbook {
    alias  /xxx;
    index  index.html index.htm;
    try_files $uri $uri/ /gitbook/index.html;
    charset utf-8;
}
~~~

#### 使用说明
1. 在./book文件夹下创作
2. 使用markdown语法进行开发
3. 在summary.md文件配置目录结构
