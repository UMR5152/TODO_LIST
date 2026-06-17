1. 将~/.lightclaw/lightclaw.json 中的 "channels" - "feishu"改为：
```
{
    "enabled": true,
    "botPrefix": "feishu",
    "appId": "cli_aa952e49f2fc9bfe",
    "appSecret": "y2nE44Ct5KvEae5nQyQnwdPsTJg0ZA4i",
    "encryptKey": "",
    "verificationToken": "",
    "mediaDir": "~/.lightclaw/media"
}
```

2. 执行命令：systemctl restart lightclaw
