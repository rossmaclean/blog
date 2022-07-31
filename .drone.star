def main(ctx):
  print("Context:")
  print(ctx)
  return {
    "kind": "pipeline",
    "name": "build",
    "steps": [
      {
        "name": "build",
        "image": "alpine",
        "commands": [
            "echo hello world",
            "echo context: %s" % ctx
        ]
      }
    ]
  }