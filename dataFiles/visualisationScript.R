lineCounts <- read.csv("lineCounts.csv")
vocabCounts <- read.csv("vocabCounts.csv")
commentCounts <- read.csv("commentCounts.csv")
library(ggplot2)
ggplot(counts,aes(x=Lines,y=Comments)) + 
  geom_point(aes(color=Vocabulary))  + 
  geom_text(data=counts[counts$Comments>100,],aes(label=File))