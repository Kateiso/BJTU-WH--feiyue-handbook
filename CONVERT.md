# 北京交通大学威海飞跃手册 - 文档转换指南 🔄

> 使用MinerU将PDF/Word文档转换为Markdown格式

## 🛠️ 转换工具

### MinerU - 专业PDF转Markdown工具

**项目地址**: https://github.com/opendatalab/MinerU

**特色功能**:
- 🤖 AI驱动的文档布局分析
- 📊 智能表格结构识别
- 🧮 数学公式自动转换（LaTeX格式）
- 📝 文本结构精准提取
- 🖼️ 图片自动提取和引用

## 📦 安装方法

### 使用pip安装
```bash
pip install mineru
```

### 使用conda安装
```bash
conda install -c conda-forge mineru
```

## 🚀 使用方法

### 基本转换
```bash
# 转换单个PDF文件
mineru -p "飞跃手册-张三.pdf" -o "output"

# 转换Word文档
mineru -p "飞跃手册-李四.docx" -o "output"
```

### 批量转换
```bash
# 转换整个目录
for file in *.pdf; do
    mineru -p "$file" -o "converted"
done
```

### 高级选项
```bash
# 指定输出格式和质量
mineru -p "document.pdf" -o "output" --layout --formula --table
```

## 📁 输出结构

转换后的文件结构：
```
output/
├── 飞跃手册-张三/
│   ├── auto/
│   │   ├── 飞跃手册-张三.md      # 主要Markdown文件
│   │   ├── images/              # 提取的图片
│   │   ├── *_model.json         # 文档模型数据
│   │   └── *_content_list.json  # 内容列表
│   └── ...
```

## ✨ 转换质量对比

### MinerU转换效果
- ✅ **文档结构**: 智能识别标题层级
- ✅ **数学公式**: 完美转换为LaTeX格式
- ✅ **表格处理**: 保持原始表格结构
- ✅ **图片处理**: 自动提取并正确引用
- ✅ **文本排版**: 智能段落合并

### 示例对比

**原始PDF内容**:
```
申请时间线

2023年9月：开始准备材料
2023年10月：完成文书写作
```

**MinerU转换结果**:
```markdown
## 申请时间线

- **2023年9月**: 开始准备材料
- **2023年10月**: 完成文书写作
```

## 🔧 常见问题

### Q: 转换后的图片路径错误？
A: 确保输出目录有写入权限，图片会自动保存到`images/`文件夹

### Q: 数学公式显示异常？
A: MinerU会将公式转换为LaTeX格式，需要支持MathJax的Markdown阅读器

### Q: 表格格式不正确？
A: 复杂表格可能需要手动调整，建议对比原文档进行校对

### Q: 转换速度慢？
A: 首次使用需要下载AI模型，后续转换会更快

## 📊 性能参数

| 功能 | 支持程度 | 说明 |
|------|----------|------|
| PDF文档 | ⭐⭐⭐⭐⭐ | 完美支持 |
| Word文档 | ⭐⭐⭐⭐⭐ | 完美支持 |
| 数学公式 | ⭐⭐⭐⭐⭐ | LaTeX格式 |
| 表格转换 | ⭐⭐⭐⭐⭐ | Markdown表格 |
| 图片处理 | ⭐⭐⭐⭐⭐ | 自动提取 |
| 中文处理 | ⭐⭐⭐⭐⭐ | 原生支持 |

## 🎯 使用建议

### 最佳实践
1. **预处理**: 确保PDF文档清晰，避免扫描版
2. **后处理**: 转换后检查格式，必要时手动调整
3. **批量处理**: 使用脚本批量转换，提高效率
4. **版本控制**: 保留原始文档，便于对比校验

### 质量检查
- ✅ 检查标题层级是否正确
- ✅ 验证数学公式渲染效果
- ✅ 确认表格结构完整
- ✅ 检查图片引用路径
- ✅ 核对关键信息准确性

## 🚀 快速开始

```bash
# 1. 安装MinerU
pip install mineru

# 2. 转换飞跃手册
mineru -p "飞跃手册-你的名字.pdf" -o "converted"

# 3. 查看结果
cd converted/飞跃手册-你的名字/auto/
cat 飞跃手册-你的名字.md
```

## 🔗 相关链接

- [MinerU GitHub仓库](https://github.com/opendatalab/MinerU)
- [MinerU使用文档](https://github.com/opendatalab/MinerU/blob/main/README.md)
- [Markdown语法指南](https://www.markdownguide.org/)
- [LaTeX数学公式](https://www.overleaf.com/learn/latex/Mathematical_expressions)

---

*转换工具版本: MinerU v2.2.2*  
*文档更新时间: 2025年1月*  
*项目: 北京交通大学威海飞跃手册*
