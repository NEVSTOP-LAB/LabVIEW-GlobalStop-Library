# LabVIEW GlobalStop Library

[中文](./README.md) | [English](./README(en).md)

[![Check_Broken_VIs](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Check_Broken_VIs.yml/badge.svg)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Check_Broken_VIs.yml)
[![Build_VIPM_Library](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Build_VIPM_Library.yml/badge.svg)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Build_VIPM_Library.yml)
[![GitHub all releases](https://img.shields.io/github/downloads/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/total)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/releases)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/NEVSTOP-LAB/LabVIEW-GlobalStop-Library)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/releases)

A global stop library for LabVIEW parallel loops and multi-module applications, providing a unified, lightweight, and thread-safe stop mechanism.

## Key Features

![Library Palette](https://cloud.githubusercontent.com/assets/8196752/10752145/8288f624-7cc1-11e5-9700-e3740e08f571.png)

- `GSTOP INIT.vi`: Initializes the STOP FGV. If an incoming error cluster is in error state, the global stop flag is immediately set to `TRUE`.
- `GSTOP RESET.vi`: Resets a stop flag to `FALSE`; `Index=-1` means reset the global stop flag.
- `GSTOP SET.vi`: Sets a stop flag to `TRUE`; `Index=-1` means set the global stop flag.
- `GSTOP GET.vi`: Reads a stop flag by index; `Index=-1` means read the global stop flag.
- `GSTOP CheckSet.vi`: Checks a Boolean input (typically wired to a Stop button) and triggers stop when the condition is met.

## Implementation

- Uses a Functional Global Variable (FGV) to store stop flags (32 Boolean flags by default).
- `Index` identifies module-level stop flags, while `-1` identifies the global stop flag.
- The internal flag array is automatically extended when the input index exceeds current size.

## Recommended Workflow

1. Call `GSTOP INIT.vi` once during startup.
2. In each parallel loop, periodically call `GSTOP GET.vi` or `GSTOP CheckSet.vi` to decide whether to exit.
3. Call `GSTOP SET.vi` when any module encounters a fatal error to trigger coordinated global stop.
4. Use a Typedef Enum/Combo to manage `Index` values for better maintainability and to avoid hard-coded numbers.

## Examples

The repository includes the following examples:

- `src/examples/NEVSTOP/GlobalStop/globalstop-example1.vi`
- `src/examples/NEVSTOP/GlobalStop/globalstop-example2.vi`
- `src/examples/NEVSTOP/GlobalStop/globalstop-example3.vi`

![Example](https://user-images.githubusercontent.com/8196752/200517986-eb2f3ed4-0931-443e-9bb2-d45b227550c0.png)

## Development Environment

- LabVIEW 2014
- VIPM 2020.3
