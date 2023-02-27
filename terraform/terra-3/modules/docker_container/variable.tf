variable "containers" {
  type = map(
    object({
      image = string
      ports = object({
        internal = number
        external = number
      })
      command = optional(list(string))
    })
  )
}