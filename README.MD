# P.A.N.D.A

P - Provisioning<br> 
A - Automated<br> 
N - Network<br>
D - Deployment<br>
A - Across environments<br>

# Configuração de Infraestrutura Multi-Ambiente - AWS - IaC

Neste projeto será feita a configuração de uma infra com o terraform, 
com ambientes de `production`, `dev` e `staging`, cada um com suas respectivas 
`vpc`, `ec2` e `lb`, provisionados de acordo com as necessidades dos ambientes.

### Diferentes ambientes
Antes de iniciar na declaração dos módulos do projeto, precisamos criar nossos 3 workspaces, e selecionar o ambiente dev
```sh
terraform workspace new dev
terraform workspace new staging
terraform workspace new production
terraform workspace select dev
```
Neste ponto podemos rodar os comandos:

```sh
terraform init # para instalar o módulo vpc
terraform fmt -recursive # para garantir parâmetros
terraform validate # para garantir que os comandos estão corretos
terraform plan # para um dry run e ver o impacto das alterações
terraform apply -auto-approve # para aplicar as alterações
```

