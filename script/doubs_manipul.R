  ##################################################
  ## Project:  homework4
  ## Script purpose: use the data.frame function and plot the doubs data
  ## Date: 2025-3-31
  ## Author: Mo Qiuyue
  ## Version: 1
  ##################################################
  
  ###question 1
  #加载包
  library(ade4)
  data(package="ade4")
  #加载数据doubs
  data("doubs")
  doubs
  env <- doubs$env
  library(dplyr)
  sel_4 <- env |> 
    select(distance=dfs,alt,oxygen=oxy,pH) |>
    filter(alt > 200) |>
    arrange(alt) |>
    mutate("oxygen_category"=ifelse(oxygen > 90, "High", "Low"))
  #分组求均值
  cac_2 <- sel_4 |>          
   mean_alt <- aggregate(sel_4$alt, by = list(oxygen_category = sel_4$oxygen_category), mean)|> 
   mean_pH <- aggregate(pH, by = list(oxygen_category = oxygen_category), mean)
  cac_2 <- sel_4 |>
    group_by(oxygen_category) |>
    summarise(
      mean_alt = mean(alt, na.rm = TRUE),
      mean_pH = mean(pH, na.rm = TRUE)
    )
   
  
  ###question 2
  #绘制x=alt，y=oxy的散点图
  library(ggplot2)
  ggplot(data=env)+
    geom_point(mapping=aes(alt,oxy))
  
  #绘制x=alt，y=oxy的散点图并根据dfs调色
    library(ggplot2)
    ggplot(data=env)+
    geom_point(mapping = aes(alt,oxy,color=dfs))
  
  
  