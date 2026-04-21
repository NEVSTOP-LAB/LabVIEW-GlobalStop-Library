# LabVIEW GlobalStop Library

[中文](./README.md) | [English](./README.en.md)

[![Check_Broken_VIs](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Check_Broken_VIs.yml/badge.svg)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Check_Broken_VIs.yml)
[![Build_VIPM_Library](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Build_VIPM_Library.yml/badge.svg)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Build_VIPM_Library.yml)
[![GitHub all releases](https://img.shields.io/github/downloads/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/total)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/releases)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/NEVSTOP-LAB/LabVIEW-GlobalStop-Library)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/releases)

用于 LabVIEW 并行循环/多模块场景的全局停止（Global Stop）库。

**特点：简单、高效、线程安全。**

## 功能

![Library Palette](https://cloud.githubusercontent.com/assets/8196752/10752145/8288f624-7cc1-11e5-9700-e3740e08f571.png)

- `GSTOP INIT.vi`：初始化 STOP FGV；若输入错误簇为错误状态，会将全局停止位置为 `TRUE`。
- `GSTOP RESET.vi`：将停止位复位为 `FALSE`。`Index=-1` 表示复位全局停止位。
- `GSTOP SET.vi`：将停止位置为 `TRUE`。`Index=-1` 表示设置全局停止位。
- `GSTOP GET.vi`：读取指定索引的停止位。`Index=-1` 表示读取全局停止位。
- `GSTOP CheckSet.vi`：检查布尔输入（通常连接 Stop 按钮），并在需要时触发停止。

## 实现说明

- 通过 Functional Global Variable (FGV) 保存一组停止标志位（默认 32 个布尔值）。
- `Index` 用于区分模块停止位，`-1` 表示全局停止位。
- 当索引超出当前长度时，内部数组会自动扩展。

## 使用建议

- 在程序启动阶段调用一次 `GSTOP INIT.vi`。
- 各并行循环周期性调用 `GSTOP GET.vi` 或 `GSTOP CheckSet.vi` 判断是否退出。
- 任意模块出现致命错误时调用 `GSTOP SET.vi`，实现全局联动停止。
- 使用 Typedef Enum/Combo 管理模块索引，避免硬编码。

## 示例

仓库提供以下示例：

- `src/examples/NEVSTOP/GlobalStop/globalstop-example1.vi`
- `src/examples/NEVSTOP/GlobalStop/globalstop-example2.vi`
- `src/examples/NEVSTOP/GlobalStop/globalstop-example3.vi`

![Example](https://user-images.githubusercontent.com/8196752/200517986-eb2f3ed4-0931-443e-9bb2-d45b227550c0.png)

## 开发环境

- LabVIEW 2014
- VIPM 2020.3
