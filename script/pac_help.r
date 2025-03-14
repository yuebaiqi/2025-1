  ##################################################
  ## Project: homework2
  ## Script purpose:pac_help
  ## Date: 2025.3.14
  ## Author: Mo Qiuyue
  ## Version: 1
  ##################################################
 
  ##retified code
  install.packages("tidyverse")
  library(tidyverse)
  # 查看tidyverse元包的基础信息
  help(package = "tidyverse")
  
  # 查看子包dplyr的教程
  vignette("dplyr")
  
  # 在浏览器中打开所有dplyr的vignette
  browseVignettes(package = "dplyr")
  
  # 列出tidyverse包中的导出对象，前体是需要加载该包
  ls("package:tidyverse")
  
  # 搜索与tidyverse相关的帮助文档
  help.search("^tidyverse")
  
  