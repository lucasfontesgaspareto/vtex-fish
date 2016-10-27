A set of utilities and completions to make your life easier when using the VTEX platform on fish shell.

### Setup

Install using [Fisherman](http://fisherman.sh/)

`fisher vtex/vtex-fish`

### Available commands

- `envtex` - Sets the $VTEX_ENV variable to the argument, or stable if used without arguments.

### Setting account and workspace on the prompt

This plugin exports a `prompt_vtex` function which prints your current account and workspace:

`pilateslovers/guilherme`

To add it to your prompt, first add this to your `fish-prompt.fish` function:

```
if test (prompt_vtex)
  set vtex ' ('(prompt_vtex)')'
end
```

Now simply add `$vtex` to somewhere in your prompt string.
