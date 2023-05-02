require(ggplot2)

dados = read.csv('dados_iracambi.csv')

# Create a plot
ggplot(dados, aes(x = Idade, y = Elev.minimum)) +
  geom_point() + xlab("Idade da floresta (anos)") + ylab("Altura mínima") +
  theme_minimal() +
  geom_smooth(method = lm, formula = y ~ log(x), se = FALSE)

# Create a plot
ggplot(dados, aes(x = Idade, y = Elev.maximum)) +
  geom_point() + xlab("Idade da floresta (anos)") + ylab("Altura máxima") +
  theme_minimal() +
  geom_smooth(method = lm, formula = y ~ log(x), se = FALSE)
