##1.备忘录模式的引入
        以即时贴为例，很多人都喜欢用即时贴，每当我们需要记下一个简单小巧的提醒
    时，就把它写到即时贴上，后来这条信息用过之后，这个提醒就没用了，我们就会把它
    丢进垃圾桶。
        在面向对象用，同样借用了类似的思想，来保存对象的状态并在后来进行恢复。
    这个思想设计而来的一种设计模式叫做备忘录模式；
##2.备忘录模式
        在不破坏封装的前提下，补货一个对象的内部状态，并在该对象之外保存这个状
    态，这样以后就可将对象恢复到原先保存的状态。
##3.备忘录模式的类图
![](memorandum.png)

        备忘录模式有三个关键角色：原发器（originator）、备忘录（memento）和
    看管人（caretaker）。原发器创建一个包含其状态的备忘录，并创给看管人。看管
    人不知如何与备忘录交互，但会把备忘录放在安全支出保管好。
        当看管人请求Originator对象保存其状态时，Originator对象将使用其内部
    状态创建一个新的Memento实例。然后看管人保管Memento对象，或者将它保存到文
    件系统，一段时间后，再把它传回给Originator对象。Originator对象不知道这个
    Memento对象将如何被保存。看管人也不知道Memento对象里是什么。
##4.何时使用备忘录模式
        当同时满足一下两个条件时，可使用这一模式：
        ① 需要保存一个对象（或某部分）在某一个时刻的状态，这样以后就可以恢复到
    先前的状态；
        ② 用于获取状态的接口会暴露细节，需要将其隐藏起来。
##5.Cocoa Touch框架中的备忘录模式
        Cocoa Touch 在归档、属性列表序列化和核心数据中采用了备忘录模式。
