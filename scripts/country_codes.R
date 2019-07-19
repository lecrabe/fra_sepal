df  <- read.csv("/home/dannunzio/jupyter_test/world_fra_samples_2019_V5.csv")
cty <- read.csv("/home/dannunzio/jupyter_test/country_codes.csv")

df0 <- merge(df[,c("country","forestT10","gGEZS","global_id","meanChange","stratum","Vale_Regions")],cty,by.x="country",by.y="country_code",all.x=T)
unique(df0$country_name)
summary(df0)
unique(df0$stratum)
write.csv(df0,"/home/dannunzio/jupyter_test/world_fra_samples_20190404.csv",row.names = F)
names(df0)

df0[df0$stratum == "Change",]$stratum <- "change"
