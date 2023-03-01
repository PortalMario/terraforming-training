variable "containers" {
  type = map(
    object({
      image = string
      ports = object({
        internal = number
        external = number
      })
      command = optional(list(string))
      volume  = optional(object({
        name           = string
        read_only      = bool
        container_path = string
      }))
    })
  )
}

variable "volumes" {
  type = set(string)
}


# Nested loop
/*       volumes = optional(set(
        object({
          name      = optional(string)
          read_only = optional(bool)
        })
      )) */