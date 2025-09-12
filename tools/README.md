# 文档转换工具

将 DOC/PDF 文档转换为 Markdown 格式，支持层级结构识别和 YAML 前导信息生成。

## 功能特性

- ✅ 支持 DOCX/DOC 文件转换
- ✅ 支持 PDF 文件转换  
- ✅ 自动识别标题层级
- ✅ 智能提取元数据（专业、年份、学生姓名）
- ✅ 生成 YAML 前导信息
- ✅ 批量处理支持
- ✅ 递归目录扫描

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

## 输出格式

转换后的 Markdown 文件包含：

1. **YAML 前导信息**：包含文件元数据
2. **层级标题**：自动识别的标题结构
3. **表格支持**：DOC 表格转换为 Markdown 表格
4. **页面分隔**：PDF 多页文档添加分隔符

### YAML 前导信息示例

```yaml
---
title: 飞跃手册-杨柏翰
filename: 飞跃手册-杨柏翰.pdf
converted_at: '2024-01-15T10:30:00'
source_type: pdf
major: 计算机科学
year: '2025'
student_name: 杨柏翰
---
```

## 使用示例

### 转换所有 2025 年飞跃手册

```bash
python document_converter.py "2025毕业生导师飞跃手册/" -r -o "converted_2025"
```

### 转换特定专业

```bash
python document_converter.py "2025毕业生导师飞跃手册/计科/"
```

## 注意事项

- 确保有足够的磁盘空间存储转换后的文件
- PDF 转换依赖于文本提取，扫描版 PDF 效果可能不佳
- 复杂格式的文档可能需要手动调整
- 建议先小批量测试，确认效果后再批量处理

## 故障排除

### 常见问题

1. **依赖安装失败**
   ```bash
   pip install --upgrade pip
   python install_dependencies.py
   ```

2. **文件权限问题**
   ```bash
   chmod +x document_converter.py
   ```

3. **编码问题**
   - 确保文件路径不包含特殊字符
   - 使用 UTF-8 编码

### 支持的文件格式

- ✅ `.docx` - Microsoft Word 2007+
- ✅ `.doc` - Microsoft Word 97-2003  
- ✅ `.pdf` - PDF 文档

## 技术栈

- **python-docx**: DOCX 文件处理
- **pdfplumber**: PDF 文本提取
- **PyPDF2**: PDF 基础操作
- **PyYAML**: YAML 前导信息生成
- **python-frontmatter**: 前导信息处理