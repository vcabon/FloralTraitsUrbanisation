#### run GLMs, compute rsq and check for intercorrelation

## for response: 'UV-blue + blue'

# run GLMs 

blue_glm_quasibinom <- glm(blue~Seal_100+Conn_Dry1+Conn_Green1+Mean_Temp_3_12+SVF+Proportion_WB+Richness_Poll, family = quasibinomial(link = "logit"))
summary(blue_glm_quasibinom)

blue_glm_quasibinom2 <- update(blue_glm_quasibinom,~.-SVF) 
summary(blue_glm_quasibinom2)

blue_glm_quasibinom3 <- update(blue_glm_quasibinom2,~.-Conn_Dry1 ) 
summary(blue_glm_quasibinom3)

blue_glm_quasibinom4 <- update(blue_glm_quasibinom3,~.-Conn_Green1 ) 
summary(blue_glm_quasibinom4)

blue_glm_quasibinom5 <- update(blue_glm_quasibinom4,~.-Proportion_WB) 
summary(blue_glm_quasibinom5)

blue_glm_quasibinom6 <- update(blue_glm_quasibinom5,~.- Seal_100) 
summary(blue_glm_quasibinom6)

blue_glm_quasibinom7 <- update(blue_glm_quasibinom6,~.- Mean_Temp_3_12) 
summary(blue_glm_quasibinom7)

# compute adjusted-R2 in order to choose the model with the higher Rsq

rsq(blue_glm_quasibinom, adj=TRUE)
rsq(blue_glm_quasibinom2, adj=TRUE)
rsq(blue_glm_quasibinom3, adj=TRUE)
rsq(blue_glm_quasibinom4, adj=TRUE)
rsq(blue_glm_quasibinom5, adj=TRUE)
rsq(blue_glm_quasibinom6, adj=TRUE)
rsq(blue_glm_quasibinom7, adj=TRUE)

# check for correlations between predictors 

vif(blue_glm_quasibinom)


## for response: 'blue-green'

# run GLMs 

Blue_green_glm_quasibinom <- glm(Blue_green~Seal_100+Conn_Dry1+Conn_Green1+Mean_Temp_3_12+SVF+Proportion_WB+Richness_Poll, family = quasibinomial(link = "logit"))
summary(Blue_green_glm_quasibinom)

Blue_green_glm_quasibinom2 <- update(Blue_green_glm_quasibinom,~.- Proportion_WB) 
summary(Blue_green_glm_quasibinom2)

Blue_green_glm_quasibinom3 <- update(Blue_green_glm_quasibinom2,~.- Conn_Green1) 
summary(Blue_green_glm_quasibinom3)

Blue_green_glm_quasibinom4 <- update(Blue_green_glm_quasibinom3,~.- Mean_Temp_3_12) 
summary(Blue_green_glm_quasibinom4)

Blue_green_glm_quasibinom5 <- update(Blue_green_glm_quasibinom4,~.- Conn_Dry1) 
summary(Blue_green_glm_quasibinom5)

Blue_green_glm_quasibinom6 <- update(Blue_green_glm_quasibinom5,~.- Richness_Poll) 
summary(Blue_green_glm_quasibinom6)

Blue_green_glm_quasibinom7 <- update(Blue_green_glm_quasibinom6,~.- Seal_100) 
summary(Blue_green_glm_quasibinom7)

# compute adjusted-R2 in order to choose the model with the higher Rsq

rsq(Blue_green_glm_quasibinom, adj=TRUE)
rsq(Blue_green_glm_quasibinom2, adj=TRUE)
rsq(Blue_green_glm_quasibinom3, adj=TRUE)
rsq(Blue_green_glm_quasibinom4, adj=TRUE)
rsq(Blue_green_glm_quasibinom5, adj=TRUE)
rsq(Blue_green_glm_quasibinom6, adj=TRUE)
rsq(Blue_green_glm_quasibinom7, adj=TRUE)

# check for correlations between predictors 

vif(Blue_green_glm_quasibinom2)


## for response: 'green + UV-green'

# run GLMs 

green_glm_quasibinom <- glm(green~Seal_100+Conn_Dry1+Conn_Green1+Mean_Temp_3_12+SVF+Proportion_WB+Richness_Poll, family = quasibinomial(link = "logit"))
summary(green_glm_quasibinom)

green_glm_quasibinom2 <- update(green_glm_quasibinom,~.- Seal_100) 
summary(green_glm_quasibinom2)

green_glm_quasibinom3 <- update(green_glm_quasibinom2,~.- Conn_Green1) 
summary(green_glm_quasibinom3)

green_glm_quasibinom4 <- update(green_glm_quasibinom3,~.- Conn_Dry1) 
summary(green_glm_quasibinom4)

green_glm_quasibinom5 <- update(green_glm_quasibinom4,~.- Proportion_WB) 
summary(green_glm_quasibinom5)

