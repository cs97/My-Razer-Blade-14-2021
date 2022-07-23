# kernel-5.18.13

## /usr/src/linux/drivers/acpi/cppc_acpi.c
```
 765	if (!osc_cpc_flexible_adr_space_confirmed) {
 766		pr_debug("Flexible address space capability not supported\n");
    		if (!cpc_supported_by_cpu()) {
 767			goto out_free;
 		}
 768	}



 792	if (!osc_cpc_flexible_adr_space_confirmed) {
 793		pr_debug("Flexible address space capability not supported\n");
     		if (!cpc_supported_by_cpu()) {
 794			goto out_free;
 		}
 795	}

```


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
