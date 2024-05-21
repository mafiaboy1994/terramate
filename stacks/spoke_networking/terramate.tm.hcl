terramate {
  # This defines the stack and assigns it to a specific module
  stack {
    name = "spoke_networking"
    # description = "Stack for spoke networking"
    # dir = "stacks/spoke_networking"
  }
# Inherit globals from the root level
 inherit {
    globals = true
}
}
