data "aws_eks_cluster" "cluster" {
    name = var.cluster_name
}

data "aws_eks_cluster_auth" "cluster_auth" {
    name = var.cluster_name
}

# Get OIDC issuer thumbprint
data "tls_certificate" "OIDC_thumbprint" {
  url = data.aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}

resource "aws_iam_openid_connect_provider" "eks" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.OIDC_thumbprint.certificates[0].sha1_fingerprint]
  url             = data.aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}