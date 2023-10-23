library(tidyr)

setwd("/stornext/Bioinf/data/lab_brain_cancer/manuscripts/2023_metabolomics/plots/human/Kegg_pathway_identifier")

raw = read.delim("identifier_raw.txt",
                 header = F)
#
identifier = list()
save_identifier = data.frame()
for(i in 1:(nrow(raw)/2)){
  # storage of identifier contents
  temp_vector = data.frame(id = raw[2*i,]) %>% 
    separate_rows(id,
             sep = "(?<=[A-Za-z])(?=0)") 
  identifier[[paste0(raw[2*i-1,])]] = temp_vector
  # Save dataframe
  temp_df = cbind(id = temp_vector, group = rep(raw[2*i-1,], times = length(temp_vector)))
  save_identifier = rbind(save_identifier,temp_df)
}
#save
write.csv(save_identifier, "kegg_classifier.csv")