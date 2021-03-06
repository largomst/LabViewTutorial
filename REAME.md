# LabView 指南

这个项目记录我在学习 LabView 过程的困惑，希望能帮到后来的学习者。

## 属性节点

_你对属性节点第一次产生困惑的原因是什么？_

第一次看到的属性节点是在 LabView 子 VI 的范例文件中，不知道这个属性节点是怎么创建的。

属性节点可以通过右击控件，选择创建来创建。

_属性节点有什么用？_

属性节点可以读写 LabView 控件对象的属性数据，类似 Python 的` getattr() `方法。

调用节点类似，是可以直接调用控件对象的自带方法即 `getattr()()`。

_对象的属性可以修改吗？_

LabView 的控件的有些属性是可以修改的，但有的只能在编码时修改，而不能在运行时修改。

LabView 对象的分类可以通过创建**类型说明符常量**，单击它来显示。

## 属性节点的使用场景

想要在运行时修改控件的标题（标签不能在运行时修改），只需将文本写入到控件的**属性节点-标题-文本**。

右击属性节点，选择**名称格式-长名称**可以将属性节点的属性名用中文显示。


## 事件结构

左侧的一排标签表示的是关于当前事件的各种属性。

事件经常搭配循环一起使用，称作事件循环结构。

### 动态事件

静态事件：单个 VI 内的控件发出的事件。
动态事件：一个控件的事件处理函数不在该控件所在的 VI，而在其子 VI 中，则需要将该控件注册到子 VI 的事件结构中。

## 错误处理

VI 属性对话框-执行中可以关闭错误自动处理，避免在执行过程中弹出错误信息对话框。

调试技巧：条件禁用结构和**项目-属性-条件禁用符号**结合可以达成在开发阶段执行调试代码，在部署阶段自动禁用调试代码的效果。

## 可重入

**VI 属性-执行-可重入** 启用会生成新的 VI 实例，数据与原 VI 独立，故设置可重入会使该 VI 可以多线程执行。

## 自定义控件和自定义类型

## 菜单

点击**编辑-运行时菜单**即可设置程序的菜单

## 隐藏菜单栏和工具栏

- **文件-属性-窗口外观-自定义**
- 用户点击菜单项的事件可以通过在事件结构中添加**<本 VI>-菜单选择用户**来处理，项标识符作为条件结构的输入，而菜单项就是条件结构的条件。
