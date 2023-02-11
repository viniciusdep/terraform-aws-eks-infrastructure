#===============CRIAÇÃO DO EKS CLUSTER===============#
# Criação de um Cluster e attachment das roles
# Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
# Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.


resource "aws_eks_cluster" "eks-cluster-vdep" {
  name     = "eks-cluster-vdep"
  role_arn = aws_iam_role.iam-cluster.arn

  vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true
    subnet_ids              = [aws_subnet.private_1.id, aws_subnet.private_2.id, aws_subnet.public_1.id, aws_subnet.public_2.id]
  }
}

#===============CRIAÇÃO DO NODE GORUP===============#
# Apontando as Subnets privadas para a criação dos nós
# Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
# Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.

resource "aws_eks_node_group" "node-vdep" {
  cluster_name    = aws_eks_cluster.eks-cluster-vdep.name
  node_group_name = "node-vdep"
  node_role_arn   = aws_iam_role.iam-nodes.arn
  subnet_ids      = [aws_subnet.private_1.id, aws_subnet.private_2.id]
  instance_types  = ["t3.small"]
  ami_type        = "AL2_x86_64"
  capacity_type   = "ON_DEMAND"
  disk_size       = 20

  # Scaling config define o numero de nós (mín, máx e desejado)
  scaling_config {
    desired_size = 3
    max_size     = 3
    min_size     = 3
  }

}