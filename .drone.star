def main(ctx):
  return build_and_push("rossmaclean", "token", "registry", "app", ctx)


def build_and_push(docker_registry_username, docker_registry_token, docker_registry, app_name, ctx):
  return {
    "kind": "pipeline",
    "type": "docker",
    "name": "build and push",
    "steps": [
      {
        "name": "build",
        "image": "plugins/docker",
        "settings": {
            "username": "%s" % docker_registry_username,
            "password": "%s" % docker_registry_token,
            "repo": "gitea.rossmac.co.uk/rossmaclean/blog",
            "tags": "latest",
            "registry": "%s" % docker_registry
        },
        "commands": [
          "echo 'build %s'" % ctx
        ]
      }
    ]
  }