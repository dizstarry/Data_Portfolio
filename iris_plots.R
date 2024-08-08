data(iris)
head(iris)
str(iris)
install.packages("ggplot2")
library(ggplot2)

ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point() +
  xlab("Sepal Length") +
  ylab("Sepal Width") +
  ggtitle("Scatter Plot of Sepal Length vs. Sepal Width")

ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot() +
  xlab("Species") +
  ylab("Sepal Length") +
  ggtitle("Boxplot of Sepal Length by Species")

ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram(binwidth = 0.5, fill = "blue", color = "black") +
  xlab("Petal Length") +
  ylab("Count") +
  ggtitle("Histogram of Petal Length")

ggplot(iris, aes(x = Petal.Length, fill = Species)) +
  geom_density(alpha = 0.5) +
  xlab("Petal Length") +
  ylab("Density") +
  ggtitle("Density Plot of Petal Length by Species")
install.packages("GGally")
library(GGally)
ggpairs(iris, aes(color = Species))