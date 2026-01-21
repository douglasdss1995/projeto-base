# Projeto Base

Projeto Django criado para ser a base de clone para outros projetos.

## Requisitos

- Python 3.13+
- [uv](https://github.com/astral-sh/uv)

## Instalação

Clone o arquivo `.env.example` e renomeie para .`env`.

Ajuste as variaveis de acordo com o seu ambiente

Execute o comando:

```shell
make build
```

## Atualizar versão

O versionamento é estruturado em `Versão.Relase.Revisão=1.0.0`

```shell
# Atualiza a versão
make major-version

# Atualiza a revisão
make release-version

# Atualiza a revisão
make fix-version
```
