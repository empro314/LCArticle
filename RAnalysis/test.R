library(Hmisc)

fullResults <- read.csv("fullResults.csv")

#View(fullResults)

#for(i in (2:9 11 14))
#{
#  for(j in i:9)
#  {
#    temp <- fullResults[c(i, j)]
#  }
#}
#print( c(2:9, 11, 14) )
#print(combn(c(2:9, 11, 14), 2))

indexes <- combn(c(2:9, 11, 14), 2)

print(indexes)
print(indexes[2,11])

#print(as.matrix(fullResults[indexes[2,2]]))

for(ind in 1:45)
{
  print(indexes[1, ind])
  print(indexes[2, ind])
  
  plot(indexes[1, ind], indexes[2, ind])
}
plot(as.matrix(indexes[1]), as.matrix(indexes[2]))
#print(rcorr(as.matrix(fullResults[2]), as.matrix(fullResults[3]), type="spearman") )

#for(ind in indexes)
#{
 # cor(ind, use=pairwise.complete.obs)
#}