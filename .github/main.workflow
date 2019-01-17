workflow "Update configuration in Intersight using Ansible" {
  on = "push"
  resolves = ["Run intersight-ansible-action"]
}

action "Run intersight-ansible-action" {
  uses = "docker://cgascoig/intersight-ansible-action:latest"
  secrets = ["INTERSIGHT_API_KEY_ID", "INTERSIGHT_API_PRIVATE_KEY"]
}
