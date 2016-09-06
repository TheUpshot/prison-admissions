library(mapproj)
library(choroplethrMaps)
library(ggplot2)
library(dplyr)
library(choroplethr)



memory.limit(size = 4000000000000)

load("H:/2014-working-files/da36373-0001_REST.rda")
data <- da36373.0001
rm("da36373.0001")

load("H:/2014-working-files/da36373-0002_REST.rda")
widows <- da36373.0002
rm("da36373.0002")


# remove extra columns, select only admissions
widowAdmits <- rename(widows, PRISON_COUNTY = COUNTY, OFFENSE_1_COUNT = OFFENSE_COUNT_1, OFFENSE_2_COUNT = OFFENSE_COUNT_2, OFFENSE_3_COUNT = OFFENSE_COUNT_3) %>%
  select(-RPTYEAR) %>% 
  filter(RECORD_TYPE == '(1) 1. Prison Admissions (A)') %>% 
  select(-RECORD_TYPE) #%>% 
  #mutate(ABT_INMATE_ID = -1, TERM_TYPE = -1, PRISON_TERM_ADJUSTMENT_FLAG = -1, PRISON_TERM_ADJUSTMENT_RULE = -1, PRISON_TERM_ADJUSTMENT_TYPE = -1)
  
# remove extra columns
dataTrimmed <- data %>%
  select(-ABT_INMATE_ID) %>% 
  select(-TERM_TYPE) %>% 
  select(-PRISON_TERM_ADJUSTMENT_FLAG) %>% 
  select(-PRISON_TERM_ADJUSTMENT_RULE) %>% 
  select(-PRISON_TERM_ADJUSTMENT_TYPE)

##merge files
allData <- bind_rows(dataTrimmed, widowAdmits)

##only keep a few columns
keep <- c("STATE_CODE", "PRISON_COUNTY", "PRISON_ADMISSION_DATE", "PRISON_ADMISSION_TYPE", "PRISON_RELEASE_DATE", "BJS_OFFENSE_1", "BJS_OFFENSE_2", "BJS_OFFENSE_3", "PROJ_PRISON_RELEASE_DATE", "DATE_OF_BIRTH", "HISPANIC", "RACE", "SEX", "HIGHEST_GRADE", "OFFENSE_1_SENTENCE")
admits <- allData[ , keep]


#clean up
rm('allData')
rm('data')
rm('dataTrimmed')
rm('widowAdmits')
rm('widows')
