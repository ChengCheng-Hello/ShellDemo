#!/usr/bin/env bash
adb shell dumpsys window | grep -E 'mCurrentFocus'
