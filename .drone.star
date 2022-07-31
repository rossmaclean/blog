def main(ctx):
  print(ctx)
  return {
    "kind": "pipeline",
    "type": "docker",
    "name": "hello_star",
    "steps": [
      {
        "name": "hello",
        "image": "node",
        "commands": [
            "echo hello world"
        ]
      }
    ]
  }