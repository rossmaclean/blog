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
            "echo Params: %s" % ctx.build.params
        ]
      }
    ]
  }