green_glm_quasibinom6 <- update(green_glm_quasibinom5,~.- Richness_Poll) 
summary(green_glm_quasibinom6)

green_glm_quasibinom7 <- update(green_glm_quasibinom6,~.- SVF) 
summary(green_glm_quasibinom7)

# compute adjusted-R2 in order to choose the model with the higher Rsq

rsq(green_glm_quasibinom, adj=TRUE)
rsq(green_glm_quasibinom2, adj=TRUE)
rsq(green_glm_quasibinom3, adj=TRUE)
rsq(green_glm_quasibinom4, adj=TRUE)
rsq(green_glm_quasibinom5, adj=TRUE)
rsq(green_glm_quasibinom6, adj=TRUE)
rsq(green_glm_quasibinom7, adj=TRUE)

# check for correlations between predictors 

vif(green_glm_quasibinom3)


## for response: UV patterns

# run GLMs 

UV_Pattern_glm_quasibinom <- glm(UV_Pattern~Seal_100+Conn_Dry1+Conn_Green1+Mean_Temp_3_12+SVF+Proportion_WB+Richness_Poll, family = quasibinomial(link = "logit"))
summary(UV_Pattern_glm_quasibinom)

UV_Pattern_glm_quasibinom2 <- update(UV_Pattern_glm_quasibinom,~.- Conn_Dry1) 
summary(UV_Pattern_glm_quasibinom2)

UV_Pattern_glm_quasibinom3 <- update(UV_Pattern_glm_quasibinom2,~.- Conn_Green1) 
summary(UV_Pattern_glm_quasibinom3)

UV_Pattern_glm_quasibinom4 <- update(UV_Pattern_glm_quasibinom3,~.- Proportion_WB) 
summary(UV_Pattern_glm_quasibinom4)

UV_Pattern_glm_quasibinom5 <- update(UV_Pattern_glm_quasibinom4,~.- Richness_Poll) 
summary(UV_Pattern_glm_quasibinom5)

UV_Pattern_glm_quasibinom6 <- update(UV_Pattern_glm_quasibinom5,~.- Mean_Temp_3_12) 
summary(UV_Pattern_glm_quasibinom6)

UV_Pattern_glm_quasibinom7 <- update(UV_Pattern_glm_quasibinom6,~.- SVF) 
summary(UV_Pattern_glm_quasibinom7)

# compute adjusted-R2 in order to choose the model with the higher Rsq

rsq(UV_Pattern_glm_quasibinom, adj=TRUE)
rsq(UV_Pattern_glm_quasibinom2, adj=TRUE)
rsq(UV_Pattern_glm_quasibinom3, adj=TRUE)
rsq(UV_Pattern_glm_quasibinom4, adj=TRUE)
rsq(UV_Pattern_glm_quasibinom5, adj=TRUE)
rsq(UV_Pattern_glm_quasibinom6, adj=TRUE)
rsq(UV_Pattern_glm_quasibinom7, adj=TRUE)

# check for correlations between predictors 

vif(UV_Pattern_glm_quasibinom2)


## for response: CWM UV intensity

# run GLMs 

CWM_UV_perif_glm_gauss_conn <- glm(log(CWM_UV_perif)~Seal_100+Conn_Dry1+Conn_Green1+Mean_Temp_3_12+SVF+Proportion_WB+Richness_Poll)
summary(CWM_UV_perif_glm_gauss_conn)

CWM_UV_perif_glm_gauss_conn2 <- update(CWM_UV_perif_glm_gauss_conn,~.- Proportion_WB) 
summary(CWM_UV_perif_glm_gauss_conn2)

CWM_UV_perif_glm_gauss_conn3 <- update(CWM_UV_perif_glm_gauss_conn2,~.- SVF) 
summary(CWM_UV_perif_glm_gauss_conn3)

CWM_UV_perif_glm_gauss_conn4 <- update(CWM_UV_perif_glm_gauss_conn3,~.- Richness_Poll) 
summary(CWM_UV_perif_glm_gauss_conn4)

CWM_UV_perif_glm_gauss_conn5 <- update(CWM_UV_perif_glm_gauss_conn4,~.- Conn_Dry1) 
summary(CWM_UV_perif_glm_gauss_conn5)

CWM_UV_perif_glm_gauss_conn6 <- update(CWM_UV_perif_glm_gauss_conn5,~.- Mean_Temp_3_12) 
summary(CWM_UV_perif_glm_gauss_conn6)

CWM_UV_perif_glm_gauss_conn7 <- update(CWM_UV_perif_glm_gauss_conn6,~.- Conn_Green1) 
summary(CWM_UV_perif_glm_gauss_conn7)

# compute adjusted-R2 in order to choose the model with the higher Rsq

