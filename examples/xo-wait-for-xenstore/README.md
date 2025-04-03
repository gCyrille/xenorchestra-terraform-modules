# `xo-wait-for-xenstore`

This module waits for a VM to acquire an IP address in Xen Orchestra (XO). It is useful for ensuring that a VM is fully initialized and ready for further operations.

## Usage


```hcl
module "xo_wait_for_vm_ip" {
    source         = "../modules/xo-wait-for-xenstore"
    xo_token       = "Token for XO API"
    xo_url         = "URL of XO instance"
    vm_id          = "Id of the wm to check"
    xenstore_key   = "Key of the XenStore to check"
    xenstore_value = "Value to for wait"
}
```

## Inputs

| Name             | Description                              | Type     | Default | Required |
|------------------|------------------------------------------|----------|---------|----------|
| `xo_token`       | The token for the XO API authentication  | `string` | n/a     | yes      |
| `xo_url`         | The URL of the Xen Orchestra instance.   | `string` | n/a     | yes      |
| `vm_id`          | The VM Id to check                       | `string` | n/a     | yes      |
| `xenstore_key`   | The key of the Xen Store data to pool    | `string` | n/a     | yes      |
| `xenstore_value` | The expected value to wait for           | `string` | n/a     | yes      |


## Example

```hcl
module "xo_wait_for_vm_ip" {
    source = "../modules/xo-tf-modules/modules/xo-wait-for-xenstore"
    vm_id       = "f39ea59d-5073-dd4c-6c8e-64f0ee2d7b96"
    xo_url      = "xo-example.com"
    xo_token = "a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6"
    depends_on = [xenorchestra_vm.vm]
}

```
