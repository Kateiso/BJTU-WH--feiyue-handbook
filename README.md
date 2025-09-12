# 飞跃手册文档转换工具

智能文档转换工具，将 DOC/PDF 文档转换为结构化的 Markdown 格式。

## 功能特性

- ✅ 支持 DOCX/DOC 文件转换
- ✅ 支持 PDF 文件转换  
- ✅ 智能识别标题层级
- ✅ 自动提取元数据（专业、年份、学生姓名）
- ✅ 生成 YAML 前导信息
- ✅ 批量处理支持
- ✅ 基于视觉结构的智能解析

## 快速开始

### 1. 安装依赖

```bash
cd tools
python install_dependencies.py
```

### 2. 转换单个文件

```bash
python document_converter.py "2025毕业生导师飞跃手册/计科/飞跃手册-杨柏翰.pdf"
```

### 3. 批量转换目录

```bash
# 转换指定目录下的所有文件
python document_converter.py "2025毕业生导师飞跃手册/计科/"

# 递归转换所有子目录
python document_converter.py "2025毕业生导师飞跃手册/" -r
```

## 技术特色

- **智能结构识别**：基于飞跃手册内容特点设计的标题识别算法
- **视觉结构分析**：利用PDF字体大小和位置信息判断标题层级
- **段落合并优化**：自动识别和合并被错误分割的段落
- **元数据提取**：从文件名智能识别专业、年份、学生信息

## 输出示例

转换后的Markdown文件包含清晰的YAML前导信息和结构化内容：

```yaml
---
title: 飞跃手册-杨柏翰
major: 计算机科学
year: '2025'
student_name: 杨柏翰
converted_at: '2024-01-15T10:30:00'
source_type: pdf
---
```

## 许可证

MIT License
