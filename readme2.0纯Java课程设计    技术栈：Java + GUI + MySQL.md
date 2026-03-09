纯Java课程设计    技术栈：Java + GUI + MySQL

------

主题是租借充电宝系统，包含用户端和管理端。
觉得有需要可以点点start，谢谢！！！

------

项目分析设计：

- 一.功能需求
  1.用户模块：注册、登录、个人信息管理、租用归还移动电源、查询历史订单查询，租赁计费
  2.管理员模块：移动电源的上下架、用户管理（增删改查）、订单管理。
  3.租赁模块：展示可用移动电源、租赁计费（每小时1.5元）、生成订单、更新电源状态。
  4.扩展功能：客服对话

- 二.系统架构设计
  技术栈：Java + GUI + MySQL
  设计模式：MVC模式：分离界面（View）、业务逻辑（Controller）、数据（Model）。

- 三.业务需求理解
  在开始设计之前，我首先研究了市场上主流的共享充电宝租赁流程，并总结出以下核心业务实现流程：
  用户侧：
  注册/登录 → 查看可用充电宝 → 租赁（支付押金）→ 使用 → 归还 → 结算费用。
  管理员侧：管理充电宝（增删改查）→ 管理用户 → 查看订单数据。

- 流程图：

  <img src="file:///C:\Users\14754\AppData\Local\Temp\ksohtml8556\wps1.jpg" alt="img" style="zoom:50%;" />

四.数据库设计
<img src="C:\Users\14754\AppData\Roaming\Typora\typora-user-images\image-20260309203103673.png" alt="image-20260309203103673" style="zoom:50%;" />

效果图：

<img src="C:\Users\14754\AppData\Roaming\Typora\typora-user-images\image-20260309202919221.png" alt="image-20260309202919221" style="zoom:50%;" />

<img src="C:\Users\14754\AppData\Roaming\Typora\typora-user-images\image-20260309202919221.png" alt="image-20260309202919221" style="zoom:50%;" /><img src="C:\Users\14754\AppData\Roaming\Typora\typora-user-images\image-20260309202933859.png" alt="image-20260309202933859" style="zoom:50%;" /><img src="C:\Users\14754\AppData\Roaming\Typora\typora-user-images\image-20260309202944224.png" alt="image-20260309202944224" style="zoom:50%;" /><img src="C:\Users\14754\AppData\Roaming\Typora\typora-user-images\image-20260309202944224.png" alt="image-20260309202944224" style="zoom:50%;" />