#Slide 7
6 - (9 + 10) * pi^3
6 - 9 + 10 * pi^3
exp(log(5))
log(1000,10)


#Slide 10
setwd('C:/Work/Rcourse/Session1') #Set working directory
my.data=read.csv('PHACE_photosynthesis_data.csv',header=TRUE) #Import data
names(my.data)           #Column names
head(my.data)            #First few rows.


#Slide 12 (Importing / Exporting data - R data)
a = 1
b = 2
c = 3
setwd('C:/Work/Rcourse/Session1') #Set working directory
save(a, b, file = "stuff.RData")
load("stuff.RData")


#Slide 13 (Assigning values to variables)
a = 8; 
a
a <- 8; 
a
8 -> a; 
a
a -> 8


#Slide 14 (Data types)
x = 5; y = 3
x>y  
a=5; b=sqrt(2)
a; b
a="1"; b=1 
a; b
a = "hello"; a
a = "a" ; a
c = a; c


#Slide 16 (Matrices)
m = matrix(1:6,nrow=2, ncol=3, byrow=T); 
m
t(m)      #Transpose of matrix
dim(m)    #Dimension of matrix


#Slide 17 (Data frames)
L3 <- c("a","b","c")
L3rep <- rep(L3, 2)  #rep means repeat, so fac=c("a","b","c","a","b","c")
d <- data.frame(x = 1, y = 1:6, let = L3rep)


#Slide 18 (Vectors and lists)
x = c(3.1, 6.7, 7.5)
log(x)
a = 1:4
b = seq(1,1.75, by=0.25) #seq means ‘sequence’.
a + b
length(a)  #this gives the number of elements in a.


#Slide 20 (subsetting)
x = c("a","b","c","d","e","b")
x[2]
x[3:5]
y=c(2:7) #OR y=c(2,3,4,5,6,7)
y[x=="b"]


#Slide 21 (Missing values)
x = c(3, 7, NA)
x 
x+5
x[is.na(x)==FALSE]


#Slide 22 (Putting it altogether)
setwd('C:/Work/Rcourse/Session1') #Set working directory
my.data=read.csv('PHACE_photosynthesis_data.csv',header=TRUE) #Import data
names(my.data)           #Column names
head(my.data)            #First few rows.
N=dim(my.data)[1]        #Calculate the number of rows in my.data. 
index = c(1:N)             #Create a list of numbers


#Slide 23 (Putting it altogether - continued)
Control = my.data$Control
index.NA = index[is.na(Control)==TRUE]; index.NA
index.noNA = index[is.na(Control)==FALSE]
length(index); length(index.noNA)
my.data.noNA = my.data[index.noNA,1:3] #Just choosing the first three columns of my.data.
write.csv(my.data.noNA,"PHACE_photosynthesis_data_Control_noNA.csv",row.names = FALSE)
