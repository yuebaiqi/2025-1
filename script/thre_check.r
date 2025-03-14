##################################################
## Project: homework2
## Script purpose:thre_check
## Date: 2025.3.14
## Author: Mo Qiuyue
## Version: 1
##################################################

###define function
#随机向量
set.seed(123)
all_num <- matrix(rnorm(n=10,mean=35,sd=10),nrow = 10,ncol = 1)
num_35 <- apply(all_num, 1, function(x) any(x > 35))

# 输出结果
results <- as.data.frame(cbind(all_num,num_35))
colnames(results) <- c("numbers","over_35")
results$over_35 <- ifelse(results$over_35 == 0, "under 35", "over 35")
