def main(ctx):
  return build_and_push("username", "token", "registry", "app")


def build_and_push(docker_registry_username, docker_registry_token, docker_registry, app_name):
  return {
    "kind": "pipeline",
    "type": "docker",
    "name": "build and push",
    "steps": [
      {
        "name": "build",
        "image": "plugins/docker",
        "settings": [
            "username": "username",
            "password": "%s" % docker_registry_token,
            "repo": "%s/%s/%s" % docker_registry docker_registry_username app_name,
            "tags": "latest",
            "registry": "%s" % docker_registry
        ]
      }
    ]
    "trigger": [
      "event": [
        "push",
        "pull_request",
        "custom"
      ]
    ]
  }