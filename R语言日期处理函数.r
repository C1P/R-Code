##-Date
mydates<-as.Date(c("2015-12-25","2016-01-12"))
strDates<-c("02/05/1998","05/21/1998")
dates<-as.Date(strDates, "%m/%d/%Y");dates

d<-c("02/05/14","01/24/98");mode(d)
myformate<-"%m/%d/%y"
dates2<-as.Date(d, myformate);dates2
mode(dates2)

Sys.Date()
date()

today<-Sys.Date()
format(today,format="%B %d %Y")
format(today,format="%A")

start<-as.Date("1994-06-19")
end<-as.Date("2016-01-13")
days<-end-start;days

today<-Sys.Date()
birth<-as.Date("1968-10-12")
difftime(today, birth, units="weeks")