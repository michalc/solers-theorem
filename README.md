# solers-theorem [![Proof](https://github.com/michalc/solers-theorem/actions/workflows/proof.yml/badge.svg)](https://github.com/michalc/solers-theorem/actions/workflows/proof.yml)

A formalisation of Solèr's theorem using the [Isabelle](https://isabelle.in.tum.de/) proof assistant

> Work-in progress - this is currently a playground for me learning Isabelle


## Installation

```bash
git clone https://github.com/michalc/solers-theorem
cd solers-theorem
````


## Verifying proof locally

```bash
docker run -v $PWD/Solers.thy:/home/isabelle/Solers.thy makarius/isabelle:Isabelle2022_ARM process -T Solers
````
