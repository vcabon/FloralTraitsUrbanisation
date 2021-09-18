# plots 'green + UV-green'

Green_Temp <- ggplot(green_glm_quasibinom3, aes_string(x = names(green_glm_quasibinom3$model)[3], y = Percent_green )) +
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()
Green_Temp <- Green_Temp+labs(x="Mean of daily temperature", y= "Proportion 'green + UV-green'")

Green_SVF <- ggplot(green_glm_quasibinom3, aes_string(x = names(green_glm_quasibinom3$model)[4], y = Percent_green )) + 
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()                                            
Green_SVF <- Green_SVF+labs(x="SVF", y= "Proportion 'green + UV-green'")


# plots proportion UV patterns

UVpattern_Seal <- ggplot(UV_Pattern_glm_quasibinom2, aes_string(x = names(UV_Pattern_glm_quasibinom2$model)[2], y = Percent_UV_pattern )) + 
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()                                            
UVpattern_Seal <- UVpattern_Seal+labs(x="Proportion impervious surface", y= "Proportion UV patterns")


# plots UV reflection strength

UVstrength_Seal <- ggplot(CWM_UV_perif_glm_gauss_conn6, aes_string(x = names(CWM_UV_perif_glm_gauss_conn6$model)[2], y = CWM_UV_perif )) + 
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()                                            
UVstrength_Seal <- UVstrength_Seal+labs(x="Proportion of impervious surface", y= "UV reflectance strength")


# plots flower size diversity

SizeDiv_Seal <- ggplot(RaoQ_size_flower_glm_nb5, aes_string(x = names(RaoQ_size_flower_glm_nb5$model)[2], y = RaoQ_size_flower )) + 
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()                                            
SizeDiv_Seal <- SizeDiv_Seal+labs(x="Proportion of impervious surface", y= "flower size diversity")

SizeDiv_SVF <- ggplot(RaoQ_size_flower_glm_nb5, aes_string(x = names(RaoQ_size_flower_glm_nb5$model)[3], y = RaoQ_size_flower )) + 
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()                                            
SizeDiv_SVF <- SizeDiv_SVF+labs(x="SVF", y= "flower size diversity")

SizeDiv_Bees <- ggplot(RaoQ_size_flower_glm_nb5, aes_string(x = names(RaoQ_size_flower_glm_nb5$model)[4], y = RaoQ_size_flower )) + 
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()                                            
SizeDiv_Bees <- SizeDiv_Bees+labs(x="Proportion of bees", y= "flower size diversity")

# plots flower size

Size_Temp <- ggplot(CWM_size_flower_glm_nb4, aes_string(x = names(CWM_size_flower_glm_nb4$model)[2], y = CWM_size_flower )) + 
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()                                            
Size_Temp <- Size_Temp+labs(x="Mean of daily temperature", y= "flower size")

Size_RichPoll <- ggplot(CWM_size_flower_glm_nb4, aes_string(x = names(CWM_size_flower_glm_nb4$model)[5], y = CWM_size_flower )) + 
    geom_ribbon(stat = "smooth", method = "lm", fill="azure2") +
    stat_smooth(method = "glm", se= FALSE, color="black", lwd= 1.2) +
    theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line = element_line(colour = "black")) + geom_point()                                            
Size_RichPoll <- Size_RichPoll+labs(x="richness pollinators", y= "flower size")


# export Plots as PNG files 

ggsave(filename="Exports/Green_Temp.png", plot=Green_Temp)
ggsave(filename="Exports/Green_SVF.png", plot=Green_SVF)
ggsave(filename="Exports/UVpattern_Seal.png", plot=UVpattern_Seal)
ggsave(filename="Exports/UVstrength_Seal.png", plot=UVstrength_Seal)
ggsave(filename="Exports/SizeDiv_Seal.png", plot=SizeDiv_Seal)
ggsave(filename="Exports/SizeDiv_SVF.png", plot=SizeDiv_SVF)
ggsave(filename="Exports/SizeDiv_Bees.png", plot=SizeDiv_Bees)
ggsave(filename="Exports/Size_Temp.png", plot=Size_Temp)
ggsave(filename="Exports/Size_RichPoll.png", plot=Size_RichPoll)
