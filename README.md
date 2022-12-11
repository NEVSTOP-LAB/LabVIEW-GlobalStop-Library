# LabVIEW GlobalStop Library

[![Check_Broken_VIs](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Check_Broken_VIs.yml/badge.svg)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Check_Broken_VIs.yml)
[![Build_VIPM_Library](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Build_VIPM_Library.yml/badge.svg)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/actions/workflows/Build_VIPM_Library.yml)
[![GitHub all releases](https://img.shields.io/github/downloads/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/total)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/releases)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/NEVSTOP-LAB/LabVIEW-GlobalStop-Library)](https://github.com/NEVSTOP-LAB/LabVIEW-GlobalStop-Library/releases)

Simple stop mechanism for parallel loops in LabVIEW. 

## 功能

![Library Pallette](https://cloud.githubusercontent.com/assets/8196752/10752145/8288f624-7cc1-11e5-9700-e3740e08f571.png)

- `Init.vi` : Initialzie Globalstop, if error occurs, GlobalStop will be set to TRUE
- `Reset.vi` : Reset GlobalStop to FALSE. Index=-1 stands for reset all.
- `Set.vi` : Set GlobalStop to TRUE. Index=-1 stands for set all to TRUE.
- `Get.vi` : Get GlobalStop value of index. Set Index=-1 to get the global value of GlobalStop.
- `CheckSet.vi` : Check the boolean input(usually a stop button).

# Example 

![image](https://user-images.githubusercontent.com/8196752/200517986-eb2f3ed4-0931-443e-9bb2-d45b227550c0.png)

## Development Environment

- LabVEW 2014
- VIPM 2020.3
