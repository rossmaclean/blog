def main(ctx):
  return {
    "kind": "pipeline",
    "name": "build",
    "steps": [
      {
        "name": "build",
        "image": "alpine",
        "commands": [
            "echo hello world",
            "echo Params: %s" % ctx.build.params,
            "echo Commit: %s" % ctx.build.commit,
            "echo Version: %s" % ctx.build.commit[:7]
        ]
      }
    ]
  }