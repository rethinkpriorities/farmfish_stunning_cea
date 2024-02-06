<p>library(rmarkdown) library(here) library(quarto)</p>
<h1 id="set-up-for-creation-of-html-and-pdf-files">SET UP FOR CREATION
OF HTML AND PDF FILES</h1>
<p>setwd(paste0(here(),“/2_code”)) files &lt;- list.files(pattern =
“qmd”, full.names = FALSE)</p>
<p>walk(files,quarto_render)
walk(files,quarto_render,output_format=“pdf”)</p>
<p>#CONVERT FILES TO MARKDOWN setwd(paste0(here(),“/5_rendered_output”))
tibble( input=list.files(pattern = “html”, full.names = FALSE)) %&gt;%
mutate(output=str_replace(input,“.html”,“.md”)) %&gt;%
pmap(pandoc_convert) %&gt;% walk()</p>
