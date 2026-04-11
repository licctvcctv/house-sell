# 基于SSM的房屋租售管理系统

## 项目简介

基于 Spring + SpringMVC + MyBatis（SpringBoot 集成）和 Vue 的房屋租售管理系统，包含房屋租赁、房屋出售、房屋交易三条业务线，支持管理员、买家、卖家三种角色。

## 技术栈

| 层面 | 技术 | 版本 |
|------|------|------|
| 前端 | Vue + View UI | 2.6.14 / 4.7.0 |
| 后端 | SpringBoot + MyBatis Plus | 2.7.4 / 3.5.2 |
| 数据库 | MySQL | 8.x |
| 缓存 | Redis | 7.x |
| 构建 | Maven / Node.js | 3.6+ / 16.x |
| JDK | Amazon Corretto | 17 |

## 快速启动

### 1. 环境准备

- JDK 17
- MySQL 8.x（端口 3306）
- Redis（端口 6379）
- Node.js 16.x
- Maven 3.6+

### 2. 数据库初始化

```bash
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS housesell DEFAULT CHARACTER SET utf8;"
mysql -u root -p housesell < housesell.sql
```

> 默认数据库配置：root / 123456，如需修改请编辑 `back/src/main/resources/application.yml`

### 3. 启动后端

```bash
cd back
export JAVA_HOME=/path/to/jdk17
mvn spring-boot:run
```

后端运行在 http://localhost:8081

### 4. 启动前端

```bash
cd front
npm install
npm run dev
```

前端运行在 http://localhost:8080

## 测试账号

| 账号 | 密码 | 角色 |
|------|------|------|
| admin | 123456 | 管理员 |
| 17859654125 | 123456 | 测试买家 |
| 17859654121 | 123456 | 测试卖家 |

## 功能模块

- 用户和房东管理（注册/登录/信息管理，RBAC 权限控制）
- 房屋出租管理（发布、审核、浏览）
- 房屋出售管理（发布、审核、浏览）
- 出租订单管理（申请、确认、交易记录）
- 出售订单管理（申请、确认、交易记录）
- 文件管理（图片上传/预览）
- 系统管理（用户、角色、菜单、日志）

## 项目结构

```
house-sell/
├── back/                # 后端 SpringBoot 项目
│   └── src/main/java/cn/zwz/
│       ├── basics/      # 基础框架（安全、Redis、工具类）
│       ├── data/         # 用户、角色、权限等核心数据
│       └── house/        # 房屋业务模块
├── front/               # 前端 Vue 项目
│   └── src/views/house/ # 房屋业务页面
└── housesell.sql        # 数据库初始化脚本
```
