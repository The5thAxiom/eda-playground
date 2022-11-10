library(ggplot2)

contestants = read.csv("contestant.csv")
contestants
summary(contestants)

ggplot(
    contestants,
    aes(
        x=Contestant,
        y=Episode.1
    )
) + geom_col() + theme(
    axis.text.x.bottom = element_text(angle=90)
) + facet_grid(Series~.)
