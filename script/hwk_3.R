  ##################################################
  ## Project:  homework3
  ## Script purpose: hwk_3.R
  ## Date: 2025-3-21
  ## Author: Mo Qiuyue
  ## Version: 1
  ##################################################
#exercise01
#设置随机数
set.seed(123)
#生成随机整数
x <- floor(runif(3,min=4,max=100))
y <- floor(runif(3,min=4,max=100))
z <- floor(runif(3,min=4,max=100))
#合并向量为矩阵
matrix <- cbind(x,y,z)
class(matrix)
#重命名矩阵列名
colnames(matrix) <- c("a","b","c")

#exercise02
#安装包
install.packages("ade4")
#加载包
library(ade4)
#查看包的函数
help(package = "ade4")
#加载doubs数据集
data(doubs)
#查看doubs数据结构
class(doubs)
#查看doubs数据类型
str(doubs)
#保存doubs到本地
save(doubs, file = './doubs.RData')
