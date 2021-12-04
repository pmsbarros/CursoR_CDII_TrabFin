#Função para arrumar a base para análises de data.
arruma_data_lanc <- function(df, coluna) {
  mutate(df,
    #Transformar a data_lancamento de chr para date.
    coluna = ymd(coluna),
    #Criar colunas que indiquem mês e dia do ano do lançamento.
    mes = month(coluna, label = TRUE, abbr = TRUE, locale = "Portuguese_Brazil.1252"),
    mes = as.factor(mes),
    dia = paste0(mday(coluna),"-",mes),
    #O dia do ano ficou como chr, mas não vai prejudicar a análise.
  )
}
