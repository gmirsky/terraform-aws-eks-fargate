resource "aws_efs_mount_target" "zone-a" {
  file_system_id = aws_efs_file_system.eks.id
  subnet_id      = aws_subnet.private-a.id
  security_groups = [
    aws_eks_cluster.cluster.vpc_config[0].cluster_security_group_id
  ]
}
#
resource "aws_efs_mount_target" "zone-b" {
  file_system_id = aws_efs_file_system.eks.id
  subnet_id      = aws_subnet.private-b.id
  security_groups = [
    aws_eks_cluster.cluster.vpc_config[0].cluster_security_group_id
  ]
}
#
