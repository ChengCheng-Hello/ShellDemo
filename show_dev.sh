#!/usr/bin/env bash
echo -e "please input activityName(eg: com.baijiahulian.tianxiao.activity.TXMainActivity)"
read activityName

adb shell am start -W com.baijiahulian.tianxiao.dev/$activityName
