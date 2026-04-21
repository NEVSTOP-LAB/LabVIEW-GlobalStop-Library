# LabVIEW GlobalStop Library

[中文](./README.md) | [English](./README.en.md)

[![Check_Broken_VIs](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Check_Broken_VIs.yml/badge.svg)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Check_Broken_VIs.yml)
[![Build_VIPM_Library](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Build_VIPM_Library.yml/badge.svg)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Build_VIPM_Library.yml)
[![GitHub all releases](https://img.shields.io/github/downloads/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/total)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/releases)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/NEVSTOP-LAB/LabVIEW-GlobalStop-Library)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/releases)

面向 LabVIEW 并行循环与多模块程序的全局停止（Global Stop）库，提供统一、轻量且线程安全的停止机制。

## 主要特性

![Library Palette](https://cloud.githubusercontent.com/assets/8196752/10752145/8288f624-7cc1-11e5-9700-e3740e08f571.png)

- `GSTOP INIT.vi`：初始化 STOP FGV；若输入错误簇为错误状态，则立即将全局停止位置为 `TRUE`。
- `GSTOP RESET.vi`：将停止位复位为 `FALSE`；`Index=-1` 表示复位全局停止位。
- `GSTOP SET.vi`：将停止位置为 `TRUE`；`Index=-1` 表示设置全局停止位。
- `GSTOP GET.vi`：读取指定索引的停止位；`Index=-1` 表示读取全局停止位。
- `GSTOP CheckSet.vi`：检查布尔输入（通常连接 Stop 按钮），并在满足条件时触发停止。

## 实现机制

- 使用 Functional Global Variable（FGV）保存停止标志数组（默认 32 个布尔位）。
- `Index` 用于区分模块停止位，`-1` 代表全局停止位。
- 当输入索引超出当前长度时，内部标志数组会自动扩展。

## 推荐使用流程

1. 程序启动时调用一次 `GSTOP INIT.vi` 完成初始化。
2. 各并行循环中周期性调用 `GSTOP GET.vi` 或 `GSTOP CheckSet.vi` 判断是否退出。
3. 任一模块发生致命错误时调用 `GSTOP SET.vi`，触发全局联动停止。
4. 建议使用 Typedef Enum/Combo 管理 `Index`，避免硬编码并提升可维护性。

## 示例

仓库包含以下示例：

- `src/examples/NEVSTOP/GlobalStop/globalstop-example1.vi`
- `src/examples/NEVSTOP/GlobalStop/globalstop-example2.vi`
- `src/examples/NEVSTOP/GlobalStop/globalstop-example3.vi`

![Example](https://user-images.githubusercontent.com/8196752/200517986-eb2f3ed4-0931-443e-9bb2-d45b227550c0.png)

## 开发环境

- LabVIEW 2014
- VIPM 2020.3
