/*
 * Copyright (c) 2016, ARM Limited and Contributors. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this
 * list of conditions and the following disclaimer.
 *
 * Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * Neither the name of ARM nor the names of its contributors may be used
 * to endorse or promote products derived from this software without specific
 * prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#include <assert.h>
#include <platform_oid.h>
#include <stdint.h>
#include <string.h>
#include "fvp_def.h"

/*
 * Store a new non-volatile counter value. On some FVP versions, the
 * non-volatile counters are RO. On these versions we expect the values in the
 * certificates to always match the RO values so that this function is never
 * called.
 *
 * Return: 0 = success, Otherwise = error
 */
int plat_set_nv_ctr(void *cookie, unsigned int nv_ctr)
{
	const char *oid;
	uint32_t *nv_ctr_addr;

	assert(cookie != NULL);

	oid = (const char *)cookie;
	if (strcmp(oid, TRUSTED_FW_NVCOUNTER_OID) == 0) {
		nv_ctr_addr = (uint32_t *)TFW_NVCTR_BASE;
	} else if (strcmp(oid, NON_TRUSTED_FW_NVCOUNTER_OID) == 0) {
		nv_ctr_addr = (uint32_t *)NTFW_CTR_BASE;
	} else {
		return 1;
	}

	*(unsigned int *)nv_ctr_addr = nv_ctr;

	/* Verify that the current value is the one we just wrote. */
	if (nv_ctr != (unsigned int)(*nv_ctr_addr))
		return 1;

	return 0;
}
