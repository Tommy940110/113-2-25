# Set your email and name for Git
email <- "3a.7156@gmail.com"
name <- "Tommy940110"

# Run the git config commands
system2("git", args = c("config", "--global", "user.email", email))
system2("git", args = c("config", "--global", "user.name", name))

# load proper packages
library(tidyverse)
library(showtext)
library(sysfonts)

sysfonts::font_add_google('Noto Sans TC')
showtext_auto()

theme_set(
  theme(
    text = element_text(family = "Noto Sans TC")
  ) + 
    theme_classic()
)
