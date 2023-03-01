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