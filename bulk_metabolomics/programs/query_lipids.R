library(readxl)
library(cinf)
source_directory = "/stornext/Bioinf/data/lab_brain_cancer/projects/tme_spatial/metabolomics/230516_bulk_metabolomics"
lipid = "/Lipids_LCMS"
polar = "/Polar_LCMS"
# Set working directory
setwd(source_directory)
# Get file namesF
lipidomics = data.frame(t(readxl::read_xlsx(path = paste0(source_directory,lipid,"/",
                                                  list.files(paste0(source_directory,lipid),
                                                             pattern = "Lipidomics.xlsx"))))) 
lipidmap = readLines("/stornext/Bioinf/data/lab_brain_cancer/projects/tme_spatial/metabolomics/230516_bulk_metabolomics/programs/structures.sdf")

readlipidmap = function(sdf){
  
}