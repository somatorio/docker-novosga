# WARNING: THIS IMAGE IS DEPRECATED IN FAVOR OF NOVOSGA/NOVOSGA:1.X AS IT HAS SUPPORT FROM THE DEVELOPER OF NOVOSGA


# novosga
From novosga docs:
SGA é o acrônimo de Sistema de Gerenciamento de Atendimento, um sistema adaptável para grandes e pequenas organizações.

Através do SGA é possível gerenciar filas e fluxo de atendimento em quaisquer tipos de empresas ou organizações que prestam serviço de atendimento presencial à pessoas.

O SGA oferece o controle de filas de atendimento através de emissão de senhas e chamada das mesmas através de painéis. As filas de atendimento podem conter um único serviço ou um grupo de serviços. Os painéis podem chamar um, vários ou todos os serviços. Uma unidade de atendimento pode ter vários painéis.

O SGA é mais do que um sistema de controle de filas.Ao gerenciar o fluxo de atendimento, o sistema apresenta uma série de recursos que auxiliam na gerência e administração das unidades de atendimento.

Fornece uma diversidade de informações gerenciais preciosas, através de relatórios, estatísticas e gráficos avançados sobre atendimentos de uma unidade, de um grupo de unidades ou de todas elas. É possível obter estatísticas e tempos médios de atendimento por atendente, por período e por unidade, entre outras. Pode-se obter dados detalhados ou agregados.

As informações gerenciais fornecidas pelo SGA possibilitam aos gestores planejar, acompanhar, monitorar, otimizar e agilizar o atendimento aos clientes. O sistema pode ser utilizado tanto de forma centralizada como descentralizada. Ou seja, pode-se utilizar servidores hospedados centralizadamente ou em cada unidade de atendimento. Porém, o ambiente centralizado oferece mais vantagens, pois os dados estarão concentrados num mesmo banco de dados, possibilitando emitir relatórios e estatísticas completas.

Na versão Novo SGA, a parte web foi totalmente reformulada, deixando mais leve e intuitiva, com uma interface amigável e instalação super fácil. Já no painel, além de melhorias para funcionar em monitores widescreen, foi reescrito em JavaFX.

## How to use
```
docker container run -d \
   -e DATABASE_HOST="hostname" \
   -e DATABASE_USER="dbusername" \
   -e DATABASE_PASSWORD="dbpass" \
   -e DATABASE_SGDB="mysql or postgres" \
   -p 80:80 \
   somatorio/novosga
```


### Settings (Environment Variables)

| Setting                 | Default value       | Optional? |
| ----------------------- | ------------------- | :-------: |
| DATABASE_HOST           | *blank*             | ***no***  |
| DATABASE_NAME           | novosga             | yes       | 
| DATABASE_USER           | *blank*             | ***no***  |
| DATABASE_PASSWORD       | *blank*             | ***no***  | 
| DATABASE_SGDB           | *blank*             | ***no***  |
| DATABASE_PORT           | 3306                | yes       |
| NOVOSGA_ADMIN_USERNAME  | admin               | yes       |
| NOVOSGA_ADMIN_FIRSTNAME | Administrator       | yes       | 
| NOVOSGA_ADMIN_LASTNAME  | Global              | yes       | 
| NOVOSGA_ADMIN_PASSWORD  | 123456              | yes       |
| TZ                      | UTC                 | yes       |
