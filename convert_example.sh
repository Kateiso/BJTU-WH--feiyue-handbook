#!/bin/bash

# 飞跃手册转换示例脚本
# 使用MinerU将PDF/Word文档转换为Markdown

echo "🚀 飞跃手册转换工具"
echo "===================="

# 检查MinerU是否安装
if ! command -v mineru &> /dev/null; then
    echo "❌ MinerU未安装，请先安装："
    echo "   pip install mineru"
    exit 1
fi

echo "✅ MinerU已安装，版本：$(mineru --version 2>/dev/null | grep version)"

# 获取输入文件
if [ $# -eq 0 ]; then
    echo "📁 使用方法："
    echo "   ./convert_example.sh <文件路径>"
    echo ""
    echo "🔍 示例："
    echo "   ./convert_example.sh '飞跃手册-张三.pdf'"
    echo "   ./convert_example.sh '2025毕业生导师飞跃手册/计科/飞跃手册-李四.docx'"
    exit 1
fi

INPUT_FILE="$1"
OUTPUT_DIR="converted_output"

# 检查输入文件是否存在
if [ ! -f "$INPUT_FILE" ]; then
    echo "❌ 文件不存在: $INPUT_FILE"
    exit 1
fi

echo "📄 输入文件: $INPUT_FILE"
echo "📁 输出目录: $OUTPUT_DIR"
echo ""

# 创建输出目录
mkdir -p "$OUTPUT_DIR"

# 执行转换
echo "🔄 开始转换..."
mineru -p "$INPUT_FILE" -o "$OUTPUT_DIR"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 转换成功！"
    echo "📁 转换结果保存在: $OUTPUT_DIR/"
    echo ""
    echo "🔍 查看转换结果:"
    find "$OUTPUT_DIR" -name "*.md" -type f | head -3 | while read md_file; do
        echo "   📋 $md_file"
    done
else
    echo ""
    echo "❌ 转换失败，请检查文件格式和权限"
    exit 1
fi

echo ""
echo "💡 提示:"
echo "   - Markdown文件位于各子目录的auto/文件夹中"
echo "   - 图片文件自动保存到images/文件夹"
echo "   - 数学公式已转换为LaTeX格式"
echo ""
echo "🎉 转换完成！"
