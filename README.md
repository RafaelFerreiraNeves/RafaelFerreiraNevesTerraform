#  Cluster Kubernetes na AWS com Terraform

Este projeto demonstra a criação de um cluster Kubernetes na AWS utilizando Terraform, com foco em **provisionamento direto de infraestrutura e entendimento dos componentes necessários para execução de workloads containerizados**.

---

##  Arquitetura

```text
Internet
   ↓
VPC
   ↓
Subnets (públicas e privadas)
   ↓
Cluster Kubernetes
   ↓
Worker Nodes (EC2)
```

---

##  Objetivo do Projeto

Demonstrar na prática:

* Provisionamento de infraestrutura na AWS com Terraform
* Criação de um cluster Kubernetes
* Configuração de rede (VPC, subnets, segurança)
* Entendimento dos componentes básicos do Kubernetes

---

##  Tecnologias Utilizadas

* Kubernetes
* Terraform
* AWS (EC2, VPC, Subnets, Security Groups, IAM)
* Linux
* GitHub Actions (CI/CD)

---

##  Estrutura do Projeto

```bash
.
├── main.tf
├── variables.tf
├── outputs.tf
```

---

##  Sobre o Cluster Kubernetes

O cluster provisionado permite:

* Execução de containers em múltiplos nós
* Distribuição de carga entre instâncias
* Gerenciamento básico de workloads

Observação:
Este projeto foca no **provisionamento da infraestrutura do cluster**, não na orquestração avançada de aplicações dentro dele.

---

##  Segurança e Rede

* VPC isolada
* Subnets públicas e privadas
* Controle de acesso via Security Groups
* Configuração de permissões via IAM

---

##  Outputs do Terraform

Exemplos de outputs disponíveis:

```hcl
output "cluster_endpoint" {
  value = aws_eks_cluster.this.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.this.name
}
```

---

##  Como Executar

### 1. Configurar credenciais AWS

```bash
aws configure
```

---

### 2. Inicializar Terraform

```bash
terraform init
```

---

### 3. Planejar infraestrutura

```bash
terraform plan
```

---

### 4. Aplicar

```bash
terraform apply
```

---

##  Acesso ao Cluster

Após o provisionamento:

```bash
aws eks update-kubeconfig --name <cluster_name>
```

---

##  Conceitos Aplicados

* Infraestrutura como Código (IaC)
* Provisionamento de cluster Kubernetes
* Configuração de rede na AWS
* Integração entre serviços AWS
* Automação de infraestrutura

---

##  Limitações do Projeto

* Não utiliza modularização com Terraform
* Não inclui deploy de aplicações no cluster
* Não possui autoscaling configurado
* Não possui ingress controller

---

##  Melhorias Futuras

* Refatorar para arquitetura modular
* Deploy de aplicações no cluster
* Configurar Ingress Controller
* Adicionar Auto Scaling
* Monitoramento com Prometheus e Grafana

---

##  Autor

Rafael Ferreira Neves

---

##  Conclusão

Este projeto demonstra a criação de um cluster Kubernetes na AWS utilizando Terraform de forma direta, com foco em aprendizado dos componentes essenciais de infraestrutura e orquestração.

---
