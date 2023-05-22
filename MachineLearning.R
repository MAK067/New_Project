
xon<- c(2,4,6,8,10,12)
xon2<-summary(xon)
glimpse(xon)
View(xon)
t(xon)
table(xon)
tbl_df(xon)
str(xon)

installed.packages("skimr")
skimr(xon)



boxplot(xon2)
abline(h=6.5)
table(xon2)


library(stringr)
string <- "There are 100 phone over there"

str_extract(string, "\\d+")
...............................................................
x<- y <- 1:10
x+y
rm(x)
remove(y)
#remove(list = ls()) for all list remove

browseURL("www.facebook.com")
x1<- 1:10
x2<- c(2,4,5,7)
x3<- seq(5,50, by = 5)
x4<- scan()

#read.table("mango.txt",header = TRUE, sep = "\t")

y<-table(iris$Species)
barplot(y)
barplot(y[order(-y)],horiz = TRUE)
barplot(y[order(-y)],horiz = TRUE, col = c("red","yellow","green"),border = NA,main = "My \n Bar_Plot",
        ylab= "# {passengers}")
colors()

hist(mtcars$hp)
hist(mtcars$hp, breaks = 4)
hist(mtcars$hp, breaks = c(50,100,150,200,250,300,350),xlab = "MT-Cars ~ HP",
     col = c("red","yellow","green","blue","grey","lightblue"),border = "black",freq = TRUE)
abline(h= 6)

hist(mtcars$hp, breaks = seq(50,350, by = 50),xlab = "MT-Cars ~ HP",
     col = c("red","yellow","green","blue","grey","lightblue"),border = "black",freq = TRUE)

colors()
min(mtcars$hp)
max(mtcars$hp)

table(mtcars$hp)

hist(mtcars$hp)
pairs(~cyl+hp+gear,data = mtcars)


barplot(starwars$sex)
barplot(table(starwars$sex))
p<- table(starwars$sex)
barplot(p[order(p)])
order(p)

barplot(table(starwars$sex)[order(-table(starwars$sex))])

quantile(mtcars$hp,0.99)
summary(mtcars$hp)
0.3*quantile(mtcars$hp)
0.3*quantile(mtcars$hp, 0.01)

ddf<-c(10,20,30,40,50,60)
0.3*quantile(ddf)
0.3*quantile(ddf,0.2)
summary(ddf)

m<- c(6,6,6,4,4,5,5,5,5,7,7)
mean(m)
m2<-c(6,6,6,4,4,5,5,5,5,7,7,300)
mean(m2)

Qu.:30  
area<- c(1,2,3,4,5)
rent<- c(2,4,6,5,8)

pd<-data.frame(area,rent)
View(pd)

mean(pd$area)
mean(pd$rent)

summary(pd)
lm(area ~ rent, data = pd)->sample_model
summary(sample_model)

plot(pd)
abline(sample_model)




summary(pd)

plot(pd$age,pd$pre)
abline(sample_model)
View(plot2)

...............................................................................
set.seed(0)
View(diamonds)
spilt = sample.split(diamonds$price,SplitRatio = 0.75)
spilt

subset(diamonds,spilt == T) -> train
subset(diamonds,spilt == F) -> test

train
nrow(train)
test
nrow(test)
lm(price ~ carat, data = train) -> linear_model1
linear_model1

View(linear_model1)
summary(linear_model1)

predict(linear_model1, newdata = test) -> result
cbind(Actual = test$price, Predicted = result) -> final_result

View(final_result)
final_result%>%
head()
test

plot(linear_model1)
plot(result)
plot(final_result)

class(final_result)
as.data.frame(final_result) -> final_result

(final_result$Actual - final_result$Predicted) -> Error

cbind(final_result,Error) -> final_data
head(final_data)

sqrt(mean(final_data$Error)^2)
sqrt(mean(final_data$Error)^2) -> rmse
.............................................................................

Age1 = c(1,2,3,4,5)
Pre2 = c(10,20,30,40,50)

DP2 <- data.frame(Age1,Pre2)
(DP2)View

lm(Pre ~ Age, data = DP)-> linerM
predict(linerM, newdata = DP)-> pdv
cbind(old = DP$pre,prd = pdv)-> fr
View(fr)
as.data.frame(fr)->fr2
(fr2$old - fr2$prd)-> error
cbind(fr2,error)-> fr3
View(fr3)
plot(linerM)
summary(linerM)
..........................................................................
Age1 = c(1,2,3,4,5)
Pre2 = c(10,20,30,40,50)

plot(DP$Age,DP$pre)
cor(DP$Age,DP$pre)
lm(Pre2 ~., data = DP2)-> r

plot(DP$Age,DP$pre)
abline(r, col="red")

summary(r)
names(r)
fitted(r)
plot(DP$Age,r$fitted)

1780*34-23900 
coef(r)
coef(r)[1]

r$coefficients[1]+r$coefficients[2]*6.001

predict(r,list(Age))
predict(r,data.frame(Age = c(34,40,42)))
predict(r,data.frame(Age = c(34,40,42)), interval = "confidence", level = 0.9)
predict(r,data.frame(Age = c(34,40,42)), interval = "prediction", level = 0.9)
class(r)

residuals(r)
effects(r)
rank(r)
qr(r)
df.residual(r)
xlevels(r)
call(r)
terms(r)
model(r)

View(mtcars)


colors([[1]])


barplot(tN, col = heat.colors(12), log = "y")


ad<-table(newdata <- starwars$sex)
require(grDevices) # for colours
tN <- table(Ni <- stats::rpois(100, lambda = 5))
r <- barplot(tN, col = rainbow(20))
#- type = "h" plotting *is* 'bar'plot
lines(r, tN, type = "h", col = "red", lwd = 2)


colMeans(mtcars$hp)

view(VADeaths)
mean(mtcars$hp)
colMeans(mat)
mat<-as.matrix(newmt)
newmt<-mtcars


mp <- barplot(VADeaths) # default
tot <- colMeans(VADeaths)
text(mp, tot + 3, format(tot),xpd = TRUE,  col = "blue")

barplot(mat)
colMeans(mat)

meann<- c(0,0,30,40)
mean(meann)
[1] 25
summary(meann)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
10.0    17.5    25.0    25.0    32.5    40.0 
median(meann)
[1] 25
print(meann<25)
[1]  TRUE  TRUE FALSE FALSE
quantile(meann)
0%  25%  50%  75% 100% 
10.0 17.5 25.0 32.5 40.0 
quantile(meann,0.90)
90% 
37 
0.3*quantile(meann)
0%   25%   50%   75%  100% 
3.00  5.25  7.50  9.75 12.00 

quantile(meann) - 0.3*quantile(meann)
0%   25%   50%   75%  100% 
7.00 12.25 17.50 22.75 28.00 
quantile(meann) - 0.7*quantile(meann)
0%   25%   50%   75%  100% 
3.00  5.25  7.50  9.75 12.00 



