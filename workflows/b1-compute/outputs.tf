output "cluster_name" {
  value = var.compute_name
}

output "instance_id" {
  value = module.compute.id
}

output "network" {
  value = var.vpc_id
}

output "custom_flow_winner" {
  value = try(trimspace(file("${path.module}/flow_winner.txt")), "flow_winner.txt not found")
}

output "project_custom_flow_marker" {
  value = try(trimspace(file("${path.module}/project_flow_marker.txt")), "project_flow_marker.txt not found")
}

output "template_custom_flow_marker" {
  value = try(trimspace(file("${path.module}/template_flow_marker.txt")), "template_flow_marker.txt not found")
}
