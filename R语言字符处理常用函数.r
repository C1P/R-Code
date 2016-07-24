##R语言字符处理常用函数
##-Character
c(
    "You should use double quotes most of the time",
    'Single quotes are better for including " inside the string'
)
paste(c("red", "yellow"), "lorry")  ##[1] "red lorry"    "yellow lorry"
paste(c("red", "yellow"), "lorry", sep = "-") ##"red-lorry"    "yellow-lorry"
paste(c("red", "yellow"), "lorry", collapse = ", ")  ##"red lorry, yellow lorry"
paste0(c("red", "yellow"), "lorry") ##[1] "redlorry"    "yellowlorry"

x <- c("a", "b", "c","aaaaaaaaaaa")
toString(x)  ##改变一个内，字符之间的链接符号
toString(x, width = 8)

cat(c("red", "yellow"), "lorry") ##直接拼接成red yellow lorry

x <- c(
    "I", "saw", "a", "saw", "that", "could", "out",
    "saw", "any", "other", "saw", "I", "ever", "saw"
)
y <- noquote(x)
x
y


#special character
cat("foo\tbar", fill = TRUE) 
cat("foo\nbar", fill = TRUE)
cat("foo\0bar", fill = TRUE) # 这会抛出一个错误
cat("foo\\bar", fill = TRUE)
cat("foo\"bar", fill = TRUE)
cat('foo\'bar', fill = TRUE)
cat("foo'bar", fill = TRUE)
cat('foo"bar', fill = TRUE)
cat("\a")
alarm()##铃声 （我的不响）

#C&S
toupper("I'm Shouting") ##全部大写
tolower("I'm Whispering")  ##全部小写

#substing and substr
#1
substr("abcdef", 2, 4)  ##提取字符中2至4的
substr(rep("abcdef", 4), 1:4, 4:5)  ##[1] "abcd" "bcde" "cd"   "de"  
x <- c("asfef", "qwerty", "yuiop[", "b", "stuff.blah.yech")
substr(x, 2, 5)
substring(x, 2, 4:6)

#2
woodchuck <- c(
    "How much wood would a woodchuck chuck",
    "If a woodchuck could chuck wood?",
    "He would chuck, he would, as much as he could",
    "And chuck as much wood as a woodchuck would",
    "If a woodchuck could chuck wood."
)
substring(woodchuck, 1:6, 10)

substr(woodchuck, 1:6, 10)

#strsplit
strsplit(woodchuck, " ", fixed=T)   #注意空格
strsplit(woodchuck, ",? ")          #注意空格
