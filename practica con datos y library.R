installed.packages("tidyverse")
library("ggplot2")
data("diamonds")
View(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)
mutate(diamonds, carat_2=carat*100)
mutate(diamonds, ejemplo=carat*1500)
glimpse(diamonds)
install.packages("here")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")
install.packages("palmaerpenguins")
library("palmerpenguins")
skim_without_charts("penguins")
glimpse(penguins)
penguins %>% 
  select(species)
penguins %>% 
  select(-species)
penguins %>% 
  rename(island_new=island)
penguins %>% 
  rename(La_isla=island)
rename_with(penguins,tolower)
clean_names(penguins)
library(tidyverse)
penguins %>% arrange(bill_length_mm)
penguins %>% arrange(-bill_length_mm)
penguins2 <- penguins %>% arrange(-bill_length_mm)
penguins %>% group_by(island) %>% drop_na()  %>% summarize(mean_bill_lenght_mm =
                                                            mean(bill_length_mm))
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm =
                                                            max(bill_length_mm))
penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = 
                                                                     max(bill_length_mm), mean_bl = 
                                                                     mean(bill_length_mm))
penguins %>% filter(species == "Adelie")

id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

separate(employee, name, into = c('first_name','last_name'),sep=' ')

#Con nombres separados usamos

unite(employee, 'name', first_name, last_name, sep=' ')

penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000)

penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000, flipper_length_m = flipper_length_mm /1000 )

install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)

prueba <- quartet %>%
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(-set)

install.packages('datasauRus')
library('datasauRus')

ggplot(datasaurus_dozen, aes(x=x, y=y, color=dataset )) + geom_point() + theme_void() + theme(legend.position = "none" ) + facet_wrap(-dataset=ncol=3)

install.packages('Sidesign')
library(Simdesign)

str(diamont)

library("ggplot2")
library("tidyverse")
library("palmerpenguins")
#Grafico de ejemplo
ggplot(data=penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm , y = body_mass_g))
#Grafico vacio

ggplot(data = penguins)

#Ejemplo

ggplot(data=penguins) + 
  geom_point(mapping = aes(x = bill_length_mm , y = bill_depth_mm))

ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#Añadiendole color
ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species))

#Añadiendole forma
ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=species))

#Añadiendole forma y color
ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=species, color=species))

#Añadiendole forma y color y mayor tamaño
ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape=species, color=species, size=species))

#Añadiendole transparencia con alfa
ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))

#Añadiendole un color ignorando el grafico
ggplot(data = penguins) +geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g,), color = "purple")

#Cambiando el grafico el diagrama de dispersion mas uno lineal 
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
                          geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#Añadiendole un color ignorando el grafico
ggplot(data = penguins) + geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype=species))

#Cambiando con geom_jitter
ggplot(data = penguins) + geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g,), color = "purple")

#Viendo con el marco de datos de diamonds los graficos en barras con cut
ggplot(data=diamonds) + geom_bar(mapping = aes(x = cut))

#Viendo con el marco de datos de diamonds los graficos en barras mas estableciendo los colores con cut
ggplot(data=diamonds) + geom_bar(mapping = aes(x = cut, color = cut))

#Viendo con el marco de datos de diamonds los graficos en barras mas estableciendo con fill en clarity es interesante
ggplot(data=diamonds) + geom_bar(mapping = aes(x = cut, fill = clarity))

#Probando las facetas con species
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) + facet_wrap(~species)

#Probando las facetas con aes fill = cut y wrap con cut en el marco de datos de diamonds
ggplot(data = diamonds) + geom_bar(mapping = aes(x = color, fill=cut)) + facet_wrap(~cut)

#Probando las facetas con species y las anotaciones
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) + labs(title = "Pinguinos: Masa corporal contra longitud de aletas")

#Probando las facetas con species y las anotaciones(subtitulos) mas leyenda y su edicion
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color=species)) + 
  labs(title = "Pinguinos: Masa corporal contra longitud de aletas", subtitle = "Muestra de animales", caption = "Datos trecolectados por la Dra. Kristen Gorman") +
  annotate("text", x=215, y=3750, label = "Los pingüinos Papúa son mas grandes", color = "purple", fontface="bold", size = 3.5, angle = 25)

ggsave("Tres especies de pinguinos.png")

#Practico
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  labs(title = "Penguins")

#Instalar paquete de R Markdown
installed.packages("rmarkdown")