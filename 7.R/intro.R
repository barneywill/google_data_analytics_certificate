
r = getOption("repos")
r["CRAN"] = "http://cran.us.r-project.org"
options(repos = r)

install.packages('palmerpenguins')
library('palmerpenguins')

install.packages('ggplot2')
library('ggplot2')

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point()

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(color="red")

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(color=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species, color=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species, color=species)) + facet_wrap(~species)

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species, color=species)) + facet_wrap(~species) + labs(title="Penguin Body Mass vs Flipper Length", x="Flipper Length (mm)", y="Body Mass (g)") 



