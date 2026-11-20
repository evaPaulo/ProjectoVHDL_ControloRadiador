# Controlador Inteligente para Radiador Doméstico

**Controlador digital e simulador de ambiente térmico desenvolvido em VHDL para FPGA Altera DE2-115.**

Este projeto implementa um sistema digital de controlo de aquecimento doméstico, combinando programação horária, seleção de perfis de temperatura e regulação ON/OFF com histerese. A implementação foi desenvolvida para a placa de desenvolvimento Terasic DE2-115, baseada numa FPGA Altera Cyclone IV E.

O projeto original foi desenvolvido em 2023, no âmbito da unidade curricular de Laboratório de Sistemas Digitais, na Universidade de Aveiro. Em 2026, foi recuperado e reorganizado individualmente, acompanhado por uma revisão da documentação técnica e do código-fonte.

## Funcionalidades

- **Relógio digital:** contagem de horas e minutos, com possibilidade de acerto manual.
- **Programação horária:** definição de períodos de funcionamento associados a diferentes perfis térmicos.
- **Perfis de temperatura:** três configurações — GELO, LUA e SOL — com valores de referência ajustáveis.
- **Simulação térmica:** representação da evolução da temperatura ambiente através de um contador digital.
- **Controlo ON/OFF com histerese:** decisão de ligar ou desligar o aquecimento em função da temperatura simulada e do perfil seleccionado.
- **Interface física:** interação através de botões e interruptores, com apresentação de informação em displays de sete segmentos e LEDs.

## Arquitetura

O sistema está organizado em módulos funcionais independentes, integrados numa entidade de topo.

Os principais blocos são:

- **Geração de impulsos:** divisão do sinal de relógio de 50 MHz para produzir as referências temporais necessárias ao funcionamento do sistema.
- **Módulo de relógio:** contagem e configuração manual das horas e dos minutos, com controlo dos modos de funcionamento através de uma máquina de estados finitos.
- **Programação horária:** associação dos períodos do dia aos perfis de temperatura, através de uma memória ROM.
- **Configuração de temperaturas:** armazenamento e alteração dos valores de referência dos três perfis.
- **Simulação e regulação térmica:** atualização da temperatura ambiente simulada e implementação da lógica de controlo do aquecimento.
- **Conversão e visualização:** preparação dos valores numéricos para apresentação nos displays de sete segmentos e indicação do perfil seleccionado através de LEDs.

A descrição detalhada da arquitetura, dos sinais de controlo e das interligações entre módulos encontra-se no relatório técnico.

## Tecnologias e ferramentas

- **VHDL** — descrição de hardware digital;
- **Intel Quartus Prime** — desenvolvimento, análise, síntese e visualização RTL;
- **FPGA Altera Cyclone IV E EP4CE115F29C7**;
- **Terasic DE2-115** — plataforma de desenvolvimento e teste.

## Estrutura do repositório

```text
ProjectoVHDL_ControloRadiador/
│
├── CodigoFinal_RadiadorCompleto/
│   └── Código VHDL reorganizado em 2026
│
├── ProjectoOriginal_2023/
│   └── Versão original do projeto
│
├── RelatorioTecnico2026.pdf
│   └── Documentação técnica revista
│
├── RelatorioTecnicoLATEX.zip
│   └── Ficheiros-fonte da documentação
│
└── README.md
```

## Relatório técnico

O relatório técnico de 2026 documenta o funcionamento do sistema e a sua arquitetura, incluindo:

- Enquadramento teórico e tecnológico;
- Descrição funcional e estrutural dos módulos;
- Máquinas de estados finitos e lógica de controlo;
- Análise crítica da implementação e das suas limitações;
- Resultados e registos dos testes realizados;
- Guia de utilização da plataforma;
- Diagramas esquemáticos RTL e mapeamento físico dos pinos da FPGA.

**[Consultar o relatório técnico (PDF)](RelatorioTecnico2026.pdf)**

## Estado do projeto e âmbito da revisão

A implementação original foi desenvolvida e testada em 2023 na plataforma Terasic DE2-115.

Em 2026, o projeto foi recuperado individualmente, tendo sido reorganizado o código VHDL e reescrita a documentação técnica. A versão original foi preservada no repositório, permitindo distinguir o trabalho desenvolvido em 2023 das alterações introduzidas durante a revisão.

A revisão de 2026 não incluiu novos ensaios físicos na FPGA. Os resultados experimentais apresentados no relatório correspondem aos registos disponíveis da implementação original.

## Autoria

Projeto original desenvolvido em 2023, na unidade curricular de Laboratório de Sistemas Digitais, Universidade de Aveiro.

Recuperação, reorganização do código e revisão da documentação técnica realizadas individualmente em 2026.

