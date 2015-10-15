#LabVIEW GlobalStop Library

提供给系统使用的全局停止方案。

使用Function Global Variable （FGV）的方式，存储一个Boolean 类型的标志数据，不同线程通过读取该FGV判断是否需要停止。

- Init.vi : 初始化FGV，设置为False
- Set.vi : 设置FGV为True
- Reset.vi :设置FGV为False
- Get.vi :检查FGV值，如果输入的错误簇为False，会自动调用Set.vi 方法
- CheckSet.vi :检查输入的Boolean值，（通常连接到Stop Button上）判断是否需要退出。如果输入的错误簇为False，会自动调用Set.vi 方法

优点：简单、高效、易用，FGV的方案也保证了多线程安全。
