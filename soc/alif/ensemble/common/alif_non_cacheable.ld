/*
 * Copyright (C) 2025 Alif Semiconductor.
 * SPDX-License-Identifier: Apache-2.0
 */
#if DT_NODE_HAS_STATUS(DT_NODELABEL(non_cacheable), okay)
GROUP_START(NON_CACHEABLE0)
	SECTION_PROLOGUE(_ALIF_NON_CACHEABLE_SECTION_NAME, (NOLOAD),)
	{
			KEEP(*(.bss.udc_dwc3_event_buff))
			KEEP(*(.bss.udc_dwc3_priv_0))
			KEEP(*(.noinit.*kheap_buf_video_buffer_pool))
			KEEP(*(.bss.net_buf_data_cdc_acm_ep_pool))
			KEEP(*(.bss.net_buf_data_msc_ep_pool))
			KEEP(*(.bss.hid_joystick_report))
			KEEP(*(.bss.net_buf_data_cdc_ncm_ep_pool))
			KEEP(*(.noinit.*kheap_buf_net_buf_mem_pool_udc_ep_pool))
#if !defined(CONFIG_ALIF_NET_PKT_SRAM0)
			KEEP(*net_pkt.c.obj*(.noinit*))
#endif
			KEEP(*resolve.c.obj*(.noinit*))
			KEEP(*dispatcher.c.obj*(.noinit*))
	} GROUP_LINK_IN(NON_CACHEABLE0)

GROUP_END(NON_CACHEABLE0)
#endif /* DT_NODE_HAS_STATUS(DT_NODELABEL(non_cacheable), okay) */
