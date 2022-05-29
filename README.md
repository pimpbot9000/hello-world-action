# hello-world-action

### Move tag

```git tag -a v1 -f -m "First version modified"```

remove old tag:

```git push origin :refs/tags/v1```

push new tag:

```git push origin v1```

Move tag to head:

```git tag -a v1 -f -m "First version modified" && git push origin :refs/tags/v1 && git push origin v1```