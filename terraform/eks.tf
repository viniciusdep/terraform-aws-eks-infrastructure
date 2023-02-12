#===============EKS CLUSTER===============#
# Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
# Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.


resource "aws_eks_cluster" "eks-cluster-vdep" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.iam-cluster.arn

  vpc_config {
    endpoint_private_access = false
    endpoint_public_access  = true
    subnet_ids              = [aws_subnet.private_1.id, aws_subnet.private_2.id, aws_subnet.public_1.id, aws_subnet.public_2.id]
  }
}

#===============NODE GORUP===============#
# Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
# Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.

resource "aws_eks_node_group" "node-vdep" {
  cluster_name    = aws_eks_cluster.eks-cluster-vdep.name
  node_group_name = var.node_group_name
  node_role_arn   = aws_iam_role.iam-nodes.arn
  subnet_ids      = [aws_subnet.private_1.id, aws_subnet.private_2.id]
  instance_types  = [var.node_group_instance_types]
  ami_type        = var.node_group_ami_type
  capacity_type   = var.node_group_capacity_type
  disk_size       = var.node_group_disk_size

  # Scaling config defines the amount of nodes
  scaling_config {
    desired_size = var.node_group_scaling_desired_size
    max_size     = var.node_group_scaling_max_size
    min_size     = var.node_group_scaling_min_size
  }

}