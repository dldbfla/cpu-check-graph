
library(ggplot2)
library(gridExtra)
library(grid)

# CPU 사용량 데이터를 저장할 벡터를 초기화합니다.
cpu_usage_data <- c()
time_data <- c()

# 실시간 CPU 사용량을 모니터링하고 그래프를 업데이트하는 함수
monitor_cpu <- function() {
  max_time <- 60  # 60초 동안 모니터링
  
  # 무한 루프를 시작합니다.
  for (time_counter in 1:max_time) {
    # 시스템 명령어를 사용하여 CPU 사용량을 가져옵니다.
    cpu_usage <- as.numeric(system("wmic cpu get loadpercentage", intern = TRUE)[2])
    
    # CPU 사용량과 시간을 데이터에 추가합니다.
    cpu_usage_data <<- c(cpu_usage_data, cpu_usage)
    time_data <<- c(time_data, time_counter)

    # 데이터 프레임 생성
    df <- data.frame(Time = time_data, CPU = cpu_usage_data)

    # 그래프 그리기
    plot <- ggplot(df, aes(x = Time, y = CPU)) +
      geom_line(color = "blue", size = 1.2) +  
      geom_point(color = "blue", size = 3) + 
      geom_smooth(se = FALSE, color = "red", span = 0.2) +  # 매끄러운 선 추가
      labs(title = "실시간 CPU 사용량", x = "시간(초)", y = "CPU 사용량 (%)") +
      ylim(0, 100) +
      theme_minimal() +
      theme(
        plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
        axis.title.x = element_text(size = 14),
        axis.title.y = element_text(size = 14),
        axis.text = element_text(size = 12),
        panel.grid.major = element_line(color = "lightgrey"),  # 주요 그리드 선 색상 조정
        panel.grid.minor = element_line(color = "lightgrey", linetype = "dotted")  # 보조 그리드 선 색상 조정
      ) +
      geom_text(aes(label = round(CPU, 1)), vjust = -1, color = "blue", size = 3)  # 데이터 포인트에 라벨 추가

    # 그래프 출력
    print(plot)  
    
    # 1초 대기합니다.
    Sys.sleep(1)
  }
}

# 함수 실행
monitor_cpu()
