MUCANÇAS
- nova mux, com 2 bits na saída do bancoReg 															OK
- criar Ram																								OK

- adicionar fio entre out1 do bancoReg para entrada da Ram
- instanciar RAM no banco_ULA


- instanciar Ram no "processador"
- adicionar fio de Ram para muxA
- adicionar nova saída na UC referente ao enderenço selecionado do dado da RAM
- adicionar fio entre UC e Ram de wr_en

- alterar opcodes pra se adaptar à 2 bits, e nao 1, como anteriormente do seletor da mux

