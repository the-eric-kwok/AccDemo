# AccDemo

iOS jailbreak Tweak that provide control of game's speed

Provide 3 modes for different games.

![image](https://github.com/brendonjkding/accDemo/blob/master/pic/1.gif)

# Pre-Compile

```shell
# update submodules
git submodule update --init --recursive

# Create a symlink to export private frameworks to Xcode SDK
ln -s $THEOS/sdks/iPhoneOS16.5.sdk/System/Library/PrivateFrameworks /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/System/Library/

# Install AltList
cd AltList
./install_to_theos.sh
```

## Credits and References

- [iosre / HippocampHairSalon](https://github.com/iosre/HippocampHairSalon)
- [gdbinit / readmem](https://github.com/gdbinit/readmem)
- [[原创]iOS 游戏辅助之游戏加速浅析](https://bbs.pediy.com/thread-221322.htm)
- [分析别人的 Unity 变速器插件](https://dlnn.net/2017/07/23/%E5%88%86%E6%9E%90%E5%88%AB%E4%BA%BA%E7%9A%84unity%E5%8F%98%E9%80%9F%E5%99%A8%E6%8F%92%E4%BB%B6/)
- [[求助]安卓端 手游变速器，类似光环助手的实现方式是怎样的？](https://bbs.pediy.com/thread-246438-1.htm)

## Used Library

- [remember17 / WHToast](https://github.com/remember17/WHToast)
- [liwq87112 / WQSuspendView](https://github.com/liwq87112/WQSuspendView)
- [opa334 / CCSupport](https://github.com/opa334/CCSupport)
