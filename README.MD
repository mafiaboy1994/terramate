# Terramate

## Structure

- Every stack (Terraform code) will live in stacks directory
- Every module (Terramate code) will live in terramate directory 
  You can nest things

## Tips

- Always import then declare your globals in your stacks.
  If you declare some globals in your modules, those globals will have precedence on your stack-defined globals.
  You don't want that :D

- terramate.tm.hcl will live in the root directory.
  It will configure the terramate behavior + other common things

- At the end, it will always be Terraform code. Terramate is only a "wrapper/scheduler"