library(ggplot2)
library(tidyverse)

data = data.frame(
  'Skill' = factor(c('R', 'Python', 'Data Viz', 'Web\nScraping', 'SQL', 'Git', 'TeX', 'Bash'), 
                   levels=c("Bash", "TeX", "Git", "SQL", "Web\nScraping", "Data Viz", "Python", "R")),
  'Proficiency' = c(9,8,8,7,6,6,6,5),
  'bg' = c(rep(10, 8))
)


options(repr.plot.width = 2, repr.plot.height = 10)

plot = data %>% 
  ggplot(aes(y=Skill, x=Proficiency)) + 
  geom_col(aes(x=bg), fill="#fff3e0", width = 0.9) + #ffecb3
  geom_col(fill="#ffa000", width = 0.9) + 
  #ggthemes::theme_tufte() +
  theme_minimal() + 
  xlab('') + 
  ylab('') + 
  scale_x_continuous(limits = c(0,10), breaks=c()) +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.y = element_text(colour="white", size=20),
    panel.background = element_rect(fill = '#232b2b', color = '#232b2b')
  )

#plot

ggsave('skill_figure.png', width = 3, height=5, plot=plot, dpi=500)
