# Задача 1. 

siz <- (c(round(rnorm(90, 50, 5), 0), round(rnorm(80, 90, 10), 0), round(rnorm(70, 140, 10), 0), round(rnorm(10, 200, 10), 0), round(rnorm(50, 250, 10), 0)))


write.table(sample(siz), "clipboard", row.names = F)


# Задача 2.

pop1 <- round(rnorm(30, 60, 5), 0)

pop2 <- round(rnorm(30, 63, 5), 0)

t.test(pop1, pop2)


pops <- data.frame(Pop1 = pop1, Pop2 = pop2)

write.table(pops, "clipboard", row.names = F, sep = "\t")


# Задача 3.

N <- function(t, N0 = 2, r = 0.25) N0 * exp(r*t)


for(i in 1:30){
  print(N(i) + rnorm(1, 10, 10))
}


Nd <- round(N(1:30))

Nd_r <- rnorm(30, Nd, Nd*0.5)


Nsum <- round(Nd + Nd_r)

plot(Nsum)

nsum <- data.frame(t = 1:30, N = Nsum)

nsum <- nsum[-c(1:4), ]

nsum$t2 <- 1:26

lm(log(N) ~ t2, data = nsum)

exp(2.4)




write.table(nsum, "clipboard", row.names = F, sep = "\t")


# Задача  1 а.


male <- c(round(rnorm(50, 2, 0.3), 0), round(rnorm(3, 3, 0.2), 0),round(rnorm(40, 4, 0.2), 0),  round(rnorm(20, 5, 0.2), 0), round(rnorm(15, 6, 0.2), 0), round(rnorm(10, 7, 0.2), 0), round(rnorm(5, 8, 0.2), 0)) 

hist(male)


female <- c(round(rnorm(50, 2, 0.3), 0), round(rnorm(3, 3, 0.2), 0),round(rnorm(40, 4, 0.2), 0),  round(rnorm(5, 5, 0.2), 0), round(rnorm(15, 6, 0.2), 0), round(rnorm(10, 7, 0.2), 0), round(rnorm(5, 8, 0.2), 0)) 

hist(female)



m <- data.frame(Gender = "Male", Age = sample(male))
f <- data.frame(Gender = "Female", Age = sample(female))

fm <- rbind(m, f)


write.table(fm, "clipboard", row.names = F, sep = "\t")


