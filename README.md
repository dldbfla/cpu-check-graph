# cpu-check-graph
cpu check graph

# 한국어[버전]

# 실시간 CPU 사용량 모니터링

이 프로젝트는 R을 사용하여 시스템의 CPU 사용량을 실시간으로 모니터링하고 시각화하는 기능을 제공합니다. `ggplot2` 패키지를 활용하여 사용량 변화를 그래프 형태로 표시합니다.

## 필요 패키지

이 코드를 실행하기 위해서는 다음의 R 패키지가 필요합니다:

- `ggplot2`
- `gridExtra`
- `grid`

이 패키지들은 데이터 시각화 및 그래픽 작업에 사용됩니다.

## 코드 설명

1. **패키지 로드**:
   필요한 패키지를 로드합니다.
   ```r
   library(ggplot2)
   library(gridExtra)
   library(grid)
   ```
2. **데이터 초기화**:

CPU 사용량과 시간을 저장할 빈 벡터를 초기화합니다.


cpu_usage_data <- c()
time_data <- c()

3. **CPU 모니터링 함수**:

   CPU 사용량을 모니터링하고 그래프를 업데이트하는 monitor_cpu 함수를 정의합니다.

max_time: 모니터링할 최대 시간(초).
시스템 명령어를 사용하여 CPU 사용량을 가져오고, 이를 데이터 프레임에 저장합니다.
ggplot2를 사용하여 CPU 사용량을 시각화합니다.

3. **그래프 그리기 및  실행**:

   
CPU 사용량에 대한 선 그래프를 그리고, 각 데이터 포인트에 라벨을 추가합니다.


함수를 호출하여 CPU 사용량 모니터링을 시작합니다.


monitor_cpu()
   
 # 패키지 설치
필요한 패키지를 설치합니다.
 ```r
install.packages("ggplot2")
install.packages("gridExtra")
 ```

# English [version]
# Monitor real-time CPU usage

The project uses R to monitor and visualize the system's CPU usage in real time, using the 'ggplot2' package to display usage changes in graphs.

## Required Package

The following R packages are required to execute this code:

- `ggplot2`
- `gridExtra`
- `grid`

These packages are used for data visualization and graphics operations.

## Code Description

1. **Load Package**:
   Load the required packages.
   ```r
   library(ggplot2)
   library(gridExtra)
   library(grid)
   ```
2. **Initialize data**:

Initializes the empty vector to store CPU usage and time.


cpu_usage_data <- c()
time_data <- c()

3. **CPU Monitoring Function**:

   Defines a monitor_cpu function that monitors CPU usage and updates graphs.

max_time—Maximum time in seconds to monitor.
Use system commands to get CPU usage and store it in a data frame.
Use ggplot2 to visualize CPU usage.

3. **Draw and run graphs**:

   
Draw a line graph for CPU usage, and add a label to each data point.


Initiate CPU usage monitoring by calling a function.


monitor_cpu()
   
 # Installing the package
Install the required package.
 ```r
install.packages("ggplot2")
install.packages("gridExtra")
 ```
