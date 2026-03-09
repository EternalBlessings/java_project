<img width="515" height="473" alt="image" src="https://github.com/user-attachments/assets/70b2d312-8099-4420-8c22-e3a79793933b" /><img width="519" height="716" alt="image" src="https://github.com/user-attachments/assets/4e32547c-f957-4650-8c65-626edafc44fc" /><img width="503" height="688" alt="image" src="https://github.com/user-attachments/assets/93ba1c2e-a6d5-498e-8dc4-cac2687471a8" /><img width="474" height="672" alt="image" src="https://github.com/user-attachments/assets/31392734-b70c-49e6-8ad7-50471e4b5e98" /><img width="689" height="645" alt="image" src=“https://github.com/user-attachments/assets/4cb10ac3-779d-40f7-a27b-d193f4a26441” /><img width="393" height="337" alt="image" src=“https://github.com/user-attachments/assets/463ef593-5487-43dc-9e33-2e9569602dd8” /><img width="437" height="380" alt="image" src="https://github.com/user-attachments/assets/adba1048-88c5-4f72-adff-d904125d34cc" /># java_project
纯Java课程设计，无框架。主题是租借充电宝系统，包含用户端和管理端。技术栈：Java+mysql
觉得有需要可以点点start，谢谢！！！
大一学Java的时候捣鼓的，技术不是很充足
----------------------------------------------------------------------------------------------------------------
项目分析设计：
一.功能需求
1.用户模块：注册、登录、个人信息管理、租用归还移动电源、查询历史订单查询，租赁计费
2.管理员模块：移动电源的上下架、用户管理（增删改查）、订单管理。
3.租赁模块：展示可用移动电源、租赁计费（每小时1.5元）、生成订单、更新电源状态。
4.扩展功能：客服对话
二.系统架构设计
技术栈：Java + GUI + MySQL
设计模式：MVC模式：分离界面（View）、业务逻辑（Controller）、数据（Model）。
![正在上传image.png…]()
![正在上传image.png…]()
三.业务需求理解
在开始设计之前，我首先研究了市场上主流的共享充电宝租赁流程，并总结出以下核心业务实现流程：
用户侧：
注册/登录 → 查看可用充电宝 → 租赁（支付押金）→ 使用 → 归还 → 结算费用。
管理员侧：管理充电宝（增删改查）→ 管理用户 → 查看订单数据。
![正在上传image.png…]()
![正在上传image.png…]()
![正在上传image.png…]()
![正在上传image.png…]()



