#########################
#MATRIZ DE CORRELACIONES#
#########################

#Para verificars si hay correlación entre los datos
corr(BD) 


= df.set_index('alpha_3').corr()
sm.graphics.plot_corr(corr, xnames=list(corr.columns))
plt.show()