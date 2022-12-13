

df <- read.table('international_comparison.txt',header = TRUE)

x <- df$diabetes
y <- df$rate


# pdf(file="international_comparison.pdf",width=4,height=4)
png(file="international_comparison.png",width=400,height=400)


plot(x,y,xlab="prevalence of diabetes (%)",ylab="COVID deaths per thousand vulnerable people", 
       xlim = c(0, 10), ylim=c(0,350),xaxs = "i", yaxs = "i")
text(x-0.7, y-5, labels=df$country) # units for x and y offsets are the units of that axis

dev.off()

