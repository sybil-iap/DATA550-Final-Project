here::i_am("codes/code2_explore.R")
abs_data_path <- here::here("data/derived_mri_long.csv")
mri_long <- read.csv(abs_data_path,header = TRUE)

var_label(mri_long) <- list(
  M.F  = "Gender",
  MMSE = "Mini–Mental State Examination",
  EDUC = "Education",
  eTIV = "Estimated total intracranial volume",
  nWBV = "Normalized whole-brain volume",
  ASF = " Atlas scaling factor"
)

mri_long$Dementia <- ifelse(mri_long$CDR > 0,"> 0", "= 0")

explore_table <- mri_long |> 
  select("Dementia","M.F","MMSE","Age","EDUC","eTIV","nWBV","ASF") |>
  tbl_summary(by = Dementia) |>
  modify_spanning_header(c("stat_1","stat_2") ~ "**Clinical Dementia Rating**") |>
  add_overall() |>
  add_p()

saveRDS(
  explore_table,
  file = here::here("output","explore_table.rds")
)

explore_plot <- mri_long %>%
  select(Subject.ID, Age, CDR, M.F) %>%
  group_by(Subject.ID, CDR, M.F) %>%
  summarise_all(funs(min)) %>%
  as.data.frame() %>%
  mutate(CDR = as.factor(CDR)) %>%
  ggplot(aes(x = CDR, y = Age, fill = M.F)) + 
  geom_violin() +
  labs(title = "1. Distribution of Age by CDR rate",
       fill = "Gender") +
  theme_light()

ggsave(filename = here::here("output","explore_plot.png"), plot = explore_plot, width = 8, height = 6, dpi = 300)