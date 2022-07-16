## /usr/src/linux/drivers/acpi/cppc_acpi.c


```
//765
if (!osc_cpc_flexible_adr_space_confirmed) {
	pr_debug("Flexible address space capability not supported\n");
	if (!cpc_supported_by_cpu())
		goto out_free;
}

//793
if (!osc_cpc_flexible_adr_space_confirmed) {
	pr_debug("Flexible address space capability not supported\n");
	if (!cpc_supported_by_cpu())
		goto out_free;
}
```
