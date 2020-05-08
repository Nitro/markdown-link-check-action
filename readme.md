# Markdown Link Check Action
This action uses [markdown-link-check](https://github.com/Nitro/markdown-link-check) to check for broken links at markdown files.

## Inputs
### `version`
Not required. Default value `v0.1.0`.
The version correspond to these [releases](https://github.com/Nitro/markdown-link-check/releases).

### `config`
Not required. Default value `markdown-link-check.yml`.

### `path`
Not required. Default value `.`.

## Example usage
```yml
uses: Nitro/markdown-link-check-action@v1
with:
  version: v0.1.0
  config: markdown-link-check.yml
  path: .
```
