
# kernel-5.18.12

## /usr/src/linux/drivers/acpi/cppc_acpi.c

```
//783-786
if (!osc_cpc_flexible_adr_space_confirmed) {
	pr_debug("Flexible address space capability not supported\n");
	if (!cpc_supported_by_cpu())
		goto out_free;
}

//810-813
if (!osc_cpc_flexible_adr_space_confirmed) {
	pr_debug("Flexible address space capability not supported\n");
	if (!cpc_supported_by_cpu())
		goto out_free;
}
```