rsq(CWM_UV_perif_glm_gauss_conn, adj=TRUE)
rsq(CWM_UV_perif_glm_gauss_conn2, adj=TRUE)
rsq(CWM_UV_perif_glm_gauss_conn3, adj=TRUE)
rsq(CWM_UV_perif_glm_gauss_conn4, adj=TRUE)
rsq(CWM_UV_perif_glm_gauss_conn5, adj=TRUE)
rsq(CWM_UV_perif_glm_gauss_conn6, adj=TRUE)
rsq(CWM_UV_perif_glm_gauss_conn7, adj=TRUE)

# check for correlations between predictors 

vif(CWM_UV_perif_glm_gauss_conn6)


## for response: CWM flower size

# run GLMs 

CWM_size_flower_glm_nb <- glm(CWM_size_flower~Seal_100+Conn_Dry1+Conn_Green1+Mean_Temp_3_12+SVF+Proportion_WB+Richness_Poll, family = "quasipoisson")
summary(CWM_size_flower_glm_nb)

CWM_size_flower_glm_nb2 <- update(CWM_size_flower_glm_nb,~.- Seal_100) 
summary(CWM_size_flower_glm_nb2)

CWM_size_flower_glm_nb3 <- update(CWM_size_flower_glm_nb2,~.- Conn_Dry1) 
summary(CWM_size_flower_glm_nb3)

CWM_size_flower_glm_nb4 <- update(CWM_size_flower_glm_nb3,~.- Conn_Green1) 
summary(CWM_size_flower_glm_nb4)

CWM_size_flower_glm_nb5 <- update(CWM_size_flower_glm_nb4,~.- Proportion_WB) 
summary(CWM_size_flower_glm_nb5)

CWM_size_flower_glm_nb6 <- update(CWM_size_flower_glm_nb5,~.- SVF) 
summary(CWM_size_flower_glm_nb6)

CWM_size_flower_glm_nb7 <- update(CWM_size_flower_glm_nb6,~.- Richness_Poll) 
summary(CWM_size_flower_glm_nb7)

# compute adjusted-R2 in order to choose the model with the higher Rsq

rsq(CWM_size_flower_glm_nb, adj=TRUE)
rsq(CWM_size_flower_glm_nb2, adj=TRUE)
rsq(CWM_size_flower_glm_nb3, adj=TRUE)
rsq(CWM_size_flower_glm_nb4, adj=TRUE)
rsq(CWM_size_flower_glm_nb5, adj=TRUE)
rsq(CWM_size_flower_glm_nb6, adj=TRUE)
rsq(CWM_size_flower_glm_nb7, adj=TRUE)

# check for correlations between predictors 

vif(CWM_size_flower_glm_nb4)


## for response: RaoQ flower size

# run GLMs 

RaoQ_size_flower_glm_nb <- glm(RaoQ_size_flower~Seal_100+Conn_Dry1+Conn_Green1+Mean_Temp_3_12+SVF+Proportion_WB+Richness_Poll)
summary(RaoQ_size_flower_glm_nb)

RaoQ_size_flower_glm_nb2 <- update(RaoQ_size_flower_glm_nb,~.- Conn_Dry1) 
summary(RaoQ_size_flower_glm_nb2)

RaoQ_size_flower_glm_nb3 <- update(RaoQ_size_flower_glm_nb2,~.- Richness_Poll) 
summary(RaoQ_size_flower_glm_nb3)

RaoQ_size_flower_glm_nb4 <- update(RaoQ_size_flower_glm_nb3,~.- Conn_Green1) 
summary(RaoQ_size_flower_glm_nb4)

RaoQ_size_flower_glm_nb5 <- update(RaoQ_size_flower_glm_nb4,~.- Mean_Temp_3_12) 
summary(RaoQ_size_flower_glm_nb5)

RaoQ_size_flower_glm_nb6 <- update(RaoQ_size_flower_glm_nb5,~.- Proportion_WB) 
summary(RaoQ_size_flower_glm_nb6)

RaoQ_size_flower_glm_nb7 <- update(RaoQ_size_flower_glm_nb6,~.- SVF) 
summary(RaoQ_size_flower_glm_nb7)

# compute adjusted-R2 in order to choose the model with the higher Rsq

rsq(RaoQ_size_flower_glm_nb, adj=TRUE)
rsq(RaoQ_size_flower_glm_nb2, adj=TRUE)
rsq(RaoQ_size_flower_glm_nb3, adj=TRUE)
rsq(RaoQ_size_flower_glm_nb4, adj=TRUE)
rsq(RaoQ_size_flower_glm_nb5, adj=TRUE)
rsq(RaoQ_size_flower_glm_nb6, adj=TRUE)
rsq(RaoQ_size_flower_glm_nb7, adj=TRUE)

# check for correlations between predictors 

vif(RaoQ_size_flower_glm_nb5)