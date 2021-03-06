##1.单例模式简介
        单例模式是设计模式中最简单的形式之一，这一模式的目的是使得类
    的一个对象成为系统的唯一实例。要实现这一点，可以从客户端对其进行    
    实例化开始。因此需要用一种只允许生成对象唯一实例的机制，“阻止”所
    有想要生成对象的访问，使用工厂方法来限制实例化过程。这个方法应该
    是静态方法（类方法），因为让类的实例去生成另一个唯一实例毫无意义；
##2.结构图
![静态结构图](singleton.jpg)

        Static uniqueInstance是sigleton的唯一实例，static 
    sharedInstance将把它返回客户端。通常，sharedInstance 会检查
    uniqueInstance是否已经被实例化。如果没有，他就会生成一个实例，
    然后返回uniqueInstance。
##3.单例模式的三大要点
        ① 一个类只能有一个实例；
        ② 它必须自行创建这个实例；
        ③ 它必须自行向整个系统提供这个实例；
##4.单例模式的优缺点
        优点：
        ① 实例控制：单例模式会阻止其他对象实例化其自己的单例对象的
    副本，从而确保所有对象都访问唯一实例；
        ② 灵活性：因为类控制了实例化过程，所有类可以灵活更改实例化
    过程；
        缺点：
        ① 开销：虽然数量很少，但是如果每次请求对象引用时都要检查是
    否存在类的实例，将仍然有一些开销；
        ② 可能的开发混淆：使用单例对象，不能使用alloc直接实例化对
    象；
        ③ 对象生存期：不能解决删除单个对象的问题；在内存释放时，只有
    单例类才能释放该单例对象的内存。
##5.单例模式的创建：
        ① GCD：
        ② synchronize：
##6.例子：
        在本节中，我给出了两个例子，
        ① StrictSingleton：简单的实现了单例模式；
        ② SingletonStore：使用单例来管理数据的持久化；
