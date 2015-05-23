Content-Type: text/x-zim-wiki
Wiki-Format: zim 0.4
Creation-Date: 2014-08-22T10:22:26+08:00

====== Design Pattern ======
Created Friday 22 August 2014

IoC =>  DI & service locator
Service Provider ^ Service User
Frame      ^   Plugin

1)constructor injection  2)setter injection 3) interface injection
DI
IOC
MVC，
MVP
POP，
PM，
面向对象编程 OOP
面向服务编程SOA，
面呈抽象编程
结构化编程（SP）
MVC idea: code reusability and separate of concern
aop：AOP的[[http://www.cnblogs.com/chio/archive/2007/07/21/827007.html|核心思想]]就是“将应用程序中的商业逻辑同对其提供支持的通用服务进行分离，比如权限认证、日志、事务处理
实现AOP的技术，主要分为两大类：一是采用动态代理技术，利用截取消息的方式，对该消息进行装饰，以取代原有对象行为的执行；二是采用静态织入的方式，引入特定的语法创建“方面”，从而使得编译器可以在编译期间织入有关“方面”的代码。然而殊途同归，实现AOP的技术特性却是相同的，分别为：
1、join point（接合点）：代码中定义明确的可识别点。
2、point cut（切点）：通过配置或编码指定接合点的一种方法。 
3、advice（通知）：表示需要执行交叉切割动作的一种方法。
4、mixin（混入）：通过将一个类的实例混入目标类的实例引入新行为。
