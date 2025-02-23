##一个简单的与ollama交互的网页应用在线访问

-来自[作者官网](https://leftnorth.com/test.html)

-适配 Ollama API

-适配 DeepSex 14b 设置参数

-样式大幅精简，适合单角色对话

-输出时允许滚动

-可编辑历史消息

##自动配置

先运行`1配置后端.bat`

再运行Html页面

##手动配置

1、先配置好ollama环境变量:

```
OLLAMA_HOST: :11434
OLLAMA_ORIGINS: *
```

2、重启ollama

3、在浏览器中打开html

原始代码来自
https://github.com/Joburgess/ollama-simple-webui/tree/main
