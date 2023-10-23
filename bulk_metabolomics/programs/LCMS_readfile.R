.libPaths("/stornext/Bioinf/data/lab_brain_cancer/users/t_lu/R/x86_64-pc-linux-gnu-library/4.2")
library(readxl)
library("MetaboAnalystR")

source_directory = "/stornext/Bioinf/data/lab_brain_cancer/projects/tme_spatial/metabolomics/230516_bulk_metabolomics"

lipid = "/Lipids_LCMS"
polar = "/Polar_LCMS"
# Set working directory
setwd(source_directory)
# Get file names
lipidomics = t(read_xlsx(path = paste0(source_directory,lipid,"/",
                                     list.files(paste0(source_directory,lipid),
                                                pattern = "xlsx"))))
polar_molecule = t(read.csv(file = paste0(source_directory,polar,"/",
                                   list.files(paste0(source_directory,polar),
                                              pattern = "csv"))))
#
polarity <- fille