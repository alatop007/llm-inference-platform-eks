.PHONY: lab-up up down destroy-check load-test

# GPU Day #2 needs A10G/bf16 for the flagship TTFT numbers: make up GPU_INSTANCE_TYPE=g5.xlarge
GPU_INSTANCE_TYPE ?= g4dn.xlarge

lab-up:
	@echo "TODO: kind + fake-gpu-operator + vllm cpu chart + gateway + keda + monitoring (free daily driver)"

up:
	@echo "TODO: terraform apply — VPC + EKS + Karpenter on $(GPU_INSTANCE_TYPE) spot; helm install vllm chart + gateway (GPU Day only)"

down:
	@echo "TODO: helm uninstall workloads / terraform destroy"

destroy-check:
	@echo "TODO: assert no EC2/EKS-billable resources remain"

load-test:
	@echo "TODO: run llmperf against the gateway endpoint"
