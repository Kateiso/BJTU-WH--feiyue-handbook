# Codex 运行指南

## 🎯 目标
使用MinerU工具将所有飞跃手册PDF文件批量转换为Markdown格式

## 📋 前置条件检查

### 1. 环境要求
- ✅ Python 3.10-3.13 (当前: Python 3.13.3)
- ✅ pip 已安装 (当前: pip 25.0.1)
- ✅ MinerU 已安装 (版本: 2.2.2)

### 2. 网络配置
由于之前遇到SSL证书问题，需要使用信任主机参数：
```bash
pip3 install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org [package]
```

## 🚀 运行步骤

### 方法1: 使用批量转换脚本 (推荐)
```bash
# 1. 进入项目目录
cd /Users/caoyibo/Desktop/飞跃手册

# 2. 运行批量转换脚本
./batch_convert.sh
```

### 方法2: 手动单个转换
```bash
# 转换单个PDF文件
mineru -p "文件路径.pdf" -o "输出目录" -b pipeline -l ch
```

## 📁 输出结构

转换完成后，文件将保存在：
```
/Users/caoyibo/Desktop/飞跃手册/converted_markdown/
├── 飞跃手册-姓名1/
│   └── auto/
│       ├── 飞跃手册-姓名1.md          # 主要Markdown文件
│       ├── 飞跃手册-姓名1_content_list.json
│       ├── 飞跃手册-姓名1_layout.pdf
│       ├── 飞跃手册-姓名1_middle.json
│       ├── 飞跃手册-姓名1_model.json
│       ├── 飞跃手册-姓名1_origin.pdf
│       ├── 飞跃手册-姓名1_span.pdf
│       └── images/                    # 提取的图片
└── ...
```

## ⚠️ 注意事项

### 1. NumPy版本警告
转换过程中会显示NumPy兼容性警告，这是正常的，不影响功能：
```
A module that was compiled using NumPy 1.x cannot be run in NumPy 2.3.3...
```
**解决方案**: 忽略此警告，转换会正常完成。

### 2. 处理时间
- 每个PDF文件大约需要1-3分钟
- 总处理时间取决于PDF文件数量和复杂度

### 3. 存储空间
确保有足够磁盘空间，每个PDF转换后大约占用原文件2-3倍空间。

## 🔧 故障排除

### 如果遇到SSL证书问题：
```bash
pip3 install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --upgrade setuptools wheel
```

### 如果MinerU命令未找到：
```bash
# 重新安装MinerU
cd MinerU-master
pip3 install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -e .
```

### 如果转换失败：
1. 检查PDF文件是否损坏
2. 尝试单个文件转换定位问题
3. 检查磁盘空间是否充足

## 📊 预期结果

转换完成后，您将获得：
- ✅ 所有PDF文件的Markdown版本
- ✅ 保持原始格式和结构
- ✅ 提取的图片文件
- ✅ 完整的转换日志

## 🎉 验证转换结果

转换完成后，检查：
1. `converted_markdown/` 目录是否存在
2. 每个PDF是否生成了对应的 `.md` 文件
3. Markdown文件内容是否完整
4. 图片是否正确提取

## 📞 支持

如果遇到问题，请检查：
- [ ] Python版本是否符合要求
- [ ] MinerU是否正确安装
- [ ] 网络连接是否正常
- [ ] 磁盘空间是否充足

---

**状态**: ✅ 准备就绪，可以开始批量转换
**最后更新**: 2025-09-13
**版本**: MinerU 2.2.2
