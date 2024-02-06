
library(rmarkdown)
library(here)
library(quarto)

# SET UP FOR CREATION OF HTML AND PDF FILES
setwd(paste0(here(),"/2_code"))
files <- list.files(pattern = "qmd", full.names = FALSE) 

walk(files,quarto_render)
walk(files,quarto_render,output_format="pdf")


#CONVERT FILES TO MARKDOWN
setwd(paste0(here(),"/5_rendered_output"))
tibble(
  input=list.files(pattern = "html", full.names = FALSE)) %>%
  mutate(output=str_replace(input,".html",".md"))     %>%
  pmap(pandoc_convert) %>%
  walk()



