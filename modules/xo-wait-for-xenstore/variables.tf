variable "xo_token" {
  type = string
  description = "Xen Orchestra API token"
}

variable "xo_url" {
  type = string
  description = "Xen Orchestra instance URL (without protocol)"
}

variable "vm_id" {
  type = string
  description = "VM ID"
}

variable "xenstore_key" {
  type = string
  description = "XenStore key to lookup"
}

variable "xenstore_value" {
  type = string
  description = "Wait for until it differs from this value"
}