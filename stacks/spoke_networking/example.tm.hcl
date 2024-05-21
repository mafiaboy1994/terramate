generate_hcl "file.tf"{
    content {
        tm_dynamic "block" {
            for_each = global.spoke_networking
            iterator = networking

            content {
                key = networking.key
                value = networking.value
            }
        }
    }
}