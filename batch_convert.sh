#!/bin/bash

# 飞跃手册批量转换脚本
# 使用MinerU将所有PDF文件转换为Markdown格式

echo "🚀 开始批量转换飞跃手册..."

# 创建输出目录
OUTPUT_DIR="/Users/caoyibo/Desktop/飞跃手册/converted_markdown"
mkdir -p "$OUTPUT_DIR"

# 计数器
total_files=0
converted_files=0
failed_files=0

# 转换PDF文件
echo "📄 处理PDF文件..."
find . -name "*.pdf" -not -path "./MinerU-master/*" -not -path "./test_output/*" -not -path "./已转换文档归档/*" -not -path "./test_conversion/*" | while read -r file; do
    total_files=$((total_files + 1))
    echo "正在转换: $file"
    
    # 使用MinerU转换，忽略NumPy警告
    if mineru -p "$file" -o "$OUTPUT_DIR" -b pipeline -l ch 2>/dev/null; then
        echo "✅ 成功转换: $file"
        converted_files=$((converted_files + 1))
    else
        echo "❌ 转换失败: $file"
        failed_files=$((failed_files + 1))
    fi
done

# 显示统计信息
echo ""
echo "📊 转换完成统计:"
echo "总文件数: $total_files"
echo "成功转换: $converted_files"
echo "转换失败: $failed_files"
echo "输出目录: $OUTPUT_DIR"

echo ""
echo "🎉 批量转换完成！"
echo ""
echo "📝 注意: DOCX文件需要先转换为PDF格式才能使用MinerU处理"
echo "💡 建议: 可以使用在线工具或LibreOffice将DOCX转换为PDF后再处理"
