require(MASS)
attach(Boston)

?Boston

nrow(Boston)
ncol(Boston)

head(Boston)

# karsilastirma
pairs(Boston)
# butun sutunlarin biri birileriyle olan korelasyonu
index <- which(abs(cor(Boston)) > 0.75 & abs(cor(Boston)) < 1, arr.ind = TRUE)
index <- unique(Boston)
pairs(Boston[, index])

sort(abs(cor(Boston)[,1]), decreasing = TRUE)
pairs(Boston[, c('rad', 'tax', 'lstat', 'nox', 'indus')])

hist(Boston$crim, breaks = 20)
Boston[Boston$crim > 40,]

hist(Boston$tax, breaks = 20)
Boston[Boston$tax > 700,]

hist(Boston$ptratio, breaks = 20)
Boston[Boston$ptratio >= 22,]

nrow(Boston[Boston$chas == 1,])

median(Boston$ptratio)

Boston[min(Boston$medv),]
summary(Boston)

nrow(Boston[Boston$rm>7,])
nrow(Boston[Boston$rm>8,])

Boston[Boston$rm>8,]
summary(Boston)