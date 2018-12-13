https://www.molecularecologist.com/2016/02/quick-and-dirty-tree-building-in-r/

Debes bajar e instalar R
Despues abrir la consola de R y con el comando R

Dentro dela consola debes correr los siguientes comandos

install.packages("ape")
install.packages("phangorn")
install.packages("seqinr")

Para instalar los paquetes

ya con los pquetes instalados debes de correr los scrips de R 
con el comando

Rscript treesCut.R
Rscript treesFill.R

Estos cuando los corres crean un PDF donde guarda los plots que ejecutan

En las carpetas All, All-cut y All-fill estan todos los archivos bajandos con las secuencias de ADN, all son los origniales
all-cut es las secuencias cortadas al tamaño del menor, all-fill es las secuencias complementdas con ---- al tamaño del mayor

Igual estan los archivos all.fasta, all-cut.fasta y all-fill.fast donde las diferencias son las mismas de las de las carpetas pero estos archivos tiene todas las secuencias de adn juntas.


La idea de tener all-cut y all-fill es para ver si había varianza pero al parecer no la hay

Y con el All original no funcionó ya que para que sirvan las funciones todas las entradas deben ser del mismo tamaño.


