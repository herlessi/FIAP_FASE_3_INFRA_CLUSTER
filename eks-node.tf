resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = "node_group-${var.project_name}"
  node_role_arn   = aws_iam_role.node.arn
  subnet_ids      = aws_subnet.subnet_public[*].id
  disk_size       = var.disk_size
  instance_types  = [var.instance_type]

  scaling_config { #o auto escalamento do node group
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1 #significa que no maximo 1 node pode estar indisponivel durante uma atualizacao, ou fica indisponivel enquanto atualiza e depois volta
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.node-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.node-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.node-AmazonEC2ContainerRegistryReadOnly,
  ]
}