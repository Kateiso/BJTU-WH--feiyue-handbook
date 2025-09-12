#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
依赖安装脚本
"""

import subprocess
import sys
import os

def install_package(package):
    """安装 Python 包"""
    try:
        subprocess.check_call([sys.executable, "-m", "pip", "install", package])
        print(f"✅ {package} 安装成功")
        return True
    except subprocess.CalledProcessError as e:
        print(f"❌ {package} 安装失败: {e}")
        return False

def main():
    """主安装函数"""
    packages = [
        "python-docx==1.1.0",
        "PyPDF2==3.0.1", 
        "pdfplumber==0.10.3",
        "python-frontmatter==1.0.0",
        "PyYAML==6.0.1",
        "markdownify==0.11.6"
    ]
    
    print("🚀 开始安装依赖包...")
    
    success_count = 0
    for package in packages:
        if install_package(package):
            success_count += 1
    
    print(f"\n📊 安装完成: {success_count}/{len(packages)} 个包安装成功")
    
    if success_count == len(packages):
        print("🎉 所有依赖安装完成！可以开始使用转换工具了。")
    else:
        print("⚠️  部分依赖安装失败，请检查网络连接或手动安装。")

if __name__ == "__main__":
    main()