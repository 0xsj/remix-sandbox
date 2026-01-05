.PHONY: cluster-up cluster-down cluster-status kubeconfig

CLUSTER_NAME := n8n-local

# Create the k3d cluster
cluster-up:
	k3d cluster create --config k3d-config.yaml
	@echo ""
	@echo "Cluster '$(CLUSTER_NAME)' created."
	@echo "Run 'kubectl get nodes' to verify."

# Delete the cluster
cluster-down:
	k3d cluster delete $(CLUSTER_NAME)
	@echo "Cluster '$(CLUSTER_NAME)' deleted."

# Check cluster status
cluster-status:
	@k3d cluster list
	@echo ""
	@kubectl get nodes 2>/dev/null || echo "Cluster not running or kubectl not configured."

# Show kubeconfig info
kubeconfig:
	@echo "To use this cluster:"
	@echo "  export KUBECONFIG=\$$(k3d kubeconfig write $(CLUSTER_NAME))"
	@echo ""
	@echo "Or merge into default config:"
	@echo "  k3d kubeconfig merge $(CLUSTER_NAME) --kubeconfig-switch-context"