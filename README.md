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
