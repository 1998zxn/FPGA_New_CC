# FPGA_New_CC

commit b017a1487a3818b6a5c3031ae133bed3e9b723a9 (HEAD -> main, origin/main, origin/HEAD)
Author: 1998zxn <961943547@qq.com>
Date:   Fri May 21 21:05:09 2021 +0800

    再次降低发包速率

本次修改结论：确定了丢包是前期等待时间太短造成的！

交换机收到大约50Mbps的数据包，刚开始不知道应该发送到哪个端口（即时配置了静态MAC也没有用）。

但是返回ACK时已经可以确定端口了，所以ACk未丢失。