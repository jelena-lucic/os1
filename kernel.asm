
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	3d813103          	ld	sp,984(sp) # 800073d8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	68c030ef          	jal	ra,800036a8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	41c010ef          	jal	ra,800024a0 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z13thread_createPP3TCBPFvPvES2_>:
#include "../lib/mem.h"

int thread_create(
        thread_t *handle,
        void(*start_routine)(void*),
        void* arg) {
    80001144:	fc010113          	addi	sp,sp,-64
    80001148:	02113c23          	sd	ra,56(sp)
    8000114c:	02813823          	sd	s0,48(sp)
    80001150:	02913423          	sd	s1,40(sp)
    80001154:	03213023          	sd	s2,32(sp)
    80001158:	01313c23          	sd	s3,24(sp)
    8000115c:	04010413          	addi	s0,sp,64
    80001160:	00050993          	mv	s3,a0
    80001164:	00058493          	mv	s1,a1
    80001168:	00060913          	mv	s2,a2

    void* stackSpace;
    if(start_routine == nullptr) stackSpace = nullptr;
    8000116c:	04058e63          	beqz	a1,800011c8 <_Z13thread_createPP3TCBPFvPvES2_+0x84>
    else {
        stackSpace = __mem_alloc(DEFAULT_STACK_SIZE * sizeof (uint64));
    80001170:	00008537          	lui	a0,0x8
    80001174:	00004097          	auipc	ra,0x4
    80001178:	6c4080e7          	jalr	1732(ra) # 80005838 <__mem_alloc>
        if(stackSpace == nullptr) return -1; // alokacija steka nije uspela
    8000117c:	04050a63          	beqz	a0,800011d0 <_Z13thread_createPP3TCBPFvPvES2_+0x8c>
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    return a3;
}

inline void Riscv::w_a4(uint64 a4) {
    __asm__ volatile ("mv a4, %0" : : "r"(a4));
    80001180:	00098713          	mv	a4,s3
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
    80001184:	00048693          	mv	a3,s1
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
    80001188:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    8000118c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001190:	01100793          	li	a5,17
    80001194:	00078513          	mv	a0,a5
    Riscv::w_a3((uint64)start_routine);
    Riscv::w_a2((uint64)arg);
    Riscv::w_a1((uint64)stackSpace);
    Riscv::w_a0(0x11);

    __asm__ volatile ("ecall");
    80001198:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    8000119c:	00050793          	mv	a5,a0
    800011a0:	fcf43423          	sd	a5,-56(s0)
    return a0;
    800011a4:	fc843503          	ld	a0,-56(s0)
    800011a8:	0005051b          	sext.w	a0,a0
}
    800011ac:	03813083          	ld	ra,56(sp)
    800011b0:	03013403          	ld	s0,48(sp)
    800011b4:	02813483          	ld	s1,40(sp)
    800011b8:	02013903          	ld	s2,32(sp)
    800011bc:	01813983          	ld	s3,24(sp)
    800011c0:	04010113          	addi	sp,sp,64
    800011c4:	00008067          	ret
    if(start_routine == nullptr) stackSpace = nullptr;
    800011c8:	00000513          	li	a0,0
    800011cc:	fb5ff06f          	j	80001180 <_Z13thread_createPP3TCBPFvPvES2_+0x3c>
        if(stackSpace == nullptr) return -1; // alokacija steka nije uspela
    800011d0:	fff00513          	li	a0,-1
    800011d4:	fd9ff06f          	j	800011ac <_Z13thread_createPP3TCBPFvPvES2_+0x68>

00000000800011d8 <_Z11thread_exitv>:

int thread_exit() {
    800011d8:	fe010113          	addi	sp,sp,-32
    800011dc:	00813c23          	sd	s0,24(sp)
    800011e0:	02010413          	addi	s0,sp,32
    800011e4:	01200793          	li	a5,18
    800011e8:	00078513          	mv	a0,a5
    Riscv::w_a0(0x12);
    __asm__ volatile("ecall");
    800011ec:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800011f0:	00050793          	mv	a5,a0
    800011f4:	fef43423          	sd	a5,-24(s0)
    return a0;
    800011f8:	fe843503          	ld	a0,-24(s0)
}
    800011fc:	0005051b          	sext.w	a0,a0
    80001200:	01813403          	ld	s0,24(sp)
    80001204:	02010113          	addi	sp,sp,32
    80001208:	00008067          	ret

000000008000120c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000120c:	ff010113          	addi	sp,sp,-16
    80001210:	00813423          	sd	s0,8(sp)
    80001214:	01010413          	addi	s0,sp,16
    80001218:	01300793          	li	a5,19
    8000121c:	00078513          	mv	a0,a5
    Riscv::w_a0(0x13);
    __asm__ volatile ("ecall");
    80001220:	00000073          	ecall
}
    80001224:	00813403          	ld	s0,8(sp)
    80001228:	01010113          	addi	sp,sp,16
    8000122c:	00008067          	ret

0000000080001230 <_Z12thread_startP3TCB>:

int thread_start(thread_t thread) {
    80001230:	fe010113          	addi	sp,sp,-32
    80001234:	00813c23          	sd	s0,24(sp)
    80001238:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    8000123c:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001240:	01400793          	li	a5,20
    80001244:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64)thread);
    Riscv::w_a0(0x14);
    __asm__ volatile ("ecall");
    80001248:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    8000124c:	00050793          	mv	a5,a0
    80001250:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001254:	fe843503          	ld	a0,-24(s0)
}
    80001258:	0005051b          	sext.w	a0,a0
    8000125c:	01813403          	ld	s0,24(sp)
    80001260:	02010113          	addi	sp,sp,32
    80001264:	00008067          	ret

0000000080001268 <_Z8sem_openPP4_semj>:

int sem_open (
        sem_t* handle,
        unsigned init
) {
    80001268:	fe010113          	addi	sp,sp,-32
    8000126c:	00813c23          	sd	s0,24(sp)
    80001270:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
    80001274:	00050613          	mv	a2,a0
    Riscv::w_a2((uint64)handle);
    Riscv::w_a1((uint64)init);
    80001278:	02059593          	slli	a1,a1,0x20
    8000127c:	0205d593          	srli	a1,a1,0x20
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001280:	00058593          	mv	a1,a1
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001284:	02100793          	li	a5,33
    80001288:	00078513          	mv	a0,a5
    Riscv::w_a0(0x21);
    __asm__ volatile ("ecall");
    8000128c:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001290:	00050793          	mv	a5,a0
    80001294:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001298:	fe843503          	ld	a0,-24(s0)
}
    8000129c:	0005051b          	sext.w	a0,a0
    800012a0:	01813403          	ld	s0,24(sp)
    800012a4:	02010113          	addi	sp,sp,32
    800012a8:	00008067          	ret

00000000800012ac <_Z9sem_closeP4_sem>:

int sem_close (sem_t handle) {
    800012ac:	fe010113          	addi	sp,sp,-32
    800012b0:	00813c23          	sd	s0,24(sp)
    800012b4:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    800012b8:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800012bc:	02200793          	li	a5,34
    800012c0:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64)handle);
    Riscv::w_a0(0x22);
    __asm__ volatile ("ecall");
    800012c4:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    800012c8:	00050793          	mv	a5,a0
    800012cc:	fef43423          	sd	a5,-24(s0)
    return a0;
    800012d0:	fe843503          	ld	a0,-24(s0)
}
    800012d4:	0005051b          	sext.w	a0,a0
    800012d8:	01813403          	ld	s0,24(sp)
    800012dc:	02010113          	addi	sp,sp,32
    800012e0:	00008067          	ret

00000000800012e4 <_Z8sem_waitP4_sem>:

int sem_wait (sem_t id) {
    800012e4:	fe010113          	addi	sp,sp,-32
    800012e8:	00813c23          	sd	s0,24(sp)
    800012ec:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    800012f0:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800012f4:	02300793          	li	a5,35
    800012f8:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64)id);
    Riscv::w_a0(0x23);
    __asm__ volatile ("ecall");
    800012fc:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001300:	00050793          	mv	a5,a0
    80001304:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001308:	fe843503          	ld	a0,-24(s0)
}
    8000130c:	0005051b          	sext.w	a0,a0
    80001310:	01813403          	ld	s0,24(sp)
    80001314:	02010113          	addi	sp,sp,32
    80001318:	00008067          	ret

000000008000131c <_Z10sem_signalP4_sem>:

int sem_signal (sem_t id) {
    8000131c:	fe010113          	addi	sp,sp,-32
    80001320:	00813c23          	sd	s0,24(sp)
    80001324:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001328:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    8000132c:	02400793          	li	a5,36
    80001330:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64)id);
    Riscv::w_a0(0x24);
    __asm__ volatile ("ecall");
    80001334:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001338:	00050793          	mv	a5,a0
    8000133c:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001340:	fe843503          	ld	a0,-24(s0)
}
    80001344:	0005051b          	sext.w	a0,a0
    80001348:	01813403          	ld	s0,24(sp)
    8000134c:	02010113          	addi	sp,sp,32
    80001350:	00008067          	ret

0000000080001354 <_Z4getcv>:

char getc () {
    80001354:	fe010113          	addi	sp,sp,-32
    80001358:	00813c23          	sd	s0,24(sp)
    8000135c:	02010413          	addi	s0,sp,32
    80001360:	04100793          	li	a5,65
    80001364:	00078513          	mv	a0,a5
    Riscv::w_a0(0x41);
    __asm__ volatile ("ecall");
    80001368:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    8000136c:	00050793          	mv	a5,a0
    80001370:	fef43423          	sd	a5,-24(s0)
    return (char)a0;
    80001374:	fe843503          	ld	a0,-24(s0)
}
    80001378:	0ff57513          	andi	a0,a0,255
    8000137c:	01813403          	ld	s0,24(sp)
    80001380:	02010113          	addi	sp,sp,32
    80001384:	00008067          	ret

0000000080001388 <_Z4putcc>:

void putc (char c) {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00813423          	sd	s0,8(sp)
    80001390:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001394:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001398:	04200793          	li	a5,66
    8000139c:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64)c);
    Riscv::w_a0(0x42);
    __asm__ volatile ("ecall");
    800013a0:	00000073          	ecall
}
    800013a4:	00813403          	ld	s0,8(sp)
    800013a8:	01010113          	addi	sp,sp,16
    800013ac:	00008067          	ret

00000000800013b0 <_Z17thread_initializePP3TCBPFvPvES2_>:

int thread_initialize(thread_t *handle, void (*start_routine)(void *), void *arg) {
    800013b0:	fc010113          	addi	sp,sp,-64
    800013b4:	02113c23          	sd	ra,56(sp)
    800013b8:	02813823          	sd	s0,48(sp)
    800013bc:	02913423          	sd	s1,40(sp)
    800013c0:	03213023          	sd	s2,32(sp)
    800013c4:	01313c23          	sd	s3,24(sp)
    800013c8:	04010413          	addi	s0,sp,64
    800013cc:	00050993          	mv	s3,a0
    800013d0:	00058493          	mv	s1,a1
    800013d4:	00060913          	mv	s2,a2
    void* stackSpace;
    if(start_routine == nullptr) stackSpace = nullptr;
    800013d8:	04058e63          	beqz	a1,80001434 <_Z17thread_initializePP3TCBPFvPvES2_+0x84>
    else {
        stackSpace = __mem_alloc(DEFAULT_STACK_SIZE * sizeof (uint64));
    800013dc:	00008537          	lui	a0,0x8
    800013e0:	00004097          	auipc	ra,0x4
    800013e4:	458080e7          	jalr	1112(ra) # 80005838 <__mem_alloc>
        if(stackSpace == nullptr) return -1; // alokacija steka nije uspela
    800013e8:	04050a63          	beqz	a0,8000143c <_Z17thread_initializePP3TCBPFvPvES2_+0x8c>
    __asm__ volatile ("mv a4, %0" : : "r"(a4));
    800013ec:	00098713          	mv	a4,s3
    __asm__ volatile ("mv a3, %0" : : "r"(a3));
    800013f0:	00048693          	mv	a3,s1
    __asm__ volatile ("mv a2, %0" : : "r"(a2));
    800013f4:	00090613          	mv	a2,s2
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    800013f8:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    800013fc:	01500793          	li	a5,21
    80001400:	00078513          	mv	a0,a5
    Riscv::w_a3((uint64)start_routine);
    Riscv::w_a2((uint64)arg);
    Riscv::w_a1((uint64)stackSpace);
    Riscv::w_a0(0x15);

    __asm__ volatile ("ecall");
    80001404:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001408:	00050793          	mv	a5,a0
    8000140c:	fcf43423          	sd	a5,-56(s0)
    return a0;
    80001410:	fc843503          	ld	a0,-56(s0)
    80001414:	0005051b          	sext.w	a0,a0
}
    80001418:	03813083          	ld	ra,56(sp)
    8000141c:	03013403          	ld	s0,48(sp)
    80001420:	02813483          	ld	s1,40(sp)
    80001424:	02013903          	ld	s2,32(sp)
    80001428:	01813983          	ld	s3,24(sp)
    8000142c:	04010113          	addi	sp,sp,64
    80001430:	00008067          	ret
    if(start_routine == nullptr) stackSpace = nullptr;
    80001434:	00000513          	li	a0,0
    80001438:	fb5ff06f          	j	800013ec <_Z17thread_initializePP3TCBPFvPvES2_+0x3c>
        if(stackSpace == nullptr) return -1; // alokacija steka nije uspela
    8000143c:	fff00513          	li	a0,-1
    80001440:	fd9ff06f          	j	80001418 <_Z17thread_initializePP3TCBPFvPvES2_+0x68>

0000000080001444 <_Z9mem_allocm>:

void *mem_alloc(size_t size) {
    80001444:	fe010113          	addi	sp,sp,-32
    80001448:	00813c23          	sd	s0,24(sp)
    8000144c:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001450:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001454:	00100793          	li	a5,1
    80001458:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64)size);
    Riscv::w_a0(0x01);
    __asm__ volatile ("ecall");
    8000145c:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001460:	00050793          	mv	a5,a0
    80001464:	fef43423          	sd	a5,-24(s0)
    return (void*)a0;
    80001468:	fe843503          	ld	a0,-24(s0)
}
    8000146c:	01813403          	ld	s0,24(sp)
    80001470:	02010113          	addi	sp,sp,32
    80001474:	00008067          	ret

0000000080001478 <_Z8mem_freePv>:

int mem_free(void * ptr) {
    80001478:	fe010113          	addi	sp,sp,-32
    8000147c:	00813c23          	sd	s0,24(sp)
    80001480:	02010413          	addi	s0,sp,32
    __asm__ volatile ("mv a1, %0" : : "r"(a1));
    80001484:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001488:	00200793          	li	a5,2
    8000148c:	00078513          	mv	a0,a5
    Riscv::w_a1((uint64)ptr);
    Riscv::w_a0(0x02);
    __asm__ volatile ("ecall");
    80001490:	00000073          	ecall

    volatile long a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001494:	00050793          	mv	a5,a0
    80001498:	fef43423          	sd	a5,-24(s0)
    return a0;
    8000149c:	fe843503          	ld	a0,-24(s0)
}
    800014a0:	0005051b          	sext.w	a0,a0
    800014a4:	01813403          	ld	s0,24(sp)
    800014a8:	02010113          	addi	sp,sp,32
    800014ac:	00008067          	ret

00000000800014b0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00113423          	sd	ra,8(sp)
    800014b8:	00813023          	sd	s0,0(sp)
    800014bc:	01010413          	addi	s0,sp,16
    800014c0:	00006797          	auipc	a5,0x6
    800014c4:	e2078793          	addi	a5,a5,-480 # 800072e0 <_ZTV9Semaphore+0x10>
    800014c8:	00f53023          	sd	a5,0(a0) # 8000 <_entry-0x7fff8000>
    sem_close(myHandle);
    800014cc:	00853503          	ld	a0,8(a0)
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	ddc080e7          	jalr	-548(ra) # 800012ac <_Z9sem_closeP4_sem>
}
    800014d8:	00813083          	ld	ra,8(sp)
    800014dc:	00013403          	ld	s0,0(sp)
    800014e0:	01010113          	addi	sp,sp,16
    800014e4:	00008067          	ret

00000000800014e8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800014e8:	fe010113          	addi	sp,sp,-32
    800014ec:	00113c23          	sd	ra,24(sp)
    800014f0:	00813823          	sd	s0,16(sp)
    800014f4:	00913423          	sd	s1,8(sp)
    800014f8:	02010413          	addi	s0,sp,32
    800014fc:	00050493          	mv	s1,a0
}
    80001500:	00000097          	auipc	ra,0x0
    80001504:	fb0080e7          	jalr	-80(ra) # 800014b0 <_ZN9SemaphoreD1Ev>
    80001508:	00048513          	mv	a0,s1
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	f24080e7          	jalr	-220(ra) # 80002430 <_ZdlPv>
    80001514:	01813083          	ld	ra,24(sp)
    80001518:	01013403          	ld	s0,16(sp)
    8000151c:	00813483          	ld	s1,8(sp)
    80001520:	02010113          	addi	sp,sp,32
    80001524:	00008067          	ret

0000000080001528 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001528:	ff010113          	addi	sp,sp,-16
    8000152c:	00113423          	sd	ra,8(sp)
    80001530:	00813023          	sd	s0,0(sp)
    80001534:	01010413          	addi	s0,sp,16
    80001538:	00006797          	auipc	a5,0x6
    8000153c:	da878793          	addi	a5,a5,-600 # 800072e0 <_ZTV9Semaphore+0x10>
    80001540:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001544:	00850513          	addi	a0,a0,8
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	d20080e7          	jalr	-736(ra) # 80001268 <_Z8sem_openPP4_semj>
}
    80001550:	00813083          	ld	ra,8(sp)
    80001554:	00013403          	ld	s0,0(sp)
    80001558:	01010113          	addi	sp,sp,16
    8000155c:	00008067          	ret

0000000080001560 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00113423          	sd	ra,8(sp)
    80001568:	00813023          	sd	s0,0(sp)
    8000156c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001570:	00853503          	ld	a0,8(a0)
    80001574:	00000097          	auipc	ra,0x0
    80001578:	da8080e7          	jalr	-600(ra) # 8000131c <_Z10sem_signalP4_sem>
}
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00113423          	sd	ra,8(sp)
    80001594:	00813023          	sd	s0,0(sp)
    80001598:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000159c:	00853503          	ld	a0,8(a0)
    800015a0:	00000097          	auipc	ra,0x0
    800015a4:	d44080e7          	jalr	-700(ra) # 800012e4 <_Z8sem_waitP4_sem>
}
    800015a8:	00813083          	ld	ra,8(sp)
    800015ac:	00013403          	ld	s0,0(sp)
    800015b0:	01010113          	addi	sp,sp,16
    800015b4:	00008067          	ret

00000000800015b8 <_ZN6Thread7wrapperEPv>:
#include "../h/syscall_cpp.hpp"

void Thread::wrapper(void* thread) {
    if(thread) {
    800015b8:	02050863          	beqz	a0,800015e8 <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void* thread) {
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00113423          	sd	ra,8(sp)
    800015c4:	00813023          	sd	s0,0(sp)
    800015c8:	01010413          	addi	s0,sp,16
        ((Thread*)thread)->run();
    800015cc:	00053783          	ld	a5,0(a0)
    800015d0:	0107b783          	ld	a5,16(a5)
    800015d4:	000780e7          	jalr	a5
    }
}
    800015d8:	00813083          	ld	ra,8(sp)
    800015dc:	00013403          	ld	s0,0(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret
    800015e8:	00008067          	ret

00000000800015ec <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    800015ec:	fe010113          	addi	sp,sp,-32
    800015f0:	00113c23          	sd	ra,24(sp)
    800015f4:	00813823          	sd	s0,16(sp)
    800015f8:	00913423          	sd	s1,8(sp)
    800015fc:	02010413          	addi	s0,sp,32
    80001600:	00006797          	auipc	a5,0x6
    80001604:	d0878793          	addi	a5,a5,-760 # 80007308 <_ZTV6Thread+0x10>
    80001608:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    8000160c:	00853483          	ld	s1,8(a0)
    80001610:	02048063          	beqz	s1,80001630 <_ZN6ThreadD1Ev+0x44>
class TCB
{
public:
    enum State {CREATED, READY, RUNNING, BLOCKED, FINISHED};

    ~TCB() { delete[] stack; }
    80001614:	0184b503          	ld	a0,24(s1)
    80001618:	00050663          	beqz	a0,80001624 <_ZN6ThreadD1Ev+0x38>
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	e3c080e7          	jalr	-452(ra) # 80002458 <_ZdaPv>
    static TCB* initializeThread(Body body, Arg arg, uint64* stack);

    static TCB *running;

    void *operator new(size_t size) { return __mem_alloc(size); }
    void operator delete(void *ptr) { __mem_free(ptr); }
    80001624:	00048513          	mv	a0,s1
    80001628:	00004097          	auipc	ra,0x4
    8000162c:	144080e7          	jalr	324(ra) # 8000576c <__mem_free>
    80001630:	01813083          	ld	ra,24(sp)
    80001634:	01013403          	ld	s0,16(sp)
    80001638:	00813483          	ld	s1,8(sp)
    8000163c:	02010113          	addi	sp,sp,32
    80001640:	00008067          	ret

0000000080001644 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001644:	fe010113          	addi	sp,sp,-32
    80001648:	00113c23          	sd	ra,24(sp)
    8000164c:	00813823          	sd	s0,16(sp)
    80001650:	00913423          	sd	s1,8(sp)
    80001654:	02010413          	addi	s0,sp,32
    80001658:	00050493          	mv	s1,a0
    8000165c:	00000097          	auipc	ra,0x0
    80001660:	f90080e7          	jalr	-112(ra) # 800015ec <_ZN6ThreadD1Ev>
    80001664:	00048513          	mv	a0,s1
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	dc8080e7          	jalr	-568(ra) # 80002430 <_ZdlPv>
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	02010113          	addi	sp,sp,32
    80001680:	00008067          	ret

0000000080001684 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00113423          	sd	ra,8(sp)
    8000168c:	00813023          	sd	s0,0(sp)
    80001690:	01010413          	addi	s0,sp,16
    80001694:	00006797          	auipc	a5,0x6
    80001698:	c7478793          	addi	a5,a5,-908 # 80007308 <_ZTV6Thread+0x10>
    8000169c:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    800016a0:	00850513          	addi	a0,a0,8
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	aa0080e7          	jalr	-1376(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800016ac:	00813083          	ld	ra,8(sp)
    800016b0:	00013403          	ld	s0,0(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800016bc:	ff010113          	addi	sp,sp,-16
    800016c0:	00113423          	sd	ra,8(sp)
    800016c4:	00813023          	sd	s0,0(sp)
    800016c8:	01010413          	addi	s0,sp,16
    800016cc:	00006797          	auipc	a5,0x6
    800016d0:	c3c78793          	addi	a5,a5,-964 # 80007308 <_ZTV6Thread+0x10>
    800016d4:	00f53023          	sd	a5,0(a0)
    thread_initialize(&this->myHandle, Thread::wrapper, this);
    800016d8:	00050613          	mv	a2,a0
    800016dc:	00000597          	auipc	a1,0x0
    800016e0:	edc58593          	addi	a1,a1,-292 # 800015b8 <_ZN6Thread7wrapperEPv>
    800016e4:	00850513          	addi	a0,a0,8
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	cc8080e7          	jalr	-824(ra) # 800013b0 <_Z17thread_initializePP3TCBPFvPvES2_>
}
    800016f0:	00813083          	ld	ra,8(sp)
    800016f4:	00013403          	ld	s0,0(sp)
    800016f8:	01010113          	addi	sp,sp,16
    800016fc:	00008067          	ret

0000000080001700 <_ZN6Thread5startEv>:
int Thread::start() {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00113423          	sd	ra,8(sp)
    80001708:	00813023          	sd	s0,0(sp)
    8000170c:	01010413          	addi	s0,sp,16
    return thread_start(this->myHandle);
    80001710:	00853503          	ld	a0,8(a0)
    80001714:	00000097          	auipc	ra,0x0
    80001718:	b1c080e7          	jalr	-1252(ra) # 80001230 <_Z12thread_startP3TCB>
}
    8000171c:	00813083          	ld	ra,8(sp)
    80001720:	00013403          	ld	s0,0(sp)
    80001724:	01010113          	addi	sp,sp,16
    80001728:	00008067          	ret

000000008000172c <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    8000172c:	ff010113          	addi	sp,sp,-16
    80001730:	00113423          	sd	ra,8(sp)
    80001734:	00813023          	sd	s0,0(sp)
    80001738:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	ad0080e7          	jalr	-1328(ra) # 8000120c <_Z15thread_dispatchv>
}
    80001744:	00813083          	ld	ra,8(sp)
    80001748:	00013403          	ld	s0,0(sp)
    8000174c:	01010113          	addi	sp,sp,16
    80001750:	00008067          	ret

0000000080001754 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001754:	ff010113          	addi	sp,sp,-16
    80001758:	00813423          	sd	s0,8(sp)
    8000175c:	01010413          	addi	s0,sp,16
    80001760:	00813403          	ld	s0,8(sp)
    80001764:	01010113          	addi	sp,sp,16
    80001768:	00008067          	ret

000000008000176c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000176c:	fd010113          	addi	sp,sp,-48
    80001770:	02113423          	sd	ra,40(sp)
    80001774:	02813023          	sd	s0,32(sp)
    80001778:	00913c23          	sd	s1,24(sp)
    8000177c:	01213823          	sd	s2,16(sp)
    80001780:	01313423          	sd	s3,8(sp)
    80001784:	03010413          	addi	s0,sp,48
    80001788:	00050993          	mv	s3,a0
    8000178c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80001790:	00000913          	li	s2,0
    80001794:	00c0006f          	j	800017a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80001798:	00000097          	auipc	ra,0x0
    8000179c:	f94080e7          	jalr	-108(ra) # 8000172c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	bb4080e7          	jalr	-1100(ra) # 80001354 <_Z4getcv>
    800017a8:	0005059b          	sext.w	a1,a0
    800017ac:	01b00793          	li	a5,27
    800017b0:	02f58a63          	beq	a1,a5,800017e4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800017b4:	0084b503          	ld	a0,8(s1)
    800017b8:	00002097          	auipc	ra,0x2
    800017bc:	92c080e7          	jalr	-1748(ra) # 800030e4 <_ZN9BufferCPP3putEi>
        i++;
    800017c0:	0019071b          	addiw	a4,s2,1
    800017c4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800017c8:	0004a683          	lw	a3,0(s1)
    800017cc:	0026979b          	slliw	a5,a3,0x2
    800017d0:	00d787bb          	addw	a5,a5,a3
    800017d4:	0017979b          	slliw	a5,a5,0x1
    800017d8:	02f767bb          	remw	a5,a4,a5
    800017dc:	fc0792e3          	bnez	a5,800017a0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800017e0:	fb9ff06f          	j	80001798 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800017e4:	00100793          	li	a5,1
    800017e8:	00006717          	auipc	a4,0x6
    800017ec:	c4f72c23          	sw	a5,-936(a4) # 80007440 <threadEnd>
    td->buffer->put('!');
    800017f0:	0109b783          	ld	a5,16(s3)
    800017f4:	02100593          	li	a1,33
    800017f8:	0087b503          	ld	a0,8(a5)
    800017fc:	00002097          	auipc	ra,0x2
    80001800:	8e8080e7          	jalr	-1816(ra) # 800030e4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80001804:	0104b503          	ld	a0,16(s1)
    80001808:	00000097          	auipc	ra,0x0
    8000180c:	d58080e7          	jalr	-680(ra) # 80001560 <_ZN9Semaphore6signalEv>
}
    80001810:	02813083          	ld	ra,40(sp)
    80001814:	02013403          	ld	s0,32(sp)
    80001818:	01813483          	ld	s1,24(sp)
    8000181c:	01013903          	ld	s2,16(sp)
    80001820:	00813983          	ld	s3,8(sp)
    80001824:	03010113          	addi	sp,sp,48
    80001828:	00008067          	ret

000000008000182c <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    8000182c:	fe010113          	addi	sp,sp,-32
    80001830:	00113c23          	sd	ra,24(sp)
    80001834:	00813823          	sd	s0,16(sp)
    80001838:	00913423          	sd	s1,8(sp)
    8000183c:	01213023          	sd	s2,0(sp)
    80001840:	02010413          	addi	s0,sp,32
    80001844:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80001848:	00000913          	li	s2,0
    8000184c:	00c0006f          	j	80001858 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80001850:	00000097          	auipc	ra,0x0
    80001854:	edc080e7          	jalr	-292(ra) # 8000172c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80001858:	00006797          	auipc	a5,0x6
    8000185c:	be87a783          	lw	a5,-1048(a5) # 80007440 <threadEnd>
    80001860:	02079e63          	bnez	a5,8000189c <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80001864:	0004a583          	lw	a1,0(s1)
    80001868:	0305859b          	addiw	a1,a1,48
    8000186c:	0084b503          	ld	a0,8(s1)
    80001870:	00002097          	auipc	ra,0x2
    80001874:	874080e7          	jalr	-1932(ra) # 800030e4 <_ZN9BufferCPP3putEi>
        i++;
    80001878:	0019071b          	addiw	a4,s2,1
    8000187c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80001880:	0004a683          	lw	a3,0(s1)
    80001884:	0026979b          	slliw	a5,a3,0x2
    80001888:	00d787bb          	addw	a5,a5,a3
    8000188c:	0017979b          	slliw	a5,a5,0x1
    80001890:	02f767bb          	remw	a5,a4,a5
    80001894:	fc0792e3          	bnez	a5,80001858 <_ZN8Producer8producerEPv+0x2c>
    80001898:	fb9ff06f          	j	80001850 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000189c:	0104b503          	ld	a0,16(s1)
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	cc0080e7          	jalr	-832(ra) # 80001560 <_ZN9Semaphore6signalEv>
}
    800018a8:	01813083          	ld	ra,24(sp)
    800018ac:	01013403          	ld	s0,16(sp)
    800018b0:	00813483          	ld	s1,8(sp)
    800018b4:	00013903          	ld	s2,0(sp)
    800018b8:	02010113          	addi	sp,sp,32
    800018bc:	00008067          	ret

00000000800018c0 <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    800018c0:	fd010113          	addi	sp,sp,-48
    800018c4:	02113423          	sd	ra,40(sp)
    800018c8:	02813023          	sd	s0,32(sp)
    800018cc:	00913c23          	sd	s1,24(sp)
    800018d0:	01213823          	sd	s2,16(sp)
    800018d4:	01313423          	sd	s3,8(sp)
    800018d8:	01413023          	sd	s4,0(sp)
    800018dc:	03010413          	addi	s0,sp,48
    800018e0:	00050993          	mv	s3,a0
    800018e4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800018e8:	00000a13          	li	s4,0
    800018ec:	01c0006f          	j	80001908 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	e3c080e7          	jalr	-452(ra) # 8000172c <_ZN6Thread8dispatchEv>
    800018f8:	0500006f          	j	80001948 <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800018fc:	00a00513          	li	a0,10
    80001900:	00000097          	auipc	ra,0x0
    80001904:	a88080e7          	jalr	-1400(ra) # 80001388 <_Z4putcc>
    while (!threadEnd) {
    80001908:	00006797          	auipc	a5,0x6
    8000190c:	b387a783          	lw	a5,-1224(a5) # 80007440 <threadEnd>
    80001910:	06079263          	bnez	a5,80001974 <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    80001914:	00893503          	ld	a0,8(s2)
    80001918:	00002097          	auipc	ra,0x2
    8000191c:	85c080e7          	jalr	-1956(ra) # 80003174 <_ZN9BufferCPP3getEv>
        i++;
    80001920:	001a049b          	addiw	s1,s4,1
    80001924:	00048a1b          	sext.w	s4,s1
        putc(key);
    80001928:	0ff57513          	andi	a0,a0,255
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	a5c080e7          	jalr	-1444(ra) # 80001388 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80001934:	00092703          	lw	a4,0(s2)
    80001938:	0027179b          	slliw	a5,a4,0x2
    8000193c:	00e787bb          	addw	a5,a5,a4
    80001940:	02f4e7bb          	remw	a5,s1,a5
    80001944:	fa0786e3          	beqz	a5,800018f0 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    80001948:	05000793          	li	a5,80
    8000194c:	02f4e4bb          	remw	s1,s1,a5
    80001950:	fa049ce3          	bnez	s1,80001908 <_ZN8Consumer8consumerEPv+0x48>
    80001954:	fa9ff06f          	j	800018fc <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80001958:	0109b783          	ld	a5,16(s3)
    8000195c:	0087b503          	ld	a0,8(a5)
    80001960:	00002097          	auipc	ra,0x2
    80001964:	814080e7          	jalr	-2028(ra) # 80003174 <_ZN9BufferCPP3getEv>
        putc(key);
    80001968:	0ff57513          	andi	a0,a0,255
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	a1c080e7          	jalr	-1508(ra) # 80001388 <_Z4putcc>
    while (td->buffer->getCnt() > 0) {
    80001974:	0109b783          	ld	a5,16(s3)
    80001978:	0087b503          	ld	a0,8(a5)
    8000197c:	00002097          	auipc	ra,0x2
    80001980:	884080e7          	jalr	-1916(ra) # 80003200 <_ZN9BufferCPP6getCntEv>
    80001984:	fca04ae3          	bgtz	a0,80001958 <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    80001988:	01093503          	ld	a0,16(s2)
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	bd4080e7          	jalr	-1068(ra) # 80001560 <_ZN9Semaphore6signalEv>
}
    80001994:	02813083          	ld	ra,40(sp)
    80001998:	02013403          	ld	s0,32(sp)
    8000199c:	01813483          	ld	s1,24(sp)
    800019a0:	01013903          	ld	s2,16(sp)
    800019a4:	00813983          	ld	s3,8(sp)
    800019a8:	00013a03          	ld	s4,0(sp)
    800019ac:	03010113          	addi	sp,sp,48
    800019b0:	00008067          	ret

00000000800019b4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800019b4:	f8010113          	addi	sp,sp,-128
    800019b8:	06113c23          	sd	ra,120(sp)
    800019bc:	06813823          	sd	s0,112(sp)
    800019c0:	06913423          	sd	s1,104(sp)
    800019c4:	07213023          	sd	s2,96(sp)
    800019c8:	05313c23          	sd	s3,88(sp)
    800019cc:	05413823          	sd	s4,80(sp)
    800019d0:	05513423          	sd	s5,72(sp)
    800019d4:	05613023          	sd	s6,64(sp)
    800019d8:	03713c23          	sd	s7,56(sp)
    800019dc:	03813823          	sd	s8,48(sp)
    800019e0:	03913423          	sd	s9,40(sp)
    800019e4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800019e8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800019ec:	00004517          	auipc	a0,0x4
    800019f0:	61450513          	addi	a0,a0,1556 # 80006000 <kvmincrease+0x550>
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	2f0080e7          	jalr	752(ra) # 80002ce4 <_Z11printStringPKc>
    getString(input, 30);
    800019fc:	01e00593          	li	a1,30
    80001a00:	f8040493          	addi	s1,s0,-128
    80001a04:	00048513          	mv	a0,s1
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	358080e7          	jalr	856(ra) # 80002d60 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80001a10:	00048513          	mv	a0,s1
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	418080e7          	jalr	1048(ra) # 80002e2c <_Z11stringToIntPKc>
    80001a1c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80001a20:	00004517          	auipc	a0,0x4
    80001a24:	60050513          	addi	a0,a0,1536 # 80006020 <kvmincrease+0x570>
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	2bc080e7          	jalr	700(ra) # 80002ce4 <_Z11printStringPKc>
    getString(input, 30);
    80001a30:	01e00593          	li	a1,30
    80001a34:	00048513          	mv	a0,s1
    80001a38:	00001097          	auipc	ra,0x1
    80001a3c:	328080e7          	jalr	808(ra) # 80002d60 <_Z9getStringPci>
    n = stringToInt(input);
    80001a40:	00048513          	mv	a0,s1
    80001a44:	00001097          	auipc	ra,0x1
    80001a48:	3e8080e7          	jalr	1000(ra) # 80002e2c <_Z11stringToIntPKc>
    80001a4c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80001a50:	00004517          	auipc	a0,0x4
    80001a54:	5f050513          	addi	a0,a0,1520 # 80006040 <kvmincrease+0x590>
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	28c080e7          	jalr	652(ra) # 80002ce4 <_Z11printStringPKc>
    80001a60:	00000613          	li	a2,0
    80001a64:	00a00593          	li	a1,10
    80001a68:	00090513          	mv	a0,s2
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	410080e7          	jalr	1040(ra) # 80002e7c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80001a74:	00004517          	auipc	a0,0x4
    80001a78:	5e450513          	addi	a0,a0,1508 # 80006058 <kvmincrease+0x5a8>
    80001a7c:	00001097          	auipc	ra,0x1
    80001a80:	268080e7          	jalr	616(ra) # 80002ce4 <_Z11printStringPKc>
    80001a84:	00000613          	li	a2,0
    80001a88:	00a00593          	li	a1,10
    80001a8c:	00048513          	mv	a0,s1
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	3ec080e7          	jalr	1004(ra) # 80002e7c <_Z8printIntiii>
    printString(".\n");
    80001a98:	00004517          	auipc	a0,0x4
    80001a9c:	5d850513          	addi	a0,a0,1496 # 80006070 <kvmincrease+0x5c0>
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	244080e7          	jalr	580(ra) # 80002ce4 <_Z11printStringPKc>
    if(threadNum > n) {
    80001aa8:	0324c463          	blt	s1,s2,80001ad0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80001aac:	03205c63          	blez	s2,80001ae4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80001ab0:	03800513          	li	a0,56
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	92c080e7          	jalr	-1748(ra) # 800023e0 <_Znwm>
    80001abc:	00050a93          	mv	s5,a0
    80001ac0:	00048593          	mv	a1,s1
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	4cc080e7          	jalr	1228(ra) # 80002f90 <_ZN9BufferCPPC1Ei>
    80001acc:	0300006f          	j	80001afc <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80001ad0:	00004517          	auipc	a0,0x4
    80001ad4:	5a850513          	addi	a0,a0,1448 # 80006078 <kvmincrease+0x5c8>
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	20c080e7          	jalr	524(ra) # 80002ce4 <_Z11printStringPKc>
        return;
    80001ae0:	0140006f          	j	80001af4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80001ae4:	00004517          	auipc	a0,0x4
    80001ae8:	5d450513          	addi	a0,a0,1492 # 800060b8 <kvmincrease+0x608>
    80001aec:	00001097          	auipc	ra,0x1
    80001af0:	1f8080e7          	jalr	504(ra) # 80002ce4 <_Z11printStringPKc>
        return;
    80001af4:	000b8113          	mv	sp,s7
    80001af8:	2400006f          	j	80001d38 <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    80001afc:	01000513          	li	a0,16
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	8e0080e7          	jalr	-1824(ra) # 800023e0 <_Znwm>
    80001b08:	00050493          	mv	s1,a0
    80001b0c:	00000593          	li	a1,0
    80001b10:	00000097          	auipc	ra,0x0
    80001b14:	a18080e7          	jalr	-1512(ra) # 80001528 <_ZN9SemaphoreC1Ej>
    80001b18:	00006717          	auipc	a4,0x6
    80001b1c:	92870713          	addi	a4,a4,-1752 # 80007440 <threadEnd>
    80001b20:	00973423          	sd	s1,8(a4)
    Thread* threads[threadNum];
    80001b24:	00391793          	slli	a5,s2,0x3
    80001b28:	00f78793          	addi	a5,a5,15
    80001b2c:	ff07f793          	andi	a5,a5,-16
    80001b30:	40f10133          	sub	sp,sp,a5
    80001b34:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80001b38:	0019069b          	addiw	a3,s2,1
    80001b3c:	00169793          	slli	a5,a3,0x1
    80001b40:	00d787b3          	add	a5,a5,a3
    80001b44:	00379793          	slli	a5,a5,0x3
    80001b48:	00f78793          	addi	a5,a5,15
    80001b4c:	ff07f793          	andi	a5,a5,-16
    80001b50:	40f10133          	sub	sp,sp,a5
    80001b54:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80001b58:	00191493          	slli	s1,s2,0x1
    80001b5c:	012487b3          	add	a5,s1,s2
    80001b60:	00379793          	slli	a5,a5,0x3
    80001b64:	00fa07b3          	add	a5,s4,a5
    80001b68:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80001b6c:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80001b70:	00873703          	ld	a4,8(a4)
    80001b74:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80001b78:	01800513          	li	a0,24
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	864080e7          	jalr	-1948(ra) # 800023e0 <_Znwm>
    80001b84:	00050b13          	mv	s6,a0
    80001b88:	012484b3          	add	s1,s1,s2
    80001b8c:	00349493          	slli	s1,s1,0x3
    80001b90:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80001b94:	00000097          	auipc	ra,0x0
    80001b98:	b28080e7          	jalr	-1240(ra) # 800016bc <_ZN6ThreadC1Ev>
    80001b9c:	00005797          	auipc	a5,0x5
    80001ba0:	7e478793          	addi	a5,a5,2020 # 80007380 <_ZTV8Consumer+0x10>
    80001ba4:	00fb3023          	sd	a5,0(s6)
    80001ba8:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80001bac:	000b0513          	mv	a0,s6
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	b50080e7          	jalr	-1200(ra) # 80001700 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80001bb8:	00000493          	li	s1,0
    80001bbc:	0380006f          	j	80001bf4 <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80001bc0:	00005797          	auipc	a5,0x5
    80001bc4:	79878793          	addi	a5,a5,1944 # 80007358 <_ZTV8Producer+0x10>
    80001bc8:	00fcb023          	sd	a5,0(s9)
    80001bcc:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80001bd0:	00349793          	slli	a5,s1,0x3
    80001bd4:	00f987b3          	add	a5,s3,a5
    80001bd8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80001bdc:	00349793          	slli	a5,s1,0x3
    80001be0:	00f987b3          	add	a5,s3,a5
    80001be4:	0007b503          	ld	a0,0(a5)
    80001be8:	00000097          	auipc	ra,0x0
    80001bec:	b18080e7          	jalr	-1256(ra) # 80001700 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80001bf0:	0014849b          	addiw	s1,s1,1
    80001bf4:	0b24d063          	bge	s1,s2,80001c94 <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    80001bf8:	00149793          	slli	a5,s1,0x1
    80001bfc:	009787b3          	add	a5,a5,s1
    80001c00:	00379793          	slli	a5,a5,0x3
    80001c04:	00fa07b3          	add	a5,s4,a5
    80001c08:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80001c0c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80001c10:	00006717          	auipc	a4,0x6
    80001c14:	83873703          	ld	a4,-1992(a4) # 80007448 <waitForAll>
    80001c18:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80001c1c:	02905863          	blez	s1,80001c4c <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    80001c20:	01800513          	li	a0,24
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	7bc080e7          	jalr	1980(ra) # 800023e0 <_Znwm>
    80001c2c:	00050c93          	mv	s9,a0
    80001c30:	00149c13          	slli	s8,s1,0x1
    80001c34:	009c0c33          	add	s8,s8,s1
    80001c38:	003c1c13          	slli	s8,s8,0x3
    80001c3c:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    80001c40:	00000097          	auipc	ra,0x0
    80001c44:	a7c080e7          	jalr	-1412(ra) # 800016bc <_ZN6ThreadC1Ev>
    80001c48:	f79ff06f          	j	80001bc0 <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    80001c4c:	01800513          	li	a0,24
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	790080e7          	jalr	1936(ra) # 800023e0 <_Znwm>
    80001c58:	00050c93          	mv	s9,a0
    80001c5c:	00149c13          	slli	s8,s1,0x1
    80001c60:	009c0c33          	add	s8,s8,s1
    80001c64:	003c1c13          	slli	s8,s8,0x3
    80001c68:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80001c6c:	00000097          	auipc	ra,0x0
    80001c70:	a50080e7          	jalr	-1456(ra) # 800016bc <_ZN6ThreadC1Ev>
    80001c74:	00005797          	auipc	a5,0x5
    80001c78:	6bc78793          	addi	a5,a5,1724 # 80007330 <_ZTV16ProducerKeyboard+0x10>
    80001c7c:	00fcb023          	sd	a5,0(s9)
    80001c80:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80001c84:	00349793          	slli	a5,s1,0x3
    80001c88:	00f987b3          	add	a5,s3,a5
    80001c8c:	0197b023          	sd	s9,0(a5)
    80001c90:	f4dff06f          	j	80001bdc <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    80001c94:	00000097          	auipc	ra,0x0
    80001c98:	a98080e7          	jalr	-1384(ra) # 8000172c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80001c9c:	00000493          	li	s1,0
    80001ca0:	00994e63          	blt	s2,s1,80001cbc <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    80001ca4:	00005517          	auipc	a0,0x5
    80001ca8:	7a453503          	ld	a0,1956(a0) # 80007448 <waitForAll>
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	8e0080e7          	jalr	-1824(ra) # 8000158c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80001cb4:	0014849b          	addiw	s1,s1,1
    80001cb8:	fe9ff06f          	j	80001ca0 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    80001cbc:	00000493          	li	s1,0
    80001cc0:	0080006f          	j	80001cc8 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    80001cc4:	0014849b          	addiw	s1,s1,1
    80001cc8:	0324d263          	bge	s1,s2,80001cec <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    80001ccc:	00349793          	slli	a5,s1,0x3
    80001cd0:	00f987b3          	add	a5,s3,a5
    80001cd4:	0007b503          	ld	a0,0(a5)
    80001cd8:	fe0506e3          	beqz	a0,80001cc4 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    80001cdc:	00053783          	ld	a5,0(a0)
    80001ce0:	0087b783          	ld	a5,8(a5)
    80001ce4:	000780e7          	jalr	a5
    80001ce8:	fddff06f          	j	80001cc4 <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    80001cec:	000b0a63          	beqz	s6,80001d00 <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    80001cf0:	000b3783          	ld	a5,0(s6)
    80001cf4:	0087b783          	ld	a5,8(a5)
    80001cf8:	000b0513          	mv	a0,s6
    80001cfc:	000780e7          	jalr	a5
    delete waitForAll;
    80001d00:	00005517          	auipc	a0,0x5
    80001d04:	74853503          	ld	a0,1864(a0) # 80007448 <waitForAll>
    80001d08:	00050863          	beqz	a0,80001d18 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80001d0c:	00053783          	ld	a5,0(a0)
    80001d10:	0087b783          	ld	a5,8(a5)
    80001d14:	000780e7          	jalr	a5
    delete buffer;
    80001d18:	000a8e63          	beqz	s5,80001d34 <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    80001d1c:	000a8513          	mv	a0,s5
    80001d20:	00001097          	auipc	ra,0x1
    80001d24:	568080e7          	jalr	1384(ra) # 80003288 <_ZN9BufferCPPD1Ev>
    80001d28:	000a8513          	mv	a0,s5
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	704080e7          	jalr	1796(ra) # 80002430 <_ZdlPv>
    80001d34:	000b8113          	mv	sp,s7

}
    80001d38:	f8040113          	addi	sp,s0,-128
    80001d3c:	07813083          	ld	ra,120(sp)
    80001d40:	07013403          	ld	s0,112(sp)
    80001d44:	06813483          	ld	s1,104(sp)
    80001d48:	06013903          	ld	s2,96(sp)
    80001d4c:	05813983          	ld	s3,88(sp)
    80001d50:	05013a03          	ld	s4,80(sp)
    80001d54:	04813a83          	ld	s5,72(sp)
    80001d58:	04013b03          	ld	s6,64(sp)
    80001d5c:	03813b83          	ld	s7,56(sp)
    80001d60:	03013c03          	ld	s8,48(sp)
    80001d64:	02813c83          	ld	s9,40(sp)
    80001d68:	08010113          	addi	sp,sp,128
    80001d6c:	00008067          	ret
    80001d70:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80001d74:	000a8513          	mv	a0,s5
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	6b8080e7          	jalr	1720(ra) # 80002430 <_ZdlPv>
    80001d80:	00048513          	mv	a0,s1
    80001d84:	00006097          	auipc	ra,0x6
    80001d88:	7d4080e7          	jalr	2004(ra) # 80008558 <_Unwind_Resume>
    80001d8c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80001d90:	00048513          	mv	a0,s1
    80001d94:	00000097          	auipc	ra,0x0
    80001d98:	69c080e7          	jalr	1692(ra) # 80002430 <_ZdlPv>
    80001d9c:	00090513          	mv	a0,s2
    80001da0:	00006097          	auipc	ra,0x6
    80001da4:	7b8080e7          	jalr	1976(ra) # 80008558 <_Unwind_Resume>
    80001da8:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80001dac:	000b0513          	mv	a0,s6
    80001db0:	00000097          	auipc	ra,0x0
    80001db4:	680080e7          	jalr	1664(ra) # 80002430 <_ZdlPv>
    80001db8:	00048513          	mv	a0,s1
    80001dbc:	00006097          	auipc	ra,0x6
    80001dc0:	79c080e7          	jalr	1948(ra) # 80008558 <_Unwind_Resume>
    80001dc4:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80001dc8:	000c8513          	mv	a0,s9
    80001dcc:	00000097          	auipc	ra,0x0
    80001dd0:	664080e7          	jalr	1636(ra) # 80002430 <_ZdlPv>
    80001dd4:	00048513          	mv	a0,s1
    80001dd8:	00006097          	auipc	ra,0x6
    80001ddc:	780080e7          	jalr	1920(ra) # 80008558 <_Unwind_Resume>
    80001de0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80001de4:	000c8513          	mv	a0,s9
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	648080e7          	jalr	1608(ra) # 80002430 <_ZdlPv>
    80001df0:	00048513          	mv	a0,s1
    80001df4:	00006097          	auipc	ra,0x6
    80001df8:	764080e7          	jalr	1892(ra) # 80008558 <_Unwind_Resume>

0000000080001dfc <_Z8userMainPv>:
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain(void* arg) {
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00113423          	sd	ra,8(sp)
    80001e04:	00813023          	sd	s0,0(sp)
    80001e08:	01010413          	addi	s0,sp,16
    printString("usao u userMain\n");
    80001e0c:	00004517          	auipc	a0,0x4
    80001e10:	2dc50513          	addi	a0,a0,732 # 800060e8 <kvmincrease+0x638>
    80001e14:	00001097          	auipc	ra,0x1
    80001e18:	ed0080e7          	jalr	-304(ra) # 80002ce4 <_Z11printStringPKc>
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    //Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	b98080e7          	jalr	-1128(ra) # 800019b4 <_Z29producerConsumer_CPP_Sync_APIv>

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    printString("zavrsio userMain\n");
    80001e24:	00004517          	auipc	a0,0x4
    80001e28:	2dc50513          	addi	a0,a0,732 # 80006100 <kvmincrease+0x650>
    80001e2c:	00001097          	auipc	ra,0x1
    80001e30:	eb8080e7          	jalr	-328(ra) # 80002ce4 <_Z11printStringPKc>
    80001e34:	00813083          	ld	ra,8(sp)
    80001e38:	00013403          	ld	s0,0(sp)
    80001e3c:	01010113          	addi	sp,sp,16
    80001e40:	00008067          	ret

0000000080001e44 <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00113423          	sd	ra,8(sp)
    80001e4c:	00813023          	sd	s0,0(sp)
    80001e50:	01010413          	addi	s0,sp,16
    80001e54:	00005797          	auipc	a5,0x5
    80001e58:	52c78793          	addi	a5,a5,1324 # 80007380 <_ZTV8Consumer+0x10>
    80001e5c:	00f53023          	sd	a5,0(a0)
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	78c080e7          	jalr	1932(ra) # 800015ec <_ZN6ThreadD1Ev>
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZN8ConsumerD0Ev>:
    80001e78:	fe010113          	addi	sp,sp,-32
    80001e7c:	00113c23          	sd	ra,24(sp)
    80001e80:	00813823          	sd	s0,16(sp)
    80001e84:	00913423          	sd	s1,8(sp)
    80001e88:	02010413          	addi	s0,sp,32
    80001e8c:	00050493          	mv	s1,a0
    80001e90:	00005797          	auipc	a5,0x5
    80001e94:	4f078793          	addi	a5,a5,1264 # 80007380 <_ZTV8Consumer+0x10>
    80001e98:	00f53023          	sd	a5,0(a0)
    80001e9c:	fffff097          	auipc	ra,0xfffff
    80001ea0:	750080e7          	jalr	1872(ra) # 800015ec <_ZN6ThreadD1Ev>
    80001ea4:	00048513          	mv	a0,s1
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	588080e7          	jalr	1416(ra) # 80002430 <_ZdlPv>
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00813483          	ld	s1,8(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret

0000000080001ec4 <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00113423          	sd	ra,8(sp)
    80001ecc:	00813023          	sd	s0,0(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    80001ed4:	00005797          	auipc	a5,0x5
    80001ed8:	48478793          	addi	a5,a5,1156 # 80007358 <_ZTV8Producer+0x10>
    80001edc:	00f53023          	sd	a5,0(a0)
    80001ee0:	fffff097          	auipc	ra,0xfffff
    80001ee4:	70c080e7          	jalr	1804(ra) # 800015ec <_ZN6ThreadD1Ev>
    80001ee8:	00813083          	ld	ra,8(sp)
    80001eec:	00013403          	ld	s0,0(sp)
    80001ef0:	01010113          	addi	sp,sp,16
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN8ProducerD0Ev>:
    80001ef8:	fe010113          	addi	sp,sp,-32
    80001efc:	00113c23          	sd	ra,24(sp)
    80001f00:	00813823          	sd	s0,16(sp)
    80001f04:	00913423          	sd	s1,8(sp)
    80001f08:	02010413          	addi	s0,sp,32
    80001f0c:	00050493          	mv	s1,a0
    80001f10:	00005797          	auipc	a5,0x5
    80001f14:	44878793          	addi	a5,a5,1096 # 80007358 <_ZTV8Producer+0x10>
    80001f18:	00f53023          	sd	a5,0(a0)
    80001f1c:	fffff097          	auipc	ra,0xfffff
    80001f20:	6d0080e7          	jalr	1744(ra) # 800015ec <_ZN6ThreadD1Ev>
    80001f24:	00048513          	mv	a0,s1
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	508080e7          	jalr	1288(ra) # 80002430 <_ZdlPv>
    80001f30:	01813083          	ld	ra,24(sp)
    80001f34:	01013403          	ld	s0,16(sp)
    80001f38:	00813483          	ld	s1,8(sp)
    80001f3c:	02010113          	addi	sp,sp,32
    80001f40:	00008067          	ret

0000000080001f44 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    80001f54:	00005797          	auipc	a5,0x5
    80001f58:	3dc78793          	addi	a5,a5,988 # 80007330 <_ZTV16ProducerKeyboard+0x10>
    80001f5c:	00f53023          	sd	a5,0(a0)
    80001f60:	fffff097          	auipc	ra,0xfffff
    80001f64:	68c080e7          	jalr	1676(ra) # 800015ec <_ZN6ThreadD1Ev>
    80001f68:	00813083          	ld	ra,8(sp)
    80001f6c:	00013403          	ld	s0,0(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <_ZN16ProducerKeyboardD0Ev>:
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00113c23          	sd	ra,24(sp)
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	02010413          	addi	s0,sp,32
    80001f8c:	00050493          	mv	s1,a0
    80001f90:	00005797          	auipc	a5,0x5
    80001f94:	3a078793          	addi	a5,a5,928 # 80007330 <_ZTV16ProducerKeyboard+0x10>
    80001f98:	00f53023          	sd	a5,0(a0)
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	650080e7          	jalr	1616(ra) # 800015ec <_ZN6ThreadD1Ev>
    80001fa4:	00048513          	mv	a0,s1
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	488080e7          	jalr	1160(ra) # 80002430 <_ZdlPv>
    80001fb0:	01813083          	ld	ra,24(sp)
    80001fb4:	01013403          	ld	s0,16(sp)
    80001fb8:	00813483          	ld	s1,8(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00113423          	sd	ra,8(sp)
    80001fcc:	00813023          	sd	s0,0(sp)
    80001fd0:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80001fd4:	01053583          	ld	a1,16(a0)
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	794080e7          	jalr	1940(ra) # 8000176c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80001fe0:	00813083          	ld	ra,8(sp)
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_ZN8Producer3runEv>:
    void run() override {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
        producer(td);
    80002000:	01053583          	ld	a1,16(a0)
    80002004:	00000097          	auipc	ra,0x0
    80002008:	828080e7          	jalr	-2008(ra) # 8000182c <_ZN8Producer8producerEPv>
    }
    8000200c:	00813083          	ld	ra,8(sp)
    80002010:	00013403          	ld	s0,0(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <_ZN8Consumer3runEv>:
    void run() override {
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00113423          	sd	ra,8(sp)
    80002024:	00813023          	sd	s0,0(sp)
    80002028:	01010413          	addi	s0,sp,16
        consumer(td);
    8000202c:	01053583          	ld	a1,16(a0)
    80002030:	00000097          	auipc	ra,0x0
    80002034:	890080e7          	jalr	-1904(ra) # 800018c0 <_ZN8Consumer8consumerEPv>
    }
    80002038:	00813083          	ld	ra,8(sp)
    8000203c:	00013403          	ld	s0,0(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <main>:
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

extern void userMain(void* arg);

int main() {
    80002048:	fd010113          	addi	sp,sp,-48
    8000204c:	02113423          	sd	ra,40(sp)
    80002050:	02813023          	sd	s0,32(sp)
    80002054:	00913c23          	sd	s1,24(sp)
    80002058:	03010413          	addi	s0,sp,48

    TCB::running = TCB::createThread(nullptr, nullptr, nullptr);
    8000205c:	00000613          	li	a2,0
    80002060:	00000593          	li	a1,0
    80002064:	00000513          	li	a0,0
    80002068:	00000097          	auipc	ra,0x0
    8000206c:	338080e7          	jalr	824(ra) # 800023a0 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80002070:	00005797          	auipc	a5,0x5
    80002074:	3787b783          	ld	a5,888(a5) # 800073e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002078:	00a7b023          	sd	a0,0(a5)
    TCB::running->start();
    8000207c:	00000097          	auipc	ra,0x0
    80002080:	21c080e7          	jalr	540(ra) # 80002298 <_ZN3TCB5startEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80002084:	00005797          	auipc	a5,0x5
    80002088:	34c7b783          	ld	a5,844(a5) # 800073d0 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    8000208c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002090:	00200793          	li	a5,2
    80002094:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    printString("MAIN START\n");
    80002098:	00004517          	auipc	a0,0x4
    8000209c:	08050513          	addi	a0,a0,128 # 80006118 <kvmincrease+0x668>
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	c44080e7          	jalr	-956(ra) # 80002ce4 <_Z11printStringPKc>

    thread_t user;
    thread_create(&user, userMain, nullptr);
    800020a8:	00000613          	li	a2,0
    800020ac:	00005597          	auipc	a1,0x5
    800020b0:	3345b583          	ld	a1,820(a1) # 800073e0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800020b4:	fd840513          	addi	a0,s0,-40
    800020b8:	fffff097          	auipc	ra,0xfffff
    800020bc:	08c080e7          	jalr	140(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_start(user);
    800020c0:	fd843503          	ld	a0,-40(s0)
    800020c4:	fffff097          	auipc	ra,0xfffff
    800020c8:	16c080e7          	jalr	364(ra) # 80001230 <_Z12thread_startP3TCB>

    while(!user->isFinished()) {
    800020cc:	fd843483          	ld	s1,-40(s0)
    bool isFinished() const { return this->state == FINISHED; }
    800020d0:	0384a703          	lw	a4,56(s1)
    800020d4:	00400793          	li	a5,4
    800020d8:	00f70863          	beq	a4,a5,800020e8 <main+0xa0>
        thread_dispatch();
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	130080e7          	jalr	304(ra) # 8000120c <_Z15thread_dispatchv>
    800020e4:	fe9ff06f          	j	800020cc <main+0x84>
    } // join user main

    delete user;
    800020e8:	02048063          	beqz	s1,80002108 <main+0xc0>
    ~TCB() { delete[] stack; }
    800020ec:	0184b503          	ld	a0,24(s1)
    800020f0:	00050663          	beqz	a0,800020fc <main+0xb4>
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	364080e7          	jalr	868(ra) # 80002458 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    800020fc:	00048513          	mv	a0,s1
    80002100:	00003097          	auipc	ra,0x3
    80002104:	66c080e7          	jalr	1644(ra) # 8000576c <__mem_free>

    printString("Finished\n");
    80002108:	00004517          	auipc	a0,0x4
    8000210c:	02050513          	addi	a0,a0,32 # 80006128 <kvmincrease+0x678>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	bd4080e7          	jalr	-1068(ra) # 80002ce4 <_Z11printStringPKc>

    delete TCB::running;
    80002118:	00005797          	auipc	a5,0x5
    8000211c:	2d07b783          	ld	a5,720(a5) # 800073e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002120:	0007b483          	ld	s1,0(a5)
    80002124:	02048063          	beqz	s1,80002144 <main+0xfc>
    ~TCB() { delete[] stack; }
    80002128:	0184b503          	ld	a0,24(s1)
    8000212c:	00050663          	beqz	a0,80002138 <main+0xf0>
    80002130:	00000097          	auipc	ra,0x0
    80002134:	328080e7          	jalr	808(ra) # 80002458 <_ZdaPv>
    void operator delete(void *ptr) { __mem_free(ptr); }
    80002138:	00048513          	mv	a0,s1
    8000213c:	00003097          	auipc	ra,0x3
    80002140:	630080e7          	jalr	1584(ra) # 8000576c <__mem_free>

    return 0;
}
    80002144:	00000513          	li	a0,0
    80002148:	02813083          	ld	ra,40(sp)
    8000214c:	02013403          	ld	s0,32(sp)
    80002150:	01813483          	ld	s1,24(sp)
    80002154:	03010113          	addi	sp,sp,48
    80002158:	00008067          	ret

000000008000215c <_ZN3TCB13threadWrapperEv>:
    }

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	314080e7          	jalr	788(ra) # 80002480 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002174:	00005797          	auipc	a5,0x5
    80002178:	2dc7b783          	ld	a5,732(a5) # 80007450 <_ZN3TCB7runningE>
    8000217c:	0087b703          	ld	a4,8(a5)
    80002180:	0107b503          	ld	a0,16(a5)
    80002184:	000700e7          	jalr	a4
    thread_exit();
    80002188:	fffff097          	auipc	ra,0xfffff
    8000218c:	050080e7          	jalr	80(ra) # 800011d8 <_Z11thread_exitv>
}
    80002190:	00813083          	ld	ra,8(sp)
    80002194:	00013403          	ld	s0,0(sp)
    80002198:	01010113          	addi	sp,sp,16
    8000219c:	00008067          	ret

00000000800021a0 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800021a0:	fe010113          	addi	sp,sp,-32
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	00813823          	sd	s0,16(sp)
    800021ac:	00913423          	sd	s1,8(sp)
    800021b0:	02010413          	addi	s0,sp,32
    TCB::timeSliceCounter = 0;
    800021b4:	00005797          	auipc	a5,0x5
    800021b8:	29c78793          	addi	a5,a5,668 # 80007450 <_ZN3TCB7runningE>
    800021bc:	0007b423          	sd	zero,8(a5)
    TCB *old = running;
    800021c0:	0007b483          	ld	s1,0(a5)
    bool isFinished() const { return this->state == FINISHED; }
    800021c4:	0384a783          	lw	a5,56(s1)
    if (!old->isFinished() && old->state != BLOCKED) {
    800021c8:	00400713          	li	a4,4
    800021cc:	00e78663          	beq	a5,a4,800021d8 <_ZN3TCB8dispatchEv+0x38>
    800021d0:	00300713          	li	a4,3
    800021d4:	04e79863          	bne	a5,a4,80002224 <_ZN3TCB8dispatchEv+0x84>
    running = Scheduler::get();
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	880080e7          	jalr	-1920(ra) # 80002a58 <_ZN9Scheduler3getEv>
    800021e0:	00005797          	auipc	a5,0x5
    800021e4:	26a7b823          	sd	a0,624(a5) # 80007450 <_ZN3TCB7runningE>
    running->state = RUNNING;
    800021e8:	00200793          	li	a5,2
    800021ec:	02f52c23          	sw	a5,56(a0)
    if (TCB::running->id == 0) {
    800021f0:	00053783          	ld	a5,0(a0)
    800021f4:	04079463          	bnez	a5,8000223c <_ZN3TCB8dispatchEv+0x9c>
    800021f8:	10000793          	li	a5,256
    800021fc:	1007a073          	csrs	sstatus,a5
    TCB::contextSwitch(&old->context, &running->context);
    80002200:	02050593          	addi	a1,a0,32
    80002204:	02048513          	addi	a0,s1,32
    80002208:	fffff097          	auipc	ra,0xfffff
    8000220c:	f08080e7          	jalr	-248(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002210:	01813083          	ld	ra,24(sp)
    80002214:	01013403          	ld	s0,16(sp)
    80002218:	00813483          	ld	s1,8(sp)
    8000221c:	02010113          	addi	sp,sp,32
    80002220:	00008067          	ret
        old->state = READY;
    80002224:	00100793          	li	a5,1
    80002228:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    8000222c:	00048513          	mv	a0,s1
    80002230:	00001097          	auipc	ra,0x1
    80002234:	890080e7          	jalr	-1904(ra) # 80002ac0 <_ZN9Scheduler3putEP3TCB>
    80002238:	fa1ff06f          	j	800021d8 <_ZN3TCB8dispatchEv+0x38>
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000223c:	10000793          	li	a5,256
    80002240:	1007b073          	csrc	sstatus,a5
}
    80002244:	fbdff06f          	j	80002200 <_ZN3TCB8dispatchEv+0x60>

0000000080002248 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(running->state == RUNNING){
    80002248:	00005797          	auipc	a5,0x5
    8000224c:	2087b783          	ld	a5,520(a5) # 80007450 <_ZN3TCB7runningE>
    80002250:	0387a683          	lw	a3,56(a5)
    80002254:	00200713          	li	a4,2
    80002258:	02e69c63          	bne	a3,a4,80002290 <_ZN3TCB4exitEv+0x48>
int TCB::exit() {
    8000225c:	ff010113          	addi	sp,sp,-16
    80002260:	00113423          	sd	ra,8(sp)
    80002264:	00813023          	sd	s0,0(sp)
    80002268:	01010413          	addi	s0,sp,16
        running->state = FINISHED;
    8000226c:	00400713          	li	a4,4
    80002270:	02e7ac23          	sw	a4,56(a5)
        dispatch();
    80002274:	00000097          	auipc	ra,0x0
    80002278:	f2c080e7          	jalr	-212(ra) # 800021a0 <_ZN3TCB8dispatchEv>
        return 0;
    8000227c:	00000513          	li	a0,0
    }
    return -1;
}
    80002280:	00813083          	ld	ra,8(sp)
    80002284:	00013403          	ld	s0,0(sp)
    80002288:	01010113          	addi	sp,sp,16
    8000228c:	00008067          	ret
    return -1;
    80002290:	fff00513          	li	a0,-1
}
    80002294:	00008067          	ret

0000000080002298 <_ZN3TCB5startEv>:

int TCB::start() {
    if(this->state != CREATED) return -1;
    80002298:	03852783          	lw	a5,56(a0)
    8000229c:	04079463          	bnez	a5,800022e4 <_ZN3TCB5startEv+0x4c>
    this->state = READY;
    800022a0:	00100793          	li	a5,1
    800022a4:	02f52c23          	sw	a5,56(a0)
    if (this->id != 0) { Scheduler::put(this); }
    800022a8:	00053783          	ld	a5,0(a0)
    800022ac:	00079663          	bnez	a5,800022b8 <_ZN3TCB5startEv+0x20>
    return 0;
    800022b0:	00000513          	li	a0,0
}
    800022b4:	00008067          	ret
int TCB::start() {
    800022b8:	ff010113          	addi	sp,sp,-16
    800022bc:	00113423          	sd	ra,8(sp)
    800022c0:	00813023          	sd	s0,0(sp)
    800022c4:	01010413          	addi	s0,sp,16
    if (this->id != 0) { Scheduler::put(this); }
    800022c8:	00000097          	auipc	ra,0x0
    800022cc:	7f8080e7          	jalr	2040(ra) # 80002ac0 <_ZN9Scheduler3putEP3TCB>
    return 0;
    800022d0:	00000513          	li	a0,0
}
    800022d4:	00813083          	ld	ra,8(sp)
    800022d8:	00013403          	ld	s0,0(sp)
    800022dc:	01010113          	addi	sp,sp,16
    800022e0:	00008067          	ret
    if(this->state != CREATED) return -1;
    800022e4:	fff00513          	li	a0,-1
    800022e8:	00008067          	ret

00000000800022ec <_ZN3TCB16initializeThreadEPFvPvES0_Pm>:

TCB *TCB::initializeThread(TCB::Body body, TCB::Arg arg, uint64 *stack) {
    800022ec:	fd010113          	addi	sp,sp,-48
    800022f0:	02113423          	sd	ra,40(sp)
    800022f4:	02813023          	sd	s0,32(sp)
    800022f8:	00913c23          	sd	s1,24(sp)
    800022fc:	01213823          	sd	s2,16(sp)
    80002300:	01313423          	sd	s3,8(sp)
    80002304:	03010413          	addi	s0,sp,48
    80002308:	00050913          	mv	s2,a0
    8000230c:	00058993          	mv	s3,a1
    80002310:	00060493          	mv	s1,a2
    void *operator new(size_t size) { return __mem_alloc(size); }
    80002314:	04000513          	li	a0,64
    80002318:	00003097          	auipc	ra,0x3
    8000231c:	520080e7          	jalr	1312(ra) # 80005838 <__mem_alloc>
            arg(arg),
            stack(body != nullptr ? stack : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice)
    80002320:	01253423          	sd	s2,8(a0)
    80002324:	01353823          	sd	s3,16(a0)
            stack(body != nullptr ? stack : nullptr),
    80002328:	06090463          	beqz	s2,80002390 <_ZN3TCB16initializeThreadEPFvPvES0_Pm+0xa4>
    8000232c:	00048793          	mv	a5,s1
            timeSlice(timeSlice)
    80002330:	00f53c23          	sd	a5,24(a0)
    80002334:	00000797          	auipc	a5,0x0
    80002338:	e2878793          	addi	a5,a5,-472 # 8000215c <_ZN3TCB13threadWrapperEv>
    8000233c:	02f53023          	sd	a5,32(a0)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80002340:	04048c63          	beqz	s1,80002398 <_ZN3TCB16initializeThreadEPFvPvES0_Pm+0xac>
    80002344:	00008637          	lui	a2,0x8
    80002348:	00c484b3          	add	s1,s1,a2
            timeSlice(timeSlice)
    8000234c:	02953423          	sd	s1,40(a0)
    80002350:	00200793          	li	a5,2
    80002354:	02f53823          	sd	a5,48(a0)
    {
        this->id = ID++;
    80002358:	00005717          	auipc	a4,0x5
    8000235c:	0f870713          	addi	a4,a4,248 # 80007450 <_ZN3TCB7runningE>
    80002360:	01073783          	ld	a5,16(a4)
    80002364:	00178693          	addi	a3,a5,1
    80002368:	00d73823          	sd	a3,16(a4)
    8000236c:	00f53023          	sd	a5,0(a0)
        this->state = CREATED;
    80002370:	02052c23          	sw	zero,56(a0)
    return new TCB(body, arg, stack, DEFAULT_TIME_SLICE);
}
    80002374:	02813083          	ld	ra,40(sp)
    80002378:	02013403          	ld	s0,32(sp)
    8000237c:	01813483          	ld	s1,24(sp)
    80002380:	01013903          	ld	s2,16(sp)
    80002384:	00813983          	ld	s3,8(sp)
    80002388:	03010113          	addi	sp,sp,48
    8000238c:	00008067          	ret
            stack(body != nullptr ? stack : nullptr),
    80002390:	00000793          	li	a5,0
    80002394:	f9dff06f          	j	80002330 <_ZN3TCB16initializeThreadEPFvPvES0_Pm+0x44>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80002398:	00000493          	li	s1,0
    8000239c:	fb1ff06f          	j	8000234c <_ZN3TCB16initializeThreadEPFvPvES0_Pm+0x60>

00000000800023a0 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
TCB *TCB::createThread(Body body, Arg arg, uint64* stack) {
    800023a0:	fe010113          	addi	sp,sp,-32
    800023a4:	00113c23          	sd	ra,24(sp)
    800023a8:	00813823          	sd	s0,16(sp)
    800023ac:	00913423          	sd	s1,8(sp)
    800023b0:	02010413          	addi	s0,sp,32
    TCB* t = initializeThread(body, arg, stack);
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	f38080e7          	jalr	-200(ra) # 800022ec <_ZN3TCB16initializeThreadEPFvPvES0_Pm>
    800023bc:	00050493          	mv	s1,a0
    t->start();
    800023c0:	00000097          	auipc	ra,0x0
    800023c4:	ed8080e7          	jalr	-296(ra) # 80002298 <_ZN3TCB5startEv>
}
    800023c8:	00048513          	mv	a0,s1
    800023cc:	01813083          	ld	ra,24(sp)
    800023d0:	01013403          	ld	s0,16(sp)
    800023d4:	00813483          	ld	s1,8(sp)
    800023d8:	02010113          	addi	sp,sp,32
    800023dc:	00008067          	ret

00000000800023e0 <_Znwm>:
#include "../h/syscall_c.hpp"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800023e0:	ff010113          	addi	sp,sp,-16
    800023e4:	00113423          	sd	ra,8(sp)
    800023e8:	00813023          	sd	s0,0(sp)
    800023ec:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	054080e7          	jalr	84(ra) # 80001444 <_Z9mem_allocm>
}
    800023f8:	00813083          	ld	ra,8(sp)
    800023fc:	00013403          	ld	s0,0(sp)
    80002400:	01010113          	addi	sp,sp,16
    80002404:	00008067          	ret

0000000080002408 <_Znam>:

void *operator new[](size_t n)
{
    80002408:	ff010113          	addi	sp,sp,-16
    8000240c:	00113423          	sd	ra,8(sp)
    80002410:	00813023          	sd	s0,0(sp)
    80002414:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	02c080e7          	jalr	44(ra) # 80001444 <_Z9mem_allocm>
}
    80002420:	00813083          	ld	ra,8(sp)
    80002424:	00013403          	ld	s0,0(sp)
    80002428:	01010113          	addi	sp,sp,16
    8000242c:	00008067          	ret

0000000080002430 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	038080e7          	jalr	56(ra) # 80001478 <_Z8mem_freePv>
}
    80002448:	00813083          	ld	ra,8(sp)
    8000244c:	00013403          	ld	s0,0(sp)
    80002450:	01010113          	addi	sp,sp,16
    80002454:	00008067          	ret

0000000080002458 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002458:	ff010113          	addi	sp,sp,-16
    8000245c:	00113423          	sd	ra,8(sp)
    80002460:	00813023          	sd	s0,0(sp)
    80002464:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	010080e7          	jalr	16(ra) # 80001478 <_Z8mem_freePv>
    80002470:	00813083          	ld	ra,8(sp)
    80002474:	00013403          	ld	s0,0(sp)
    80002478:	01010113          	addi	sp,sp,16
    8000247c:	00008067          	ret

0000000080002480 <_ZN5Riscv10popSppSpieEv>:
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/_sem.hpp"

void Riscv::popSppSpie()
{
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00813423          	sd	s0,8(sp)
    80002488:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000248c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002490:	10200073          	sret
}
    80002494:	00813403          	ld	s0,8(sp)
    80002498:	01010113          	addi	sp,sp,16
    8000249c:	00008067          	ret

00000000800024a0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800024a0:	f7010113          	addi	sp,sp,-144
    800024a4:	08113423          	sd	ra,136(sp)
    800024a8:	08813023          	sd	s0,128(sp)
    800024ac:	06913c23          	sd	s1,120(sp)
    800024b0:	07213823          	sd	s2,112(sp)
    800024b4:	07313423          	sd	s3,104(sp)
    800024b8:	07413023          	sd	s4,96(sp)
    800024bc:	05513c23          	sd	s5,88(sp)
    800024c0:	09010413          	addi	s0,sp,144
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    800024c4:	05843783          	ld	a5,88(s0)
    800024c8:	faf43023          	sd	a5,-96(s0)
    return a1;
    800024cc:	fa043903          	ld	s2,-96(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    800024d0:	06043783          	ld	a5,96(s0)
    800024d4:	f8f43c23          	sd	a5,-104(s0)
    return a2;
    800024d8:	f9843983          	ld	s3,-104(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    800024dc:	06843783          	ld	a5,104(s0)
    800024e0:	f8f43823          	sd	a5,-112(s0)
    return a3;
    800024e4:	f9043503          	ld	a0,-112(s0)
}

inline uint64 Riscv::r_a4() {
    uint64 volatile a4;
    __asm__ volatile ("ld %0, 14*8(fp)" : "=r"(a4));
    800024e8:	07043783          	ld	a5,112(s0)
    800024ec:	f8f43423          	sd	a5,-120(s0)
    return a4;
    800024f0:	f8843a03          	ld	s4,-120(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    800024f4:	05043783          	ld	a5,80(s0)
    800024f8:	f8f43023          	sd	a5,-128(s0)
    return a0;
    800024fc:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002500:	14202773          	csrr	a4,scause
    80002504:	f6e43c23          	sd	a4,-136(s0)
    return scause;
    80002508:	f7843703          	ld	a4,-136(s0)
    uint64 a4 = r_a4();
    long a0 = r_a0();

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    8000250c:	ff870613          	addi	a2,a4,-8
    80002510:	00100693          	li	a3,1
    80002514:	06c6fe63          	bgeu	a3,a2,80002590 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
        }

        w_sstatus(sstatus); // restauracija statusnog registra
        w_sepc(sepc); // restauracija pc registra

    } else if (scause == 0x8000000000000001UL) {
    80002518:	fff00793          	li	a5,-1
    8000251c:	03f79793          	slli	a5,a5,0x3f
    80002520:	00178793          	addi	a5,a5,1
    80002524:	2af70463          	beq	a4,a5,800027cc <_ZN5Riscv20handleSupervisorTrapEv+0x32c>

            w_sstatus(sstatus);
            w_sepc(sepc);
        }*/
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
    80002528:	fff00793          	li	a5,-1
    8000252c:	03f79793          	slli	a5,a5,0x3f
    80002530:	00978793          	addi	a5,a5,9
    80002534:	2af70263          	beq	a4,a5,800027d8 <_ZN5Riscv20handleSupervisorTrapEv+0x338>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    } else {
        // unexpected trap cause
        printInt(scause);
    80002538:	00000613          	li	a2,0
    8000253c:	00a00593          	li	a1,10
    80002540:	0007051b          	sext.w	a0,a4
    80002544:	00001097          	auipc	ra,0x1
    80002548:	938080e7          	jalr	-1736(ra) # 80002e7c <_Z8printIntiii>
        printString("\n");
    8000254c:	00004517          	auipc	a0,0x4
    80002550:	aec50513          	addi	a0,a0,-1300 # 80006038 <kvmincrease+0x588>
    80002554:	00000097          	auipc	ra,0x0
    80002558:	790080e7          	jalr	1936(ra) # 80002ce4 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000255c:	141027f3          	csrr	a5,sepc
    80002560:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80002564:	fb843503          	ld	a0,-72(s0)
        printInt(r_sepc());
    80002568:	00000613          	li	a2,0
    8000256c:	00a00593          	li	a1,10
    80002570:	0005051b          	sext.w	a0,a0
    80002574:	00001097          	auipc	ra,0x1
    80002578:	908080e7          	jalr	-1784(ra) # 80002e7c <_Z8printIntiii>
        printString("\n");
    8000257c:	00004517          	auipc	a0,0x4
    80002580:	abc50513          	addi	a0,a0,-1348 # 80006038 <kvmincrease+0x588>
    80002584:	00000097          	auipc	ra,0x0
    80002588:	760080e7          	jalr	1888(ra) # 80002ce4 <_Z11printStringPKc>
    }
    8000258c:	0b00006f          	j	8000263c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002590:	14102773          	csrr	a4,sepc
    80002594:	fae43823          	sd	a4,-80(s0)
    return sepc;
    80002598:	fb043483          	ld	s1,-80(s0)
        uint64 sepc = r_sepc() + 4; // jer pc pokazuje na trenutnu instrukciju tj ecall a treba na sledecu
    8000259c:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800025a0:	10002773          	csrr	a4,sstatus
    800025a4:	fae43423          	sd	a4,-88(s0)
    return sstatus;
    800025a8:	fa843a83          	ld	s5,-88(s0)
        if(a0 == 0x01) { // mem_alloc
    800025ac:	00100713          	li	a4,1
    800025b0:	06e78a63          	beq	a5,a4,80002624 <_ZN5Riscv20handleSupervisorTrapEv+0x184>
        else if(a0 == 0x02) { // mem_free
    800025b4:	00200713          	li	a4,2
    800025b8:	0ae78463          	beq	a5,a4,80002660 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
        else if(a0 == 0x11) { //thread_create
    800025bc:	01100713          	li	a4,17
    800025c0:	0ae78a63          	beq	a5,a4,80002674 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
        else if(a0 == 0x12) { // thread_exit
    800025c4:	01200713          	li	a4,18
    800025c8:	0ce78e63          	beq	a5,a4,800026a4 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
        else if(a0 == 0x13) { // thread_dispatch
    800025cc:	01300713          	li	a4,19
    800025d0:	0ee78263          	beq	a5,a4,800026b4 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
        else if(a0 == 0x14) { //thread_start
    800025d4:	01400713          	li	a4,20
    800025d8:	0ee78463          	beq	a5,a4,800026c0 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
        else if (a0 == 0x15) { //thread_initialize
    800025dc:	01500713          	li	a4,21
    800025e0:	10e78263          	beq	a5,a4,800026e4 <_ZN5Riscv20handleSupervisorTrapEv+0x244>
        else if(a0 == 0x21) { // sem_open
    800025e4:	02100713          	li	a4,33
    800025e8:	12e78663          	beq	a5,a4,80002714 <_ZN5Riscv20handleSupervisorTrapEv+0x274>
        else if(a0 == 0x22) { // sem_close
    800025ec:	02200713          	li	a4,34
    800025f0:	14e78863          	beq	a5,a4,80002740 <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
        else if(a0 == 0x23) { // sem_wait
    800025f4:	02300713          	li	a4,35
    800025f8:	16e78e63          	beq	a5,a4,80002774 <_ZN5Riscv20handleSupervisorTrapEv+0x2d4>
        else if(a0 == 0x24) { // sem_signal
    800025fc:	02400713          	li	a4,36
    80002600:	18e78c63          	beq	a5,a4,80002798 <_ZN5Riscv20handleSupervisorTrapEv+0x2f8>
        else if(a0 == 0x41) { // getc
    80002604:	04100713          	li	a4,65
    80002608:	1ae78a63          	beq	a5,a4,800027bc <_ZN5Riscv20handleSupervisorTrapEv+0x31c>
        else if(a0 == 0x42) { // putc
    8000260c:	04200713          	li	a4,66
    80002610:	02e79263          	bne	a5,a4,80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            __putc((char)a1);
    80002614:	0ff97513          	andi	a0,s2,255
    80002618:	00003097          	auipc	ra,0x3
    8000261c:	378080e7          	jalr	888(ra) # 80005990 <__putc>
    80002620:	0140006f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            void* ptr = __mem_alloc((size_t)a1);
    80002624:	00090513          	mv	a0,s2
    80002628:	00003097          	auipc	ra,0x3
    8000262c:	210080e7          	jalr	528(ra) # 80005838 <__mem_alloc>
}

inline void Riscv::w_a0_stack(long a0) {
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80002630:	04a43823          	sd	a0,80(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002634:	100a9073          	csrw	sstatus,s5
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002638:	14149073          	csrw	sepc,s1
    8000263c:	08813083          	ld	ra,136(sp)
    80002640:	08013403          	ld	s0,128(sp)
    80002644:	07813483          	ld	s1,120(sp)
    80002648:	07013903          	ld	s2,112(sp)
    8000264c:	06813983          	ld	s3,104(sp)
    80002650:	06013a03          	ld	s4,96(sp)
    80002654:	05813a83          	ld	s5,88(sp)
    80002658:	09010113          	addi	sp,sp,144
    8000265c:	00008067          	ret
            a0 = __mem_free((void *)a1);
    80002660:	00090513          	mv	a0,s2
    80002664:	00003097          	auipc	ra,0x3
    80002668:	108080e7          	jalr	264(ra) # 8000576c <__mem_free>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    8000266c:	04a43823          	sd	a0,80(s0)
}
    80002670:	fc5ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            TCB *handle = TCB::createThread((void (*)(void*))(a3), (void*)a2, (uint64*)a1);
    80002674:	00090613          	mv	a2,s2
    80002678:	00098593          	mv	a1,s3
    8000267c:	00000097          	auipc	ra,0x0
    80002680:	d24080e7          	jalr	-732(ra) # 800023a0 <_ZN3TCB12createThreadEPFvPvES0_Pm>
            if(!handle) w_a0_stack(-1);
    80002684:	00050a63          	beqz	a0,80002698 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
                *(h) = handle;
    80002688:	00aa3023          	sd	a0,0(s4)
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    8000268c:	00000793          	li	a5,0
    80002690:	04f43823          	sd	a5,80(s0)
}
    80002694:	fa1ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80002698:	fff00793          	li	a5,-1
    8000269c:	04f43823          	sd	a5,80(s0)
}
    800026a0:	f95ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            a0 = TCB::exit();
    800026a4:	00000097          	auipc	ra,0x0
    800026a8:	ba4080e7          	jalr	-1116(ra) # 80002248 <_ZN3TCB4exitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    800026ac:	04a43823          	sd	a0,80(s0)
}
    800026b0:	f85ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            TCB::dispatch();
    800026b4:	00000097          	auipc	ra,0x0
    800026b8:	aec080e7          	jalr	-1300(ra) # 800021a0 <_ZN3TCB8dispatchEv>
    800026bc:	f79ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            if(!thread) w_a0_stack(-1);
    800026c0:	00091863          	bnez	s2,800026d0 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    800026c4:	fff00793          	li	a5,-1
    800026c8:	04f43823          	sd	a5,80(s0)
}
    800026cc:	f69ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                a0 = thread->start();
    800026d0:	00090513          	mv	a0,s2
    800026d4:	00000097          	auipc	ra,0x0
    800026d8:	bc4080e7          	jalr	-1084(ra) # 80002298 <_ZN3TCB5startEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    800026dc:	04a43823          	sd	a0,80(s0)
}
    800026e0:	f55ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            TCB *handle = TCB::initializeThread((void (*)(void*))(a3), (void*)a2, (uint64*)a1);
    800026e4:	00090613          	mv	a2,s2
    800026e8:	00098593          	mv	a1,s3
    800026ec:	00000097          	auipc	ra,0x0
    800026f0:	c00080e7          	jalr	-1024(ra) # 800022ec <_ZN3TCB16initializeThreadEPFvPvES0_Pm>
            if(!handle) w_a0_stack(-1);
    800026f4:	00050a63          	beqz	a0,80002708 <_ZN5Riscv20handleSupervisorTrapEv+0x268>
                *(h) = handle;
    800026f8:	00aa3023          	sd	a0,0(s4)
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    800026fc:	00000793          	li	a5,0
    80002700:	04f43823          	sd	a5,80(s0)
}
    80002704:	f31ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80002708:	fff00793          	li	a5,-1
    8000270c:	04f43823          	sd	a5,80(s0)
}
    80002710:	f25ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    _sem(unsigned value);
    ~_sem();
    int signal();
    int wait();

    void *operator new(size_t size) { return __mem_alloc(size); }
    80002714:	02000513          	li	a0,32
    80002718:	00003097          	auipc	ra,0x3
    8000271c:	120080e7          	jalr	288(ra) # 80005838 <__mem_alloc>
    80002720:	00050a13          	mv	s4,a0
            _sem* handle = new _sem((unsigned)a1);
    80002724:	0009059b          	sext.w	a1,s2
    80002728:	00000097          	auipc	ra,0x0
    8000272c:	0d8080e7          	jalr	216(ra) # 80002800 <_ZN4_semC1Ej>
            *(h) = handle;
    80002730:	0149b023          	sd	s4,0(s3)
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80002734:	00000793          	li	a5,0
    80002738:	04f43823          	sd	a5,80(s0)
}
    8000273c:	ef9ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            if(!sem) w_a0_stack(-1);
    80002740:	00091863          	bnez	s2,80002750 <_ZN5Riscv20handleSupervisorTrapEv+0x2b0>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80002744:	fff00793          	li	a5,-1
    80002748:	04f43823          	sd	a5,80(s0)
}
    8000274c:	ee9ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                delete sem;
    80002750:	00090513          	mv	a0,s2
    80002754:	00000097          	auipc	ra,0x0
    80002758:	0d4080e7          	jalr	212(ra) # 80002828 <_ZN4_semD1Ev>
    void operator delete(void *ptr) { __mem_free(ptr); }
    8000275c:	00090513          	mv	a0,s2
    80002760:	00003097          	auipc	ra,0x3
    80002764:	00c080e7          	jalr	12(ra) # 8000576c <__mem_free>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80002768:	00000793          	li	a5,0
    8000276c:	04f43823          	sd	a5,80(s0)
}
    80002770:	ec5ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            if(!sem) w_a0_stack(-1);
    80002774:	00091863          	bnez	s2,80002784 <_ZN5Riscv20handleSupervisorTrapEv+0x2e4>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80002778:	fff00793          	li	a5,-1
    8000277c:	04f43823          	sd	a5,80(s0)
}
    80002780:	eb5ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                a0 = sem->wait();
    80002784:	00090513          	mv	a0,s2
    80002788:	00000097          	auipc	ra,0x0
    8000278c:	1c8080e7          	jalr	456(ra) # 80002950 <_ZN4_sem4waitEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    80002790:	04a43823          	sd	a0,80(s0)
}
    80002794:	ea1ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            if(!sem) w_a0_stack(-1);
    80002798:	00091863          	bnez	s2,800027a8 <_ZN5Riscv20handleSupervisorTrapEv+0x308>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    8000279c:	fff00793          	li	a5,-1
    800027a0:	04f43823          	sd	a5,80(s0)
}
    800027a4:	e91ff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
                a0 = sem->signal();
    800027a8:	00090513          	mv	a0,s2
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	100080e7          	jalr	256(ra) # 800028ac <_ZN4_sem6signalEv>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    800027b4:	04a43823          	sd	a0,80(s0)
}
    800027b8:	e7dff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
            char c = __getc();
    800027bc:	00003097          	auipc	ra,0x3
    800027c0:	210080e7          	jalr	528(ra) # 800059cc <__getc>
    __asm__ volatile ("sd %0, 10*8(fp)" : : "r"(a0));
    800027c4:	04a43823          	sd	a0,80(s0)
}
    800027c8:	e6dff06f          	j	80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800027cc:	00200793          	li	a5,2
    800027d0:	1447b073          	csrc	sip,a5
}
    800027d4:	e69ff06f          	j	8000263c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
        console_handler();
    800027d8:	00003097          	auipc	ra,0x3
    800027dc:	22c080e7          	jalr	556(ra) # 80005a04 <console_handler>
    800027e0:	e5dff06f          	j	8000263c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    800027e4:	00050493          	mv	s1,a0
    800027e8:	000a0513          	mv	a0,s4
    800027ec:	00003097          	auipc	ra,0x3
    800027f0:	f80080e7          	jalr	-128(ra) # 8000576c <__mem_free>
    800027f4:	00048513          	mv	a0,s1
    800027f8:	00006097          	auipc	ra,0x6
    800027fc:	d60080e7          	jalr	-672(ra) # 80008558 <_Unwind_Resume>

0000000080002800 <_ZN4_semC1Ej>:
#include "../h/_sem.hpp"

_sem::_sem(unsigned value) {
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00813423          	sd	s0,8(sp)
    80002808:	01010413          	addi	s0,sp,16

    void *operator new(size_t size) { return __mem_alloc(size); }
    void operator delete(void *ptr) { __mem_free(ptr); }

public:
    List() : head(0), tail(0) {}
    8000280c:	00053423          	sd	zero,8(a0)
    80002810:	00053823          	sd	zero,16(a0)
    this->value = (int)value;
    80002814:	00b52023          	sw	a1,0(a0)
    this->closed = 0;
    80002818:	00052c23          	sw	zero,24(a0)
}
    8000281c:	00813403          	ld	s0,8(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret

0000000080002828 <_ZN4_semD1Ev>:

_sem::~_sem() {
    80002828:	fe010113          	addi	sp,sp,-32
    8000282c:	00113c23          	sd	ra,24(sp)
    80002830:	00813823          	sd	s0,16(sp)
    80002834:	00913423          	sd	s1,8(sp)
    80002838:	01213023          	sd	s2,0(sp)
    8000283c:	02010413          	addi	s0,sp,32
    80002840:	00050493          	mv	s1,a0
    closed = 1;
    80002844:	00100793          	li	a5,1
    80002848:	00f52c23          	sw	a5,24(a0)
    8000284c:	0280006f          	j	80002874 <_ZN4_semD1Ev+0x4c>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80002850:	0004b823          	sd	zero,16(s1)

        T *ret = elem->data;
    80002854:	00053903          	ld	s2,0(a0)
        delete elem;
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	bd8080e7          	jalr	-1064(ra) # 80002430 <_ZdlPv>
    while(this->blockedThreads.peekFirst()) {
        TCB* thread = this->blockedThreads.removeFirst();
        thread->state = TCB::READY;
    80002860:	00100793          	li	a5,1
    80002864:	02f92c23          	sw	a5,56(s2)
        Scheduler::put(thread);
    80002868:	00090513          	mv	a0,s2
    8000286c:	00000097          	auipc	ra,0x0
    80002870:	254080e7          	jalr	596(ra) # 80002ac0 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002874:	0084b503          	ld	a0,8(s1)
    80002878:	00050e63          	beqz	a0,80002894 <_ZN4_semD1Ev+0x6c>
        return head->data;
    8000287c:	00053783          	ld	a5,0(a0)
    while(this->blockedThreads.peekFirst()) {
    80002880:	00078a63          	beqz	a5,80002894 <_ZN4_semD1Ev+0x6c>
        head = head->next;
    80002884:	00853783          	ld	a5,8(a0)
    80002888:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    8000288c:	fc0794e3          	bnez	a5,80002854 <_ZN4_semD1Ev+0x2c>
    80002890:	fc1ff06f          	j	80002850 <_ZN4_semD1Ev+0x28>
    }
}
    80002894:	01813083          	ld	ra,24(sp)
    80002898:	01013403          	ld	s0,16(sp)
    8000289c:	00813483          	ld	s1,8(sp)
    800028a0:	00013903          	ld	s2,0(sp)
    800028a4:	02010113          	addi	sp,sp,32
    800028a8:	00008067          	ret

00000000800028ac <_ZN4_sem6signalEv>:

int _sem::signal() {
    if(closed == 1) return -1;
    800028ac:	01852683          	lw	a3,24(a0)
    800028b0:	00100713          	li	a4,1
    800028b4:	08e68a63          	beq	a3,a4,80002948 <_ZN4_sem6signalEv+0x9c>
    800028b8:	00050793          	mv	a5,a0
    if(++value <= 0) {
    800028bc:	00052703          	lw	a4,0(a0)
    800028c0:	0017071b          	addiw	a4,a4,1
    800028c4:	0007069b          	sext.w	a3,a4
    800028c8:	00e52023          	sw	a4,0(a0)
    800028cc:	00d05663          	blez	a3,800028d8 <_ZN4_sem6signalEv+0x2c>
        TCB* thread = this->blockedThreads.removeFirst();
        thread->state = TCB::READY;
        Scheduler::put(thread);
    }
    return 0;
    800028d0:	00000513          	li	a0,0
}
    800028d4:	00008067          	ret
int _sem::signal() {
    800028d8:	fe010113          	addi	sp,sp,-32
    800028dc:	00113c23          	sd	ra,24(sp)
    800028e0:	00813823          	sd	s0,16(sp)
    800028e4:	00913423          	sd	s1,8(sp)
    800028e8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800028ec:	00853503          	ld	a0,8(a0)
    800028f0:	04050863          	beqz	a0,80002940 <_ZN4_sem6signalEv+0x94>
        head = head->next;
    800028f4:	00853703          	ld	a4,8(a0)
    800028f8:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800028fc:	02070e63          	beqz	a4,80002938 <_ZN4_sem6signalEv+0x8c>
        T *ret = elem->data;
    80002900:	00053483          	ld	s1,0(a0)
        delete elem;
    80002904:	00000097          	auipc	ra,0x0
    80002908:	b2c080e7          	jalr	-1236(ra) # 80002430 <_ZdlPv>
        thread->state = TCB::READY;
    8000290c:	00100793          	li	a5,1
    80002910:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(thread);
    80002914:	00048513          	mv	a0,s1
    80002918:	00000097          	auipc	ra,0x0
    8000291c:	1a8080e7          	jalr	424(ra) # 80002ac0 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002920:	00000513          	li	a0,0
}
    80002924:	01813083          	ld	ra,24(sp)
    80002928:	01013403          	ld	s0,16(sp)
    8000292c:	00813483          	ld	s1,8(sp)
    80002930:	02010113          	addi	sp,sp,32
    80002934:	00008067          	ret
        if (!head) { tail = 0; }
    80002938:	0007b823          	sd	zero,16(a5)
    8000293c:	fc5ff06f          	j	80002900 <_ZN4_sem6signalEv+0x54>
        if (!head) { return 0; }
    80002940:	00050493          	mv	s1,a0
    80002944:	fc9ff06f          	j	8000290c <_ZN4_sem6signalEv+0x60>
    if(closed == 1) return -1;
    80002948:	fff00513          	li	a0,-1
    8000294c:	00008067          	ret

0000000080002950 <_ZN4_sem4waitEv>:

int _sem::wait() {
    if(closed == 1) return -1;
    80002950:	01852703          	lw	a4,24(a0)
    80002954:	00100793          	li	a5,1
    80002958:	0af70c63          	beq	a4,a5,80002a10 <_ZN4_sem4waitEv+0xc0>
int _sem::wait() {
    8000295c:	fe010113          	addi	sp,sp,-32
    80002960:	00113c23          	sd	ra,24(sp)
    80002964:	00813823          	sd	s0,16(sp)
    80002968:	00913423          	sd	s1,8(sp)
    8000296c:	01213023          	sd	s2,0(sp)
    80002970:	02010413          	addi	s0,sp,32
    80002974:	00050493          	mv	s1,a0
    if(--value < 0) {
    80002978:	00052783          	lw	a5,0(a0)
    8000297c:	fff7879b          	addiw	a5,a5,-1
    80002980:	00f52023          	sw	a5,0(a0)
    80002984:	02079713          	slli	a4,a5,0x20
    80002988:	02074263          	bltz	a4,800029ac <_ZN4_sem4waitEv+0x5c>
        this->blockedThreads.addLast(TCB::running);
        TCB::running->state = TCB::BLOCKED;
        TCB::dispatch();
    }
    if (closed == 0) return 0;
    8000298c:	0184a503          	lw	a0,24(s1)
    80002990:	06051c63          	bnez	a0,80002a08 <_ZN4_sem4waitEv+0xb8>
    return -1;
}
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	01013403          	ld	s0,16(sp)
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	00013903          	ld	s2,0(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00008067          	ret
        this->blockedThreads.addLast(TCB::running);
    800029ac:	00005797          	auipc	a5,0x5
    800029b0:	a3c7b783          	ld	a5,-1476(a5) # 800073e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800029b4:	0007b903          	ld	s2,0(a5)
        Elem *elem = new Elem(data, 0);
    800029b8:	01000513          	li	a0,16
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	a24080e7          	jalr	-1500(ra) # 800023e0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800029c4:	01253023          	sd	s2,0(a0)
    800029c8:	00053423          	sd	zero,8(a0)
        if (tail)
    800029cc:	0104b783          	ld	a5,16(s1)
    800029d0:	02078663          	beqz	a5,800029fc <_ZN4_sem4waitEv+0xac>
            tail->next = elem;
    800029d4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800029d8:	00a4b823          	sd	a0,16(s1)
        TCB::running->state = TCB::BLOCKED;
    800029dc:	00005797          	auipc	a5,0x5
    800029e0:	a0c7b783          	ld	a5,-1524(a5) # 800073e8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800029e4:	0007b783          	ld	a5,0(a5)
    800029e8:	00300713          	li	a4,3
    800029ec:	02e7ac23          	sw	a4,56(a5)
        TCB::dispatch();
    800029f0:	fffff097          	auipc	ra,0xfffff
    800029f4:	7b0080e7          	jalr	1968(ra) # 800021a0 <_ZN3TCB8dispatchEv>
    800029f8:	f95ff06f          	j	8000298c <_ZN4_sem4waitEv+0x3c>
            head = tail = elem;
    800029fc:	00a4b823          	sd	a0,16(s1)
    80002a00:	00a4b423          	sd	a0,8(s1)
    80002a04:	fd9ff06f          	j	800029dc <_ZN4_sem4waitEv+0x8c>
    return -1;
    80002a08:	fff00513          	li	a0,-1
    80002a0c:	f89ff06f          	j	80002994 <_ZN4_sem4waitEv+0x44>
    if(closed == 1) return -1;
    80002a10:	fff00513          	li	a0,-1
}
    80002a14:	00008067          	ret

0000000080002a18 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00813423          	sd	s0,8(sp)
    80002a20:	01010413          	addi	s0,sp,16
    80002a24:	00100793          	li	a5,1
    80002a28:	00f50863          	beq	a0,a5,80002a38 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a2c:	00813403          	ld	s0,8(sp)
    80002a30:	01010113          	addi	sp,sp,16
    80002a34:	00008067          	ret
    80002a38:	000107b7          	lui	a5,0x10
    80002a3c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a40:	fef596e3          	bne	a1,a5,80002a2c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80002a44:	00005797          	auipc	a5,0x5
    80002a48:	a2478793          	addi	a5,a5,-1500 # 80007468 <_ZN9Scheduler16readyThreadQueueE>
    80002a4c:	0007b023          	sd	zero,0(a5)
    80002a50:	0007b423          	sd	zero,8(a5)
    80002a54:	fd9ff06f          	j	80002a2c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002a58 <_ZN9Scheduler3getEv>:
{
    80002a58:	fe010113          	addi	sp,sp,-32
    80002a5c:	00113c23          	sd	ra,24(sp)
    80002a60:	00813823          	sd	s0,16(sp)
    80002a64:	00913423          	sd	s1,8(sp)
    80002a68:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002a6c:	00005517          	auipc	a0,0x5
    80002a70:	9fc53503          	ld	a0,-1540(a0) # 80007468 <_ZN9Scheduler16readyThreadQueueE>
    80002a74:	04050263          	beqz	a0,80002ab8 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002a78:	00853783          	ld	a5,8(a0)
    80002a7c:	00005717          	auipc	a4,0x5
    80002a80:	9ef73623          	sd	a5,-1556(a4) # 80007468 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002a84:	02078463          	beqz	a5,80002aac <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002a88:	00053483          	ld	s1,0(a0)
        delete elem;
    80002a8c:	00000097          	auipc	ra,0x0
    80002a90:	9a4080e7          	jalr	-1628(ra) # 80002430 <_ZdlPv>
}
    80002a94:	00048513          	mv	a0,s1
    80002a98:	01813083          	ld	ra,24(sp)
    80002a9c:	01013403          	ld	s0,16(sp)
    80002aa0:	00813483          	ld	s1,8(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret
        if (!head) { tail = 0; }
    80002aac:	00005797          	auipc	a5,0x5
    80002ab0:	9c07b223          	sd	zero,-1596(a5) # 80007470 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002ab4:	fd5ff06f          	j	80002a88 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002ab8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002abc:	fd9ff06f          	j	80002a94 <_ZN9Scheduler3getEv+0x3c>

0000000080002ac0 <_ZN9Scheduler3putEP3TCB>:
{
    80002ac0:	fe010113          	addi	sp,sp,-32
    80002ac4:	00113c23          	sd	ra,24(sp)
    80002ac8:	00813823          	sd	s0,16(sp)
    80002acc:	00913423          	sd	s1,8(sp)
    80002ad0:	02010413          	addi	s0,sp,32
    80002ad4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002ad8:	01000513          	li	a0,16
    80002adc:	00000097          	auipc	ra,0x0
    80002ae0:	904080e7          	jalr	-1788(ra) # 800023e0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002ae4:	00953023          	sd	s1,0(a0)
    80002ae8:	00053423          	sd	zero,8(a0)
        if (tail)
    80002aec:	00005797          	auipc	a5,0x5
    80002af0:	9847b783          	ld	a5,-1660(a5) # 80007470 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002af4:	02078263          	beqz	a5,80002b18 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002af8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002afc:	00005797          	auipc	a5,0x5
    80002b00:	96a7ba23          	sd	a0,-1676(a5) # 80007470 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b04:	01813083          	ld	ra,24(sp)
    80002b08:	01013403          	ld	s0,16(sp)
    80002b0c:	00813483          	ld	s1,8(sp)
    80002b10:	02010113          	addi	sp,sp,32
    80002b14:	00008067          	ret
            head = tail = elem;
    80002b18:	00005797          	auipc	a5,0x5
    80002b1c:	95078793          	addi	a5,a5,-1712 # 80007468 <_ZN9Scheduler16readyThreadQueueE>
    80002b20:	00a7b423          	sd	a0,8(a5)
    80002b24:	00a7b023          	sd	a0,0(a5)
    80002b28:	fddff06f          	j	80002b04 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002b2c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002b2c:	ff010113          	addi	sp,sp,-16
    80002b30:	00113423          	sd	ra,8(sp)
    80002b34:	00813023          	sd	s0,0(sp)
    80002b38:	01010413          	addi	s0,sp,16
    80002b3c:	000105b7          	lui	a1,0x10
    80002b40:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b44:	00100513          	li	a0,1
    80002b48:	00000097          	auipc	ra,0x0
    80002b4c:	ed0080e7          	jalr	-304(ra) # 80002a18 <_Z41__static_initialization_and_destruction_0ii>
    80002b50:	00813083          	ld	ra,8(sp)
    80002b54:	00013403          	ld	s0,0(sp)
    80002b58:	01010113          	addi	sp,sp,16
    80002b5c:	00008067          	ret

0000000080002b60 <_Z12printStringKPKc>:

#define LOCKK() while(copy_and_swap(lockPrintK, 0, 1))
#define UNLOCKK() while(copy_and_swap(lockPrintK, 1, 0))

void printStringK(char const *string)
{
    80002b60:	fe010113          	addi	sp,sp,-32
    80002b64:	00113c23          	sd	ra,24(sp)
    80002b68:	00813823          	sd	s0,16(sp)
    80002b6c:	00913423          	sd	s1,8(sp)
    80002b70:	02010413          	addi	s0,sp,32
    80002b74:	00050493          	mv	s1,a0
    LOCKK();
    80002b78:	00100613          	li	a2,1
    80002b7c:	00000593          	li	a1,0
    80002b80:	00005517          	auipc	a0,0x5
    80002b84:	8f850513          	addi	a0,a0,-1800 # 80007478 <lockPrintK>
    80002b88:	ffffe097          	auipc	ra,0xffffe
    80002b8c:	59c080e7          	jalr	1436(ra) # 80001124 <copy_and_swap>
    80002b90:	fe0514e3          	bnez	a0,80002b78 <_Z12printStringKPKc+0x18>
    while (*string != '\0')
    80002b94:	0004c503          	lbu	a0,0(s1)
    80002b98:	00050a63          	beqz	a0,80002bac <_Z12printStringKPKc+0x4c>
    {
        __putc(*string);
    80002b9c:	00003097          	auipc	ra,0x3
    80002ba0:	df4080e7          	jalr	-524(ra) # 80005990 <__putc>
        string++;
    80002ba4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002ba8:	fedff06f          	j	80002b94 <_Z12printStringKPKc+0x34>
    }
    UNLOCKK();
    80002bac:	00000613          	li	a2,0
    80002bb0:	00100593          	li	a1,1
    80002bb4:	00005517          	auipc	a0,0x5
    80002bb8:	8c450513          	addi	a0,a0,-1852 # 80007478 <lockPrintK>
    80002bbc:	ffffe097          	auipc	ra,0xffffe
    80002bc0:	568080e7          	jalr	1384(ra) # 80001124 <copy_and_swap>
    80002bc4:	fe0514e3          	bnez	a0,80002bac <_Z12printStringKPKc+0x4c>
}
    80002bc8:	01813083          	ld	ra,24(sp)
    80002bcc:	01013403          	ld	s0,16(sp)
    80002bd0:	00813483          	ld	s1,8(sp)
    80002bd4:	02010113          	addi	sp,sp,32
    80002bd8:	00008067          	ret

0000000080002bdc <_Z9printIntKiii>:

char digitsK[] = "0123456789ABCDEF";

void printIntK(int xx, int base, int sgn)
{
    80002bdc:	fc010113          	addi	sp,sp,-64
    80002be0:	02113c23          	sd	ra,56(sp)
    80002be4:	02813823          	sd	s0,48(sp)
    80002be8:	02913423          	sd	s1,40(sp)
    80002bec:	03213023          	sd	s2,32(sp)
    80002bf0:	01313c23          	sd	s3,24(sp)
    80002bf4:	04010413          	addi	s0,sp,64
    80002bf8:	00050493          	mv	s1,a0
    80002bfc:	00058913          	mv	s2,a1
    80002c00:	00060993          	mv	s3,a2
    LOCKK();
    80002c04:	00100613          	li	a2,1
    80002c08:	00000593          	li	a1,0
    80002c0c:	00005517          	auipc	a0,0x5
    80002c10:	86c50513          	addi	a0,a0,-1940 # 80007478 <lockPrintK>
    80002c14:	ffffe097          	auipc	ra,0xffffe
    80002c18:	510080e7          	jalr	1296(ra) # 80001124 <copy_and_swap>
    80002c1c:	fe0514e3          	bnez	a0,80002c04 <_Z9printIntKiii+0x28>
    char buf[16];
    int i, neg;
    uint64 x;

    neg = 0;
    if(sgn && xx < 0){
    80002c20:	00098463          	beqz	s3,80002c28 <_Z9printIntKiii+0x4c>
    80002c24:	0604ce63          	bltz	s1,80002ca0 <_Z9printIntKiii+0xc4>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002c28:	00048513          	mv	a0,s1
    neg = 0;
    80002c2c:	00000613          	li	a2,0
    }

    i = 0;
    80002c30:	00000493          	li	s1,0
    do{
        buf[i++] = digitsK[x % base];
    80002c34:	032576b3          	remu	a3,a0,s2
    80002c38:	00048713          	mv	a4,s1
    80002c3c:	0014849b          	addiw	s1,s1,1
    80002c40:	00004797          	auipc	a5,0x4
    80002c44:	75878793          	addi	a5,a5,1880 # 80007398 <digitsK>
    80002c48:	00d787b3          	add	a5,a5,a3
    80002c4c:	0007c683          	lbu	a3,0(a5)
    80002c50:	fd040793          	addi	a5,s0,-48
    80002c54:	00e787b3          	add	a5,a5,a4
    80002c58:	fed78823          	sb	a3,-16(a5)
    }while((x /= base) != 0);
    80002c5c:	00050793          	mv	a5,a0
    80002c60:	03255533          	divu	a0,a0,s2
    80002c64:	fd27f8e3          	bgeu	a5,s2,80002c34 <_Z9printIntKiii+0x58>
    if(neg)
    80002c68:	00060c63          	beqz	a2,80002c80 <_Z9printIntKiii+0xa4>
        buf[i++] = '-';
    80002c6c:	fd040793          	addi	a5,s0,-48
    80002c70:	009784b3          	add	s1,a5,s1
    80002c74:	02d00793          	li	a5,45
    80002c78:	fef48823          	sb	a5,-16(s1)
    80002c7c:	0027049b          	addiw	s1,a4,2

    while(--i >= 0)
    80002c80:	fff4849b          	addiw	s1,s1,-1
    80002c84:	0204c463          	bltz	s1,80002cac <_Z9printIntKiii+0xd0>
        __putc(buf[i]);
    80002c88:	fd040793          	addi	a5,s0,-48
    80002c8c:	009787b3          	add	a5,a5,s1
    80002c90:	ff07c503          	lbu	a0,-16(a5)
    80002c94:	00003097          	auipc	ra,0x3
    80002c98:	cfc080e7          	jalr	-772(ra) # 80005990 <__putc>
    80002c9c:	fe5ff06f          	j	80002c80 <_Z9printIntKiii+0xa4>
        x = -xx;
    80002ca0:	4090053b          	negw	a0,s1
        neg = 1;
    80002ca4:	00100613          	li	a2,1
        x = -xx;
    80002ca8:	f89ff06f          	j	80002c30 <_Z9printIntKiii+0x54>

    UNLOCKK();
    80002cac:	00000613          	li	a2,0
    80002cb0:	00100593          	li	a1,1
    80002cb4:	00004517          	auipc	a0,0x4
    80002cb8:	7c450513          	addi	a0,a0,1988 # 80007478 <lockPrintK>
    80002cbc:	ffffe097          	auipc	ra,0xffffe
    80002cc0:	468080e7          	jalr	1128(ra) # 80001124 <copy_and_swap>
    80002cc4:	fe0514e3          	bnez	a0,80002cac <_Z9printIntKiii+0xd0>
    80002cc8:	03813083          	ld	ra,56(sp)
    80002ccc:	03013403          	ld	s0,48(sp)
    80002cd0:	02813483          	ld	s1,40(sp)
    80002cd4:	02013903          	ld	s2,32(sp)
    80002cd8:	01813983          	ld	s3,24(sp)
    80002cdc:	04010113          	addi	sp,sp,64
    80002ce0:	00008067          	ret

0000000080002ce4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002ce4:	fe010113          	addi	sp,sp,-32
    80002ce8:	00113c23          	sd	ra,24(sp)
    80002cec:	00813823          	sd	s0,16(sp)
    80002cf0:	00913423          	sd	s1,8(sp)
    80002cf4:	02010413          	addi	s0,sp,32
    80002cf8:	00050493          	mv	s1,a0
    LOCK();
    80002cfc:	00100613          	li	a2,1
    80002d00:	00000593          	li	a1,0
    80002d04:	00004517          	auipc	a0,0x4
    80002d08:	77c50513          	addi	a0,a0,1916 # 80007480 <lockPrint>
    80002d0c:	ffffe097          	auipc	ra,0xffffe
    80002d10:	418080e7          	jalr	1048(ra) # 80001124 <copy_and_swap>
    80002d14:	fe0514e3          	bnez	a0,80002cfc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002d18:	0004c503          	lbu	a0,0(s1)
    80002d1c:	00050a63          	beqz	a0,80002d30 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002d20:	ffffe097          	auipc	ra,0xffffe
    80002d24:	668080e7          	jalr	1640(ra) # 80001388 <_Z4putcc>
        string++;
    80002d28:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002d2c:	fedff06f          	j	80002d18 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002d30:	00000613          	li	a2,0
    80002d34:	00100593          	li	a1,1
    80002d38:	00004517          	auipc	a0,0x4
    80002d3c:	74850513          	addi	a0,a0,1864 # 80007480 <lockPrint>
    80002d40:	ffffe097          	auipc	ra,0xffffe
    80002d44:	3e4080e7          	jalr	996(ra) # 80001124 <copy_and_swap>
    80002d48:	fe0514e3          	bnez	a0,80002d30 <_Z11printStringPKc+0x4c>
}
    80002d4c:	01813083          	ld	ra,24(sp)
    80002d50:	01013403          	ld	s0,16(sp)
    80002d54:	00813483          	ld	s1,8(sp)
    80002d58:	02010113          	addi	sp,sp,32
    80002d5c:	00008067          	ret

0000000080002d60 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002d60:	fd010113          	addi	sp,sp,-48
    80002d64:	02113423          	sd	ra,40(sp)
    80002d68:	02813023          	sd	s0,32(sp)
    80002d6c:	00913c23          	sd	s1,24(sp)
    80002d70:	01213823          	sd	s2,16(sp)
    80002d74:	01313423          	sd	s3,8(sp)
    80002d78:	01413023          	sd	s4,0(sp)
    80002d7c:	03010413          	addi	s0,sp,48
    80002d80:	00050993          	mv	s3,a0
    80002d84:	00058a13          	mv	s4,a1
    LOCK();
    80002d88:	00100613          	li	a2,1
    80002d8c:	00000593          	li	a1,0
    80002d90:	00004517          	auipc	a0,0x4
    80002d94:	6f050513          	addi	a0,a0,1776 # 80007480 <lockPrint>
    80002d98:	ffffe097          	auipc	ra,0xffffe
    80002d9c:	38c080e7          	jalr	908(ra) # 80001124 <copy_and_swap>
    80002da0:	fe0514e3          	bnez	a0,80002d88 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002da4:	00000913          	li	s2,0
    80002da8:	00090493          	mv	s1,s2
    80002dac:	0019091b          	addiw	s2,s2,1
    80002db0:	03495a63          	bge	s2,s4,80002de4 <_Z9getStringPci+0x84>
        cc = getc();
    80002db4:	ffffe097          	auipc	ra,0xffffe
    80002db8:	5a0080e7          	jalr	1440(ra) # 80001354 <_Z4getcv>
        if(cc < 1)
    80002dbc:	02050463          	beqz	a0,80002de4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002dc0:	009984b3          	add	s1,s3,s1
    80002dc4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002dc8:	00a00793          	li	a5,10
    80002dcc:	00f50a63          	beq	a0,a5,80002de0 <_Z9getStringPci+0x80>
    80002dd0:	00d00793          	li	a5,13
    80002dd4:	fcf51ae3          	bne	a0,a5,80002da8 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002dd8:	00090493          	mv	s1,s2
    80002ddc:	0080006f          	j	80002de4 <_Z9getStringPci+0x84>
    80002de0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002de4:	009984b3          	add	s1,s3,s1
    80002de8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002dec:	00000613          	li	a2,0
    80002df0:	00100593          	li	a1,1
    80002df4:	00004517          	auipc	a0,0x4
    80002df8:	68c50513          	addi	a0,a0,1676 # 80007480 <lockPrint>
    80002dfc:	ffffe097          	auipc	ra,0xffffe
    80002e00:	328080e7          	jalr	808(ra) # 80001124 <copy_and_swap>
    80002e04:	fe0514e3          	bnez	a0,80002dec <_Z9getStringPci+0x8c>
    return buf;
}
    80002e08:	00098513          	mv	a0,s3
    80002e0c:	02813083          	ld	ra,40(sp)
    80002e10:	02013403          	ld	s0,32(sp)
    80002e14:	01813483          	ld	s1,24(sp)
    80002e18:	01013903          	ld	s2,16(sp)
    80002e1c:	00813983          	ld	s3,8(sp)
    80002e20:	00013a03          	ld	s4,0(sp)
    80002e24:	03010113          	addi	sp,sp,48
    80002e28:	00008067          	ret

0000000080002e2c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002e2c:	ff010113          	addi	sp,sp,-16
    80002e30:	00813423          	sd	s0,8(sp)
    80002e34:	01010413          	addi	s0,sp,16
    80002e38:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002e3c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002e40:	0006c603          	lbu	a2,0(a3)
    80002e44:	fd06071b          	addiw	a4,a2,-48
    80002e48:	0ff77713          	andi	a4,a4,255
    80002e4c:	00900793          	li	a5,9
    80002e50:	02e7e063          	bltu	a5,a4,80002e70 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002e54:	0025179b          	slliw	a5,a0,0x2
    80002e58:	00a787bb          	addw	a5,a5,a0
    80002e5c:	0017979b          	slliw	a5,a5,0x1
    80002e60:	00168693          	addi	a3,a3,1
    80002e64:	00c787bb          	addw	a5,a5,a2
    80002e68:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002e6c:	fd5ff06f          	j	80002e40 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002e70:	00813403          	ld	s0,8(sp)
    80002e74:	01010113          	addi	sp,sp,16
    80002e78:	00008067          	ret

0000000080002e7c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002e7c:	fc010113          	addi	sp,sp,-64
    80002e80:	02113c23          	sd	ra,56(sp)
    80002e84:	02813823          	sd	s0,48(sp)
    80002e88:	02913423          	sd	s1,40(sp)
    80002e8c:	03213023          	sd	s2,32(sp)
    80002e90:	01313c23          	sd	s3,24(sp)
    80002e94:	04010413          	addi	s0,sp,64
    80002e98:	00050493          	mv	s1,a0
    80002e9c:	00058913          	mv	s2,a1
    80002ea0:	00060993          	mv	s3,a2
    LOCK();
    80002ea4:	00100613          	li	a2,1
    80002ea8:	00000593          	li	a1,0
    80002eac:	00004517          	auipc	a0,0x4
    80002eb0:	5d450513          	addi	a0,a0,1492 # 80007480 <lockPrint>
    80002eb4:	ffffe097          	auipc	ra,0xffffe
    80002eb8:	270080e7          	jalr	624(ra) # 80001124 <copy_and_swap>
    80002ebc:	fe0514e3          	bnez	a0,80002ea4 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002ec0:	00098463          	beqz	s3,80002ec8 <_Z8printIntiii+0x4c>
    80002ec4:	0804c463          	bltz	s1,80002f4c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002ec8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002ecc:	00000593          	li	a1,0
    }

    i = 0;
    80002ed0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002ed4:	0009079b          	sext.w	a5,s2
    80002ed8:	0325773b          	remuw	a4,a0,s2
    80002edc:	00048613          	mv	a2,s1
    80002ee0:	0014849b          	addiw	s1,s1,1
    80002ee4:	02071693          	slli	a3,a4,0x20
    80002ee8:	0206d693          	srli	a3,a3,0x20
    80002eec:	00004717          	auipc	a4,0x4
    80002ef0:	4c470713          	addi	a4,a4,1220 # 800073b0 <digits>
    80002ef4:	00d70733          	add	a4,a4,a3
    80002ef8:	00074683          	lbu	a3,0(a4)
    80002efc:	fd040713          	addi	a4,s0,-48
    80002f00:	00c70733          	add	a4,a4,a2
    80002f04:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002f08:	0005071b          	sext.w	a4,a0
    80002f0c:	0325553b          	divuw	a0,a0,s2
    80002f10:	fcf772e3          	bgeu	a4,a5,80002ed4 <_Z8printIntiii+0x58>
    if(neg)
    80002f14:	00058c63          	beqz	a1,80002f2c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002f18:	fd040793          	addi	a5,s0,-48
    80002f1c:	009784b3          	add	s1,a5,s1
    80002f20:	02d00793          	li	a5,45
    80002f24:	fef48823          	sb	a5,-16(s1)
    80002f28:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002f2c:	fff4849b          	addiw	s1,s1,-1
    80002f30:	0204c463          	bltz	s1,80002f58 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002f34:	fd040793          	addi	a5,s0,-48
    80002f38:	009787b3          	add	a5,a5,s1
    80002f3c:	ff07c503          	lbu	a0,-16(a5)
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	448080e7          	jalr	1096(ra) # 80001388 <_Z4putcc>
    80002f48:	fe5ff06f          	j	80002f2c <_Z8printIntiii+0xb0>
        x = -xx;
    80002f4c:	4090053b          	negw	a0,s1
        neg = 1;
    80002f50:	00100593          	li	a1,1
        x = -xx;
    80002f54:	f7dff06f          	j	80002ed0 <_Z8printIntiii+0x54>

    UNLOCK();
    80002f58:	00000613          	li	a2,0
    80002f5c:	00100593          	li	a1,1
    80002f60:	00004517          	auipc	a0,0x4
    80002f64:	52050513          	addi	a0,a0,1312 # 80007480 <lockPrint>
    80002f68:	ffffe097          	auipc	ra,0xffffe
    80002f6c:	1bc080e7          	jalr	444(ra) # 80001124 <copy_and_swap>
    80002f70:	fe0514e3          	bnez	a0,80002f58 <_Z8printIntiii+0xdc>
    80002f74:	03813083          	ld	ra,56(sp)
    80002f78:	03013403          	ld	s0,48(sp)
    80002f7c:	02813483          	ld	s1,40(sp)
    80002f80:	02013903          	ld	s2,32(sp)
    80002f84:	01813983          	ld	s3,24(sp)
    80002f88:	04010113          	addi	sp,sp,64
    80002f8c:	00008067          	ret

0000000080002f90 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "../lib/mem.h"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002f90:	fd010113          	addi	sp,sp,-48
    80002f94:	02113423          	sd	ra,40(sp)
    80002f98:	02813023          	sd	s0,32(sp)
    80002f9c:	00913c23          	sd	s1,24(sp)
    80002fa0:	01213823          	sd	s2,16(sp)
    80002fa4:	01313423          	sd	s3,8(sp)
    80002fa8:	03010413          	addi	s0,sp,48
    80002fac:	00050493          	mv	s1,a0
    80002fb0:	00058913          	mv	s2,a1
    80002fb4:	0015879b          	addiw	a5,a1,1
    80002fb8:	0007851b          	sext.w	a0,a5
    80002fbc:	00f4a023          	sw	a5,0(s1)
    80002fc0:	0004a823          	sw	zero,16(s1)
    80002fc4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)__mem_alloc(sizeof(int) * cap);
    80002fc8:	00251513          	slli	a0,a0,0x2
    80002fcc:	00003097          	auipc	ra,0x3
    80002fd0:	86c080e7          	jalr	-1940(ra) # 80005838 <__mem_alloc>
    80002fd4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002fd8:	01000513          	li	a0,16
    80002fdc:	fffff097          	auipc	ra,0xfffff
    80002fe0:	404080e7          	jalr	1028(ra) # 800023e0 <_Znwm>
    80002fe4:	00050993          	mv	s3,a0
    80002fe8:	00000593          	li	a1,0
    80002fec:	ffffe097          	auipc	ra,0xffffe
    80002ff0:	53c080e7          	jalr	1340(ra) # 80001528 <_ZN9SemaphoreC1Ej>
    80002ff4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002ff8:	01000513          	li	a0,16
    80002ffc:	fffff097          	auipc	ra,0xfffff
    80003000:	3e4080e7          	jalr	996(ra) # 800023e0 <_Znwm>
    80003004:	00050993          	mv	s3,a0
    80003008:	00090593          	mv	a1,s2
    8000300c:	ffffe097          	auipc	ra,0xffffe
    80003010:	51c080e7          	jalr	1308(ra) # 80001528 <_ZN9SemaphoreC1Ej>
    80003014:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80003018:	01000513          	li	a0,16
    8000301c:	fffff097          	auipc	ra,0xfffff
    80003020:	3c4080e7          	jalr	964(ra) # 800023e0 <_Znwm>
    80003024:	00050913          	mv	s2,a0
    80003028:	00100593          	li	a1,1
    8000302c:	ffffe097          	auipc	ra,0xffffe
    80003030:	4fc080e7          	jalr	1276(ra) # 80001528 <_ZN9SemaphoreC1Ej>
    80003034:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003038:	01000513          	li	a0,16
    8000303c:	fffff097          	auipc	ra,0xfffff
    80003040:	3a4080e7          	jalr	932(ra) # 800023e0 <_Znwm>
    80003044:	00050913          	mv	s2,a0
    80003048:	00100593          	li	a1,1
    8000304c:	ffffe097          	auipc	ra,0xffffe
    80003050:	4dc080e7          	jalr	1244(ra) # 80001528 <_ZN9SemaphoreC1Ej>
    80003054:	0324b823          	sd	s2,48(s1)
}
    80003058:	02813083          	ld	ra,40(sp)
    8000305c:	02013403          	ld	s0,32(sp)
    80003060:	01813483          	ld	s1,24(sp)
    80003064:	01013903          	ld	s2,16(sp)
    80003068:	00813983          	ld	s3,8(sp)
    8000306c:	03010113          	addi	sp,sp,48
    80003070:	00008067          	ret
    80003074:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003078:	00098513          	mv	a0,s3
    8000307c:	fffff097          	auipc	ra,0xfffff
    80003080:	3b4080e7          	jalr	948(ra) # 80002430 <_ZdlPv>
    80003084:	00048513          	mv	a0,s1
    80003088:	00005097          	auipc	ra,0x5
    8000308c:	4d0080e7          	jalr	1232(ra) # 80008558 <_Unwind_Resume>
    80003090:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003094:	00098513          	mv	a0,s3
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	398080e7          	jalr	920(ra) # 80002430 <_ZdlPv>
    800030a0:	00048513          	mv	a0,s1
    800030a4:	00005097          	auipc	ra,0x5
    800030a8:	4b4080e7          	jalr	1204(ra) # 80008558 <_Unwind_Resume>
    800030ac:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800030b0:	00090513          	mv	a0,s2
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	37c080e7          	jalr	892(ra) # 80002430 <_ZdlPv>
    800030bc:	00048513          	mv	a0,s1
    800030c0:	00005097          	auipc	ra,0x5
    800030c4:	498080e7          	jalr	1176(ra) # 80008558 <_Unwind_Resume>
    800030c8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800030cc:	00090513          	mv	a0,s2
    800030d0:	fffff097          	auipc	ra,0xfffff
    800030d4:	360080e7          	jalr	864(ra) # 80002430 <_ZdlPv>
    800030d8:	00048513          	mv	a0,s1
    800030dc:	00005097          	auipc	ra,0x5
    800030e0:	47c080e7          	jalr	1148(ra) # 80008558 <_Unwind_Resume>

00000000800030e4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800030e4:	fe010113          	addi	sp,sp,-32
    800030e8:	00113c23          	sd	ra,24(sp)
    800030ec:	00813823          	sd	s0,16(sp)
    800030f0:	00913423          	sd	s1,8(sp)
    800030f4:	01213023          	sd	s2,0(sp)
    800030f8:	02010413          	addi	s0,sp,32
    800030fc:	00050493          	mv	s1,a0
    80003100:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80003104:	01853503          	ld	a0,24(a0)
    80003108:	ffffe097          	auipc	ra,0xffffe
    8000310c:	484080e7          	jalr	1156(ra) # 8000158c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003110:	0304b503          	ld	a0,48(s1)
    80003114:	ffffe097          	auipc	ra,0xffffe
    80003118:	478080e7          	jalr	1144(ra) # 8000158c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000311c:	0084b783          	ld	a5,8(s1)
    80003120:	0144a703          	lw	a4,20(s1)
    80003124:	00271713          	slli	a4,a4,0x2
    80003128:	00e787b3          	add	a5,a5,a4
    8000312c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003130:	0144a783          	lw	a5,20(s1)
    80003134:	0017879b          	addiw	a5,a5,1
    80003138:	0004a703          	lw	a4,0(s1)
    8000313c:	02e7e7bb          	remw	a5,a5,a4
    80003140:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003144:	0304b503          	ld	a0,48(s1)
    80003148:	ffffe097          	auipc	ra,0xffffe
    8000314c:	418080e7          	jalr	1048(ra) # 80001560 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003150:	0204b503          	ld	a0,32(s1)
    80003154:	ffffe097          	auipc	ra,0xffffe
    80003158:	40c080e7          	jalr	1036(ra) # 80001560 <_ZN9Semaphore6signalEv>

}
    8000315c:	01813083          	ld	ra,24(sp)
    80003160:	01013403          	ld	s0,16(sp)
    80003164:	00813483          	ld	s1,8(sp)
    80003168:	00013903          	ld	s2,0(sp)
    8000316c:	02010113          	addi	sp,sp,32
    80003170:	00008067          	ret

0000000080003174 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003174:	fe010113          	addi	sp,sp,-32
    80003178:	00113c23          	sd	ra,24(sp)
    8000317c:	00813823          	sd	s0,16(sp)
    80003180:	00913423          	sd	s1,8(sp)
    80003184:	01213023          	sd	s2,0(sp)
    80003188:	02010413          	addi	s0,sp,32
    8000318c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003190:	02053503          	ld	a0,32(a0)
    80003194:	ffffe097          	auipc	ra,0xffffe
    80003198:	3f8080e7          	jalr	1016(ra) # 8000158c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000319c:	0284b503          	ld	a0,40(s1)
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	3ec080e7          	jalr	1004(ra) # 8000158c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800031a8:	0084b703          	ld	a4,8(s1)
    800031ac:	0104a783          	lw	a5,16(s1)
    800031b0:	00279693          	slli	a3,a5,0x2
    800031b4:	00d70733          	add	a4,a4,a3
    800031b8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800031bc:	0017879b          	addiw	a5,a5,1
    800031c0:	0004a703          	lw	a4,0(s1)
    800031c4:	02e7e7bb          	remw	a5,a5,a4
    800031c8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800031cc:	0284b503          	ld	a0,40(s1)
    800031d0:	ffffe097          	auipc	ra,0xffffe
    800031d4:	390080e7          	jalr	912(ra) # 80001560 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800031d8:	0184b503          	ld	a0,24(s1)
    800031dc:	ffffe097          	auipc	ra,0xffffe
    800031e0:	384080e7          	jalr	900(ra) # 80001560 <_ZN9Semaphore6signalEv>

    return ret;
}
    800031e4:	00090513          	mv	a0,s2
    800031e8:	01813083          	ld	ra,24(sp)
    800031ec:	01013403          	ld	s0,16(sp)
    800031f0:	00813483          	ld	s1,8(sp)
    800031f4:	00013903          	ld	s2,0(sp)
    800031f8:	02010113          	addi	sp,sp,32
    800031fc:	00008067          	ret

0000000080003200 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003200:	fe010113          	addi	sp,sp,-32
    80003204:	00113c23          	sd	ra,24(sp)
    80003208:	00813823          	sd	s0,16(sp)
    8000320c:	00913423          	sd	s1,8(sp)
    80003210:	01213023          	sd	s2,0(sp)
    80003214:	02010413          	addi	s0,sp,32
    80003218:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000321c:	02853503          	ld	a0,40(a0)
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	36c080e7          	jalr	876(ra) # 8000158c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003228:	0304b503          	ld	a0,48(s1)
    8000322c:	ffffe097          	auipc	ra,0xffffe
    80003230:	360080e7          	jalr	864(ra) # 8000158c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003234:	0144a783          	lw	a5,20(s1)
    80003238:	0104a903          	lw	s2,16(s1)
    8000323c:	0327ce63          	blt	a5,s2,80003278 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003240:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003244:	0304b503          	ld	a0,48(s1)
    80003248:	ffffe097          	auipc	ra,0xffffe
    8000324c:	318080e7          	jalr	792(ra) # 80001560 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003250:	0284b503          	ld	a0,40(s1)
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	30c080e7          	jalr	780(ra) # 80001560 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000325c:	00090513          	mv	a0,s2
    80003260:	01813083          	ld	ra,24(sp)
    80003264:	01013403          	ld	s0,16(sp)
    80003268:	00813483          	ld	s1,8(sp)
    8000326c:	00013903          	ld	s2,0(sp)
    80003270:	02010113          	addi	sp,sp,32
    80003274:	00008067          	ret
        ret = cap - head + tail;
    80003278:	0004a703          	lw	a4,0(s1)
    8000327c:	4127093b          	subw	s2,a4,s2
    80003280:	00f9093b          	addw	s2,s2,a5
    80003284:	fc1ff06f          	j	80003244 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003288 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003288:	fe010113          	addi	sp,sp,-32
    8000328c:	00113c23          	sd	ra,24(sp)
    80003290:	00813823          	sd	s0,16(sp)
    80003294:	00913423          	sd	s1,8(sp)
    80003298:	02010413          	addi	s0,sp,32
    8000329c:	00050493          	mv	s1,a0
    putc('\n');
    800032a0:	00a00513          	li	a0,10
    800032a4:	ffffe097          	auipc	ra,0xffffe
    800032a8:	0e4080e7          	jalr	228(ra) # 80001388 <_Z4putcc>
    printString("Buffer deleted!\n");
    800032ac:	00003517          	auipc	a0,0x3
    800032b0:	e8c50513          	addi	a0,a0,-372 # 80006138 <kvmincrease+0x688>
    800032b4:	00000097          	auipc	ra,0x0
    800032b8:	a30080e7          	jalr	-1488(ra) # 80002ce4 <_Z11printStringPKc>
    while (getCnt()) {
    800032bc:	00048513          	mv	a0,s1
    800032c0:	00000097          	auipc	ra,0x0
    800032c4:	f40080e7          	jalr	-192(ra) # 80003200 <_ZN9BufferCPP6getCntEv>
    800032c8:	02050c63          	beqz	a0,80003300 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800032cc:	0084b783          	ld	a5,8(s1)
    800032d0:	0104a703          	lw	a4,16(s1)
    800032d4:	00271713          	slli	a4,a4,0x2
    800032d8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800032dc:	0007c503          	lbu	a0,0(a5)
    800032e0:	ffffe097          	auipc	ra,0xffffe
    800032e4:	0a8080e7          	jalr	168(ra) # 80001388 <_Z4putcc>
        head = (head + 1) % cap;
    800032e8:	0104a783          	lw	a5,16(s1)
    800032ec:	0017879b          	addiw	a5,a5,1
    800032f0:	0004a703          	lw	a4,0(s1)
    800032f4:	02e7e7bb          	remw	a5,a5,a4
    800032f8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800032fc:	fc1ff06f          	j	800032bc <_ZN9BufferCPPD1Ev+0x34>
    putc('!');
    80003300:	02100513          	li	a0,33
    80003304:	ffffe097          	auipc	ra,0xffffe
    80003308:	084080e7          	jalr	132(ra) # 80001388 <_Z4putcc>
    putc('\n');
    8000330c:	00a00513          	li	a0,10
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	078080e7          	jalr	120(ra) # 80001388 <_Z4putcc>
    __mem_free(buffer);
    80003318:	0084b503          	ld	a0,8(s1)
    8000331c:	00002097          	auipc	ra,0x2
    80003320:	450080e7          	jalr	1104(ra) # 8000576c <__mem_free>
    delete itemAvailable;
    80003324:	0204b503          	ld	a0,32(s1)
    80003328:	00050863          	beqz	a0,80003338 <_ZN9BufferCPPD1Ev+0xb0>
    8000332c:	00053783          	ld	a5,0(a0)
    80003330:	0087b783          	ld	a5,8(a5)
    80003334:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003338:	0184b503          	ld	a0,24(s1)
    8000333c:	00050863          	beqz	a0,8000334c <_ZN9BufferCPPD1Ev+0xc4>
    80003340:	00053783          	ld	a5,0(a0)
    80003344:	0087b783          	ld	a5,8(a5)
    80003348:	000780e7          	jalr	a5
    delete mutexTail;
    8000334c:	0304b503          	ld	a0,48(s1)
    80003350:	00050863          	beqz	a0,80003360 <_ZN9BufferCPPD1Ev+0xd8>
    80003354:	00053783          	ld	a5,0(a0)
    80003358:	0087b783          	ld	a5,8(a5)
    8000335c:	000780e7          	jalr	a5
    delete mutexHead;
    80003360:	0284b503          	ld	a0,40(s1)
    80003364:	00050863          	beqz	a0,80003374 <_ZN9BufferCPPD1Ev+0xec>
    80003368:	00053783          	ld	a5,0(a0)
    8000336c:	0087b783          	ld	a5,8(a5)
    80003370:	000780e7          	jalr	a5
}
    80003374:	01813083          	ld	ra,24(sp)
    80003378:	01013403          	ld	s0,16(sp)
    8000337c:	00813483          	ld	s1,8(sp)
    80003380:	02010113          	addi	sp,sp,32
    80003384:	00008067          	ret

0000000080003388 <_ZN6BufferC1Ei>:
#include "buffer.hpp"
#include "../lib/mem.h"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	01213023          	sd	s2,0(sp)
    8000339c:	02010413          	addi	s0,sp,32
    800033a0:	00050493          	mv	s1,a0
    800033a4:	00058913          	mv	s2,a1
    800033a8:	0015879b          	addiw	a5,a1,1
    800033ac:	0007851b          	sext.w	a0,a5
    800033b0:	00f4a023          	sw	a5,0(s1)
    800033b4:	0004a823          	sw	zero,16(s1)
    800033b8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)__mem_alloc(sizeof(int) * cap);
    800033bc:	00251513          	slli	a0,a0,0x2
    800033c0:	00002097          	auipc	ra,0x2
    800033c4:	478080e7          	jalr	1144(ra) # 80005838 <__mem_alloc>
    800033c8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800033cc:	00000593          	li	a1,0
    800033d0:	02048513          	addi	a0,s1,32
    800033d4:	ffffe097          	auipc	ra,0xffffe
    800033d8:	e94080e7          	jalr	-364(ra) # 80001268 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    800033dc:	00090593          	mv	a1,s2
    800033e0:	01848513          	addi	a0,s1,24
    800033e4:	ffffe097          	auipc	ra,0xffffe
    800033e8:	e84080e7          	jalr	-380(ra) # 80001268 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    800033ec:	00100593          	li	a1,1
    800033f0:	02848513          	addi	a0,s1,40
    800033f4:	ffffe097          	auipc	ra,0xffffe
    800033f8:	e74080e7          	jalr	-396(ra) # 80001268 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    800033fc:	00100593          	li	a1,1
    80003400:	03048513          	addi	a0,s1,48
    80003404:	ffffe097          	auipc	ra,0xffffe
    80003408:	e64080e7          	jalr	-412(ra) # 80001268 <_Z8sem_openPP4_semj>
}
    8000340c:	01813083          	ld	ra,24(sp)
    80003410:	01013403          	ld	s0,16(sp)
    80003414:	00813483          	ld	s1,8(sp)
    80003418:	00013903          	ld	s2,0(sp)
    8000341c:	02010113          	addi	sp,sp,32
    80003420:	00008067          	ret

0000000080003424 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003424:	fe010113          	addi	sp,sp,-32
    80003428:	00113c23          	sd	ra,24(sp)
    8000342c:	00813823          	sd	s0,16(sp)
    80003430:	00913423          	sd	s1,8(sp)
    80003434:	01213023          	sd	s2,0(sp)
    80003438:	02010413          	addi	s0,sp,32
    8000343c:	00050493          	mv	s1,a0
    80003440:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003444:	01853503          	ld	a0,24(a0)
    80003448:	ffffe097          	auipc	ra,0xffffe
    8000344c:	e9c080e7          	jalr	-356(ra) # 800012e4 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80003450:	0304b503          	ld	a0,48(s1)
    80003454:	ffffe097          	auipc	ra,0xffffe
    80003458:	e90080e7          	jalr	-368(ra) # 800012e4 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    8000345c:	0084b783          	ld	a5,8(s1)
    80003460:	0144a703          	lw	a4,20(s1)
    80003464:	00271713          	slli	a4,a4,0x2
    80003468:	00e787b3          	add	a5,a5,a4
    8000346c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003470:	0144a783          	lw	a5,20(s1)
    80003474:	0017879b          	addiw	a5,a5,1
    80003478:	0004a703          	lw	a4,0(s1)
    8000347c:	02e7e7bb          	remw	a5,a5,a4
    80003480:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003484:	0304b503          	ld	a0,48(s1)
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	e94080e7          	jalr	-364(ra) # 8000131c <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80003490:	0204b503          	ld	a0,32(s1)
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	e88080e7          	jalr	-376(ra) # 8000131c <_Z10sem_signalP4_sem>

}
    8000349c:	01813083          	ld	ra,24(sp)
    800034a0:	01013403          	ld	s0,16(sp)
    800034a4:	00813483          	ld	s1,8(sp)
    800034a8:	00013903          	ld	s2,0(sp)
    800034ac:	02010113          	addi	sp,sp,32
    800034b0:	00008067          	ret

00000000800034b4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800034b4:	fe010113          	addi	sp,sp,-32
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	00813823          	sd	s0,16(sp)
    800034c0:	00913423          	sd	s1,8(sp)
    800034c4:	01213023          	sd	s2,0(sp)
    800034c8:	02010413          	addi	s0,sp,32
    800034cc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800034d0:	02053503          	ld	a0,32(a0)
    800034d4:	ffffe097          	auipc	ra,0xffffe
    800034d8:	e10080e7          	jalr	-496(ra) # 800012e4 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    800034dc:	0284b503          	ld	a0,40(s1)
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	e04080e7          	jalr	-508(ra) # 800012e4 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    800034e8:	0084b703          	ld	a4,8(s1)
    800034ec:	0104a783          	lw	a5,16(s1)
    800034f0:	00279693          	slli	a3,a5,0x2
    800034f4:	00d70733          	add	a4,a4,a3
    800034f8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800034fc:	0017879b          	addiw	a5,a5,1
    80003500:	0004a703          	lw	a4,0(s1)
    80003504:	02e7e7bb          	remw	a5,a5,a4
    80003508:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000350c:	0284b503          	ld	a0,40(s1)
    80003510:	ffffe097          	auipc	ra,0xffffe
    80003514:	e0c080e7          	jalr	-500(ra) # 8000131c <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80003518:	0184b503          	ld	a0,24(s1)
    8000351c:	ffffe097          	auipc	ra,0xffffe
    80003520:	e00080e7          	jalr	-512(ra) # 8000131c <_Z10sem_signalP4_sem>

    return ret;
}
    80003524:	00090513          	mv	a0,s2
    80003528:	01813083          	ld	ra,24(sp)
    8000352c:	01013403          	ld	s0,16(sp)
    80003530:	00813483          	ld	s1,8(sp)
    80003534:	00013903          	ld	s2,0(sp)
    80003538:	02010113          	addi	sp,sp,32
    8000353c:	00008067          	ret

0000000080003540 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003540:	fe010113          	addi	sp,sp,-32
    80003544:	00113c23          	sd	ra,24(sp)
    80003548:	00813823          	sd	s0,16(sp)
    8000354c:	00913423          	sd	s1,8(sp)
    80003550:	01213023          	sd	s2,0(sp)
    80003554:	02010413          	addi	s0,sp,32
    80003558:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000355c:	02853503          	ld	a0,40(a0)
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	d84080e7          	jalr	-636(ra) # 800012e4 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80003568:	0304b503          	ld	a0,48(s1)
    8000356c:	ffffe097          	auipc	ra,0xffffe
    80003570:	d78080e7          	jalr	-648(ra) # 800012e4 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80003574:	0144a783          	lw	a5,20(s1)
    80003578:	0104a903          	lw	s2,16(s1)
    8000357c:	0327ce63          	blt	a5,s2,800035b8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003580:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003584:	0304b503          	ld	a0,48(s1)
    80003588:	ffffe097          	auipc	ra,0xffffe
    8000358c:	d94080e7          	jalr	-620(ra) # 8000131c <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80003590:	0284b503          	ld	a0,40(s1)
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	d88080e7          	jalr	-632(ra) # 8000131c <_Z10sem_signalP4_sem>

    return ret;
}
    8000359c:	00090513          	mv	a0,s2
    800035a0:	01813083          	ld	ra,24(sp)
    800035a4:	01013403          	ld	s0,16(sp)
    800035a8:	00813483          	ld	s1,8(sp)
    800035ac:	00013903          	ld	s2,0(sp)
    800035b0:	02010113          	addi	sp,sp,32
    800035b4:	00008067          	ret
        ret = cap - head + tail;
    800035b8:	0004a703          	lw	a4,0(s1)
    800035bc:	4127093b          	subw	s2,a4,s2
    800035c0:	00f9093b          	addw	s2,s2,a5
    800035c4:	fc1ff06f          	j	80003584 <_ZN6Buffer6getCntEv+0x44>

00000000800035c8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800035c8:	fe010113          	addi	sp,sp,-32
    800035cc:	00113c23          	sd	ra,24(sp)
    800035d0:	00813823          	sd	s0,16(sp)
    800035d4:	00913423          	sd	s1,8(sp)
    800035d8:	02010413          	addi	s0,sp,32
    800035dc:	00050493          	mv	s1,a0
    putc('\n');
    800035e0:	00a00513          	li	a0,10
    800035e4:	ffffe097          	auipc	ra,0xffffe
    800035e8:	da4080e7          	jalr	-604(ra) # 80001388 <_Z4putcc>
    printString("Buffer deleted!\n");
    800035ec:	00003517          	auipc	a0,0x3
    800035f0:	b4c50513          	addi	a0,a0,-1204 # 80006138 <kvmincrease+0x688>
    800035f4:	fffff097          	auipc	ra,0xfffff
    800035f8:	6f0080e7          	jalr	1776(ra) # 80002ce4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800035fc:	00048513          	mv	a0,s1
    80003600:	00000097          	auipc	ra,0x0
    80003604:	f40080e7          	jalr	-192(ra) # 80003540 <_ZN6Buffer6getCntEv>
    80003608:	02a05c63          	blez	a0,80003640 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000360c:	0084b783          	ld	a5,8(s1)
    80003610:	0104a703          	lw	a4,16(s1)
    80003614:	00271713          	slli	a4,a4,0x2
    80003618:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000361c:	0007c503          	lbu	a0,0(a5)
    80003620:	ffffe097          	auipc	ra,0xffffe
    80003624:	d68080e7          	jalr	-664(ra) # 80001388 <_Z4putcc>
        head = (head + 1) % cap;
    80003628:	0104a783          	lw	a5,16(s1)
    8000362c:	0017879b          	addiw	a5,a5,1
    80003630:	0004a703          	lw	a4,0(s1)
    80003634:	02e7e7bb          	remw	a5,a5,a4
    80003638:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000363c:	fc1ff06f          	j	800035fc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003640:	02100513          	li	a0,33
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	d44080e7          	jalr	-700(ra) # 80001388 <_Z4putcc>
    putc('\n');
    8000364c:	00a00513          	li	a0,10
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	d38080e7          	jalr	-712(ra) # 80001388 <_Z4putcc>
    __mem_free(buffer);
    80003658:	0084b503          	ld	a0,8(s1)
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	110080e7          	jalr	272(ra) # 8000576c <__mem_free>
    sem_close(itemAvailable);
    80003664:	0204b503          	ld	a0,32(s1)
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	c44080e7          	jalr	-956(ra) # 800012ac <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80003670:	0184b503          	ld	a0,24(s1)
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	c38080e7          	jalr	-968(ra) # 800012ac <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    8000367c:	0304b503          	ld	a0,48(s1)
    80003680:	ffffe097          	auipc	ra,0xffffe
    80003684:	c2c080e7          	jalr	-980(ra) # 800012ac <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80003688:	0284b503          	ld	a0,40(s1)
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	c20080e7          	jalr	-992(ra) # 800012ac <_Z9sem_closeP4_sem>
}
    80003694:	01813083          	ld	ra,24(sp)
    80003698:	01013403          	ld	s0,16(sp)
    8000369c:	00813483          	ld	s1,8(sp)
    800036a0:	02010113          	addi	sp,sp,32
    800036a4:	00008067          	ret

00000000800036a8 <start>:
    800036a8:	ff010113          	addi	sp,sp,-16
    800036ac:	00813423          	sd	s0,8(sp)
    800036b0:	01010413          	addi	s0,sp,16
    800036b4:	300027f3          	csrr	a5,mstatus
    800036b8:	ffffe737          	lui	a4,0xffffe
    800036bc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff60ff>
    800036c0:	00e7f7b3          	and	a5,a5,a4
    800036c4:	00001737          	lui	a4,0x1
    800036c8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800036cc:	00e7e7b3          	or	a5,a5,a4
    800036d0:	30079073          	csrw	mstatus,a5
    800036d4:	00000797          	auipc	a5,0x0
    800036d8:	16078793          	addi	a5,a5,352 # 80003834 <system_main>
    800036dc:	34179073          	csrw	mepc,a5
    800036e0:	00000793          	li	a5,0
    800036e4:	18079073          	csrw	satp,a5
    800036e8:	000107b7          	lui	a5,0x10
    800036ec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800036f0:	30279073          	csrw	medeleg,a5
    800036f4:	30379073          	csrw	mideleg,a5
    800036f8:	104027f3          	csrr	a5,sie
    800036fc:	2227e793          	ori	a5,a5,546
    80003700:	10479073          	csrw	sie,a5
    80003704:	fff00793          	li	a5,-1
    80003708:	00a7d793          	srli	a5,a5,0xa
    8000370c:	3b079073          	csrw	pmpaddr0,a5
    80003710:	00f00793          	li	a5,15
    80003714:	3a079073          	csrw	pmpcfg0,a5
    80003718:	f14027f3          	csrr	a5,mhartid
    8000371c:	0200c737          	lui	a4,0x200c
    80003720:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003724:	0007869b          	sext.w	a3,a5
    80003728:	00269713          	slli	a4,a3,0x2
    8000372c:	000f4637          	lui	a2,0xf4
    80003730:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003734:	00d70733          	add	a4,a4,a3
    80003738:	0037979b          	slliw	a5,a5,0x3
    8000373c:	020046b7          	lui	a3,0x2004
    80003740:	00d787b3          	add	a5,a5,a3
    80003744:	00c585b3          	add	a1,a1,a2
    80003748:	00371693          	slli	a3,a4,0x3
    8000374c:	00004717          	auipc	a4,0x4
    80003750:	d4470713          	addi	a4,a4,-700 # 80007490 <timer_scratch>
    80003754:	00b7b023          	sd	a1,0(a5)
    80003758:	00d70733          	add	a4,a4,a3
    8000375c:	00f73c23          	sd	a5,24(a4)
    80003760:	02c73023          	sd	a2,32(a4)
    80003764:	34071073          	csrw	mscratch,a4
    80003768:	00000797          	auipc	a5,0x0
    8000376c:	6e878793          	addi	a5,a5,1768 # 80003e50 <timervec>
    80003770:	30579073          	csrw	mtvec,a5
    80003774:	300027f3          	csrr	a5,mstatus
    80003778:	0087e793          	ori	a5,a5,8
    8000377c:	30079073          	csrw	mstatus,a5
    80003780:	304027f3          	csrr	a5,mie
    80003784:	0807e793          	ori	a5,a5,128
    80003788:	30479073          	csrw	mie,a5
    8000378c:	f14027f3          	csrr	a5,mhartid
    80003790:	0007879b          	sext.w	a5,a5
    80003794:	00078213          	mv	tp,a5
    80003798:	30200073          	mret
    8000379c:	00813403          	ld	s0,8(sp)
    800037a0:	01010113          	addi	sp,sp,16
    800037a4:	00008067          	ret

00000000800037a8 <timerinit>:
    800037a8:	ff010113          	addi	sp,sp,-16
    800037ac:	00813423          	sd	s0,8(sp)
    800037b0:	01010413          	addi	s0,sp,16
    800037b4:	f14027f3          	csrr	a5,mhartid
    800037b8:	0200c737          	lui	a4,0x200c
    800037bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800037c0:	0007869b          	sext.w	a3,a5
    800037c4:	00269713          	slli	a4,a3,0x2
    800037c8:	000f4637          	lui	a2,0xf4
    800037cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800037d0:	00d70733          	add	a4,a4,a3
    800037d4:	0037979b          	slliw	a5,a5,0x3
    800037d8:	020046b7          	lui	a3,0x2004
    800037dc:	00d787b3          	add	a5,a5,a3
    800037e0:	00c585b3          	add	a1,a1,a2
    800037e4:	00371693          	slli	a3,a4,0x3
    800037e8:	00004717          	auipc	a4,0x4
    800037ec:	ca870713          	addi	a4,a4,-856 # 80007490 <timer_scratch>
    800037f0:	00b7b023          	sd	a1,0(a5)
    800037f4:	00d70733          	add	a4,a4,a3
    800037f8:	00f73c23          	sd	a5,24(a4)
    800037fc:	02c73023          	sd	a2,32(a4)
    80003800:	34071073          	csrw	mscratch,a4
    80003804:	00000797          	auipc	a5,0x0
    80003808:	64c78793          	addi	a5,a5,1612 # 80003e50 <timervec>
    8000380c:	30579073          	csrw	mtvec,a5
    80003810:	300027f3          	csrr	a5,mstatus
    80003814:	0087e793          	ori	a5,a5,8
    80003818:	30079073          	csrw	mstatus,a5
    8000381c:	304027f3          	csrr	a5,mie
    80003820:	0807e793          	ori	a5,a5,128
    80003824:	30479073          	csrw	mie,a5
    80003828:	00813403          	ld	s0,8(sp)
    8000382c:	01010113          	addi	sp,sp,16
    80003830:	00008067          	ret

0000000080003834 <system_main>:
    80003834:	fe010113          	addi	sp,sp,-32
    80003838:	00813823          	sd	s0,16(sp)
    8000383c:	00913423          	sd	s1,8(sp)
    80003840:	00113c23          	sd	ra,24(sp)
    80003844:	02010413          	addi	s0,sp,32
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	0c4080e7          	jalr	196(ra) # 8000390c <cpuid>
    80003850:	00004497          	auipc	s1,0x4
    80003854:	bc048493          	addi	s1,s1,-1088 # 80007410 <started>
    80003858:	02050263          	beqz	a0,8000387c <system_main+0x48>
    8000385c:	0004a783          	lw	a5,0(s1)
    80003860:	0007879b          	sext.w	a5,a5
    80003864:	fe078ce3          	beqz	a5,8000385c <system_main+0x28>
    80003868:	0ff0000f          	fence
    8000386c:	00003517          	auipc	a0,0x3
    80003870:	91450513          	addi	a0,a0,-1772 # 80006180 <kvmincrease+0x6d0>
    80003874:	00001097          	auipc	ra,0x1
    80003878:	a78080e7          	jalr	-1416(ra) # 800042ec <panic>
    8000387c:	00001097          	auipc	ra,0x1
    80003880:	9cc080e7          	jalr	-1588(ra) # 80004248 <consoleinit>
    80003884:	00001097          	auipc	ra,0x1
    80003888:	158080e7          	jalr	344(ra) # 800049dc <printfinit>
    8000388c:	00002517          	auipc	a0,0x2
    80003890:	7ac50513          	addi	a0,a0,1964 # 80006038 <kvmincrease+0x588>
    80003894:	00001097          	auipc	ra,0x1
    80003898:	ab4080e7          	jalr	-1356(ra) # 80004348 <__printf>
    8000389c:	00003517          	auipc	a0,0x3
    800038a0:	8b450513          	addi	a0,a0,-1868 # 80006150 <kvmincrease+0x6a0>
    800038a4:	00001097          	auipc	ra,0x1
    800038a8:	aa4080e7          	jalr	-1372(ra) # 80004348 <__printf>
    800038ac:	00002517          	auipc	a0,0x2
    800038b0:	78c50513          	addi	a0,a0,1932 # 80006038 <kvmincrease+0x588>
    800038b4:	00001097          	auipc	ra,0x1
    800038b8:	a94080e7          	jalr	-1388(ra) # 80004348 <__printf>
    800038bc:	00001097          	auipc	ra,0x1
    800038c0:	4ac080e7          	jalr	1196(ra) # 80004d68 <kinit>
    800038c4:	00000097          	auipc	ra,0x0
    800038c8:	148080e7          	jalr	328(ra) # 80003a0c <trapinit>
    800038cc:	00000097          	auipc	ra,0x0
    800038d0:	16c080e7          	jalr	364(ra) # 80003a38 <trapinithart>
    800038d4:	00000097          	auipc	ra,0x0
    800038d8:	5bc080e7          	jalr	1468(ra) # 80003e90 <plicinit>
    800038dc:	00000097          	auipc	ra,0x0
    800038e0:	5dc080e7          	jalr	1500(ra) # 80003eb8 <plicinithart>
    800038e4:	00000097          	auipc	ra,0x0
    800038e8:	078080e7          	jalr	120(ra) # 8000395c <userinit>
    800038ec:	0ff0000f          	fence
    800038f0:	00100793          	li	a5,1
    800038f4:	00003517          	auipc	a0,0x3
    800038f8:	87450513          	addi	a0,a0,-1932 # 80006168 <kvmincrease+0x6b8>
    800038fc:	00f4a023          	sw	a5,0(s1)
    80003900:	00001097          	auipc	ra,0x1
    80003904:	a48080e7          	jalr	-1464(ra) # 80004348 <__printf>
    80003908:	0000006f          	j	80003908 <system_main+0xd4>

000000008000390c <cpuid>:
    8000390c:	ff010113          	addi	sp,sp,-16
    80003910:	00813423          	sd	s0,8(sp)
    80003914:	01010413          	addi	s0,sp,16
    80003918:	00020513          	mv	a0,tp
    8000391c:	00813403          	ld	s0,8(sp)
    80003920:	0005051b          	sext.w	a0,a0
    80003924:	01010113          	addi	sp,sp,16
    80003928:	00008067          	ret

000000008000392c <mycpu>:
    8000392c:	ff010113          	addi	sp,sp,-16
    80003930:	00813423          	sd	s0,8(sp)
    80003934:	01010413          	addi	s0,sp,16
    80003938:	00020793          	mv	a5,tp
    8000393c:	00813403          	ld	s0,8(sp)
    80003940:	0007879b          	sext.w	a5,a5
    80003944:	00779793          	slli	a5,a5,0x7
    80003948:	00005517          	auipc	a0,0x5
    8000394c:	b7850513          	addi	a0,a0,-1160 # 800084c0 <cpus>
    80003950:	00f50533          	add	a0,a0,a5
    80003954:	01010113          	addi	sp,sp,16
    80003958:	00008067          	ret

000000008000395c <userinit>:
    8000395c:	ff010113          	addi	sp,sp,-16
    80003960:	00813423          	sd	s0,8(sp)
    80003964:	01010413          	addi	s0,sp,16
    80003968:	00813403          	ld	s0,8(sp)
    8000396c:	01010113          	addi	sp,sp,16
    80003970:	ffffe317          	auipc	t1,0xffffe
    80003974:	6d830067          	jr	1752(t1) # 80002048 <main>

0000000080003978 <either_copyout>:
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00813023          	sd	s0,0(sp)
    80003980:	00113423          	sd	ra,8(sp)
    80003984:	01010413          	addi	s0,sp,16
    80003988:	02051663          	bnez	a0,800039b4 <either_copyout+0x3c>
    8000398c:	00058513          	mv	a0,a1
    80003990:	00060593          	mv	a1,a2
    80003994:	0006861b          	sext.w	a2,a3
    80003998:	00002097          	auipc	ra,0x2
    8000399c:	c5c080e7          	jalr	-932(ra) # 800055f4 <__memmove>
    800039a0:	00813083          	ld	ra,8(sp)
    800039a4:	00013403          	ld	s0,0(sp)
    800039a8:	00000513          	li	a0,0
    800039ac:	01010113          	addi	sp,sp,16
    800039b0:	00008067          	ret
    800039b4:	00002517          	auipc	a0,0x2
    800039b8:	7f450513          	addi	a0,a0,2036 # 800061a8 <kvmincrease+0x6f8>
    800039bc:	00001097          	auipc	ra,0x1
    800039c0:	930080e7          	jalr	-1744(ra) # 800042ec <panic>

00000000800039c4 <either_copyin>:
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00813023          	sd	s0,0(sp)
    800039cc:	00113423          	sd	ra,8(sp)
    800039d0:	01010413          	addi	s0,sp,16
    800039d4:	02059463          	bnez	a1,800039fc <either_copyin+0x38>
    800039d8:	00060593          	mv	a1,a2
    800039dc:	0006861b          	sext.w	a2,a3
    800039e0:	00002097          	auipc	ra,0x2
    800039e4:	c14080e7          	jalr	-1004(ra) # 800055f4 <__memmove>
    800039e8:	00813083          	ld	ra,8(sp)
    800039ec:	00013403          	ld	s0,0(sp)
    800039f0:	00000513          	li	a0,0
    800039f4:	01010113          	addi	sp,sp,16
    800039f8:	00008067          	ret
    800039fc:	00002517          	auipc	a0,0x2
    80003a00:	7d450513          	addi	a0,a0,2004 # 800061d0 <kvmincrease+0x720>
    80003a04:	00001097          	auipc	ra,0x1
    80003a08:	8e8080e7          	jalr	-1816(ra) # 800042ec <panic>

0000000080003a0c <trapinit>:
    80003a0c:	ff010113          	addi	sp,sp,-16
    80003a10:	00813423          	sd	s0,8(sp)
    80003a14:	01010413          	addi	s0,sp,16
    80003a18:	00813403          	ld	s0,8(sp)
    80003a1c:	00002597          	auipc	a1,0x2
    80003a20:	7dc58593          	addi	a1,a1,2012 # 800061f8 <kvmincrease+0x748>
    80003a24:	00005517          	auipc	a0,0x5
    80003a28:	b1c50513          	addi	a0,a0,-1252 # 80008540 <tickslock>
    80003a2c:	01010113          	addi	sp,sp,16
    80003a30:	00001317          	auipc	t1,0x1
    80003a34:	5c830067          	jr	1480(t1) # 80004ff8 <initlock>

0000000080003a38 <trapinithart>:
    80003a38:	ff010113          	addi	sp,sp,-16
    80003a3c:	00813423          	sd	s0,8(sp)
    80003a40:	01010413          	addi	s0,sp,16
    80003a44:	00000797          	auipc	a5,0x0
    80003a48:	2fc78793          	addi	a5,a5,764 # 80003d40 <kernelvec>
    80003a4c:	10579073          	csrw	stvec,a5
    80003a50:	00813403          	ld	s0,8(sp)
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret

0000000080003a5c <usertrap>:
    80003a5c:	ff010113          	addi	sp,sp,-16
    80003a60:	00813423          	sd	s0,8(sp)
    80003a64:	01010413          	addi	s0,sp,16
    80003a68:	00813403          	ld	s0,8(sp)
    80003a6c:	01010113          	addi	sp,sp,16
    80003a70:	00008067          	ret

0000000080003a74 <usertrapret>:
    80003a74:	ff010113          	addi	sp,sp,-16
    80003a78:	00813423          	sd	s0,8(sp)
    80003a7c:	01010413          	addi	s0,sp,16
    80003a80:	00813403          	ld	s0,8(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <kerneltrap>:
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00813823          	sd	s0,16(sp)
    80003a94:	00113c23          	sd	ra,24(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	142025f3          	csrr	a1,scause
    80003aa4:	100027f3          	csrr	a5,sstatus
    80003aa8:	0027f793          	andi	a5,a5,2
    80003aac:	10079c63          	bnez	a5,80003bc4 <kerneltrap+0x138>
    80003ab0:	142027f3          	csrr	a5,scause
    80003ab4:	0207ce63          	bltz	a5,80003af0 <kerneltrap+0x64>
    80003ab8:	00002517          	auipc	a0,0x2
    80003abc:	78850513          	addi	a0,a0,1928 # 80006240 <kvmincrease+0x790>
    80003ac0:	00001097          	auipc	ra,0x1
    80003ac4:	888080e7          	jalr	-1912(ra) # 80004348 <__printf>
    80003ac8:	141025f3          	csrr	a1,sepc
    80003acc:	14302673          	csrr	a2,stval
    80003ad0:	00002517          	auipc	a0,0x2
    80003ad4:	78050513          	addi	a0,a0,1920 # 80006250 <kvmincrease+0x7a0>
    80003ad8:	00001097          	auipc	ra,0x1
    80003adc:	870080e7          	jalr	-1936(ra) # 80004348 <__printf>
    80003ae0:	00002517          	auipc	a0,0x2
    80003ae4:	78850513          	addi	a0,a0,1928 # 80006268 <kvmincrease+0x7b8>
    80003ae8:	00001097          	auipc	ra,0x1
    80003aec:	804080e7          	jalr	-2044(ra) # 800042ec <panic>
    80003af0:	0ff7f713          	andi	a4,a5,255
    80003af4:	00900693          	li	a3,9
    80003af8:	04d70063          	beq	a4,a3,80003b38 <kerneltrap+0xac>
    80003afc:	fff00713          	li	a4,-1
    80003b00:	03f71713          	slli	a4,a4,0x3f
    80003b04:	00170713          	addi	a4,a4,1
    80003b08:	fae798e3          	bne	a5,a4,80003ab8 <kerneltrap+0x2c>
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	e00080e7          	jalr	-512(ra) # 8000390c <cpuid>
    80003b14:	06050663          	beqz	a0,80003b80 <kerneltrap+0xf4>
    80003b18:	144027f3          	csrr	a5,sip
    80003b1c:	ffd7f793          	andi	a5,a5,-3
    80003b20:	14479073          	csrw	sip,a5
    80003b24:	01813083          	ld	ra,24(sp)
    80003b28:	01013403          	ld	s0,16(sp)
    80003b2c:	00813483          	ld	s1,8(sp)
    80003b30:	02010113          	addi	sp,sp,32
    80003b34:	00008067          	ret
    80003b38:	00000097          	auipc	ra,0x0
    80003b3c:	3cc080e7          	jalr	972(ra) # 80003f04 <plic_claim>
    80003b40:	00a00793          	li	a5,10
    80003b44:	00050493          	mv	s1,a0
    80003b48:	06f50863          	beq	a0,a5,80003bb8 <kerneltrap+0x12c>
    80003b4c:	fc050ce3          	beqz	a0,80003b24 <kerneltrap+0x98>
    80003b50:	00050593          	mv	a1,a0
    80003b54:	00002517          	auipc	a0,0x2
    80003b58:	6cc50513          	addi	a0,a0,1740 # 80006220 <kvmincrease+0x770>
    80003b5c:	00000097          	auipc	ra,0x0
    80003b60:	7ec080e7          	jalr	2028(ra) # 80004348 <__printf>
    80003b64:	01013403          	ld	s0,16(sp)
    80003b68:	01813083          	ld	ra,24(sp)
    80003b6c:	00048513          	mv	a0,s1
    80003b70:	00813483          	ld	s1,8(sp)
    80003b74:	02010113          	addi	sp,sp,32
    80003b78:	00000317          	auipc	t1,0x0
    80003b7c:	3c430067          	jr	964(t1) # 80003f3c <plic_complete>
    80003b80:	00005517          	auipc	a0,0x5
    80003b84:	9c050513          	addi	a0,a0,-1600 # 80008540 <tickslock>
    80003b88:	00001097          	auipc	ra,0x1
    80003b8c:	494080e7          	jalr	1172(ra) # 8000501c <acquire>
    80003b90:	00004717          	auipc	a4,0x4
    80003b94:	88470713          	addi	a4,a4,-1916 # 80007414 <ticks>
    80003b98:	00072783          	lw	a5,0(a4)
    80003b9c:	00005517          	auipc	a0,0x5
    80003ba0:	9a450513          	addi	a0,a0,-1628 # 80008540 <tickslock>
    80003ba4:	0017879b          	addiw	a5,a5,1
    80003ba8:	00f72023          	sw	a5,0(a4)
    80003bac:	00001097          	auipc	ra,0x1
    80003bb0:	53c080e7          	jalr	1340(ra) # 800050e8 <release>
    80003bb4:	f65ff06f          	j	80003b18 <kerneltrap+0x8c>
    80003bb8:	00001097          	auipc	ra,0x1
    80003bbc:	098080e7          	jalr	152(ra) # 80004c50 <uartintr>
    80003bc0:	fa5ff06f          	j	80003b64 <kerneltrap+0xd8>
    80003bc4:	00002517          	auipc	a0,0x2
    80003bc8:	63c50513          	addi	a0,a0,1596 # 80006200 <kvmincrease+0x750>
    80003bcc:	00000097          	auipc	ra,0x0
    80003bd0:	720080e7          	jalr	1824(ra) # 800042ec <panic>

0000000080003bd4 <clockintr>:
    80003bd4:	fe010113          	addi	sp,sp,-32
    80003bd8:	00813823          	sd	s0,16(sp)
    80003bdc:	00913423          	sd	s1,8(sp)
    80003be0:	00113c23          	sd	ra,24(sp)
    80003be4:	02010413          	addi	s0,sp,32
    80003be8:	00005497          	auipc	s1,0x5
    80003bec:	95848493          	addi	s1,s1,-1704 # 80008540 <tickslock>
    80003bf0:	00048513          	mv	a0,s1
    80003bf4:	00001097          	auipc	ra,0x1
    80003bf8:	428080e7          	jalr	1064(ra) # 8000501c <acquire>
    80003bfc:	00004717          	auipc	a4,0x4
    80003c00:	81870713          	addi	a4,a4,-2024 # 80007414 <ticks>
    80003c04:	00072783          	lw	a5,0(a4)
    80003c08:	01013403          	ld	s0,16(sp)
    80003c0c:	01813083          	ld	ra,24(sp)
    80003c10:	00048513          	mv	a0,s1
    80003c14:	0017879b          	addiw	a5,a5,1
    80003c18:	00813483          	ld	s1,8(sp)
    80003c1c:	00f72023          	sw	a5,0(a4)
    80003c20:	02010113          	addi	sp,sp,32
    80003c24:	00001317          	auipc	t1,0x1
    80003c28:	4c430067          	jr	1220(t1) # 800050e8 <release>

0000000080003c2c <devintr>:
    80003c2c:	142027f3          	csrr	a5,scause
    80003c30:	00000513          	li	a0,0
    80003c34:	0007c463          	bltz	a5,80003c3c <devintr+0x10>
    80003c38:	00008067          	ret
    80003c3c:	fe010113          	addi	sp,sp,-32
    80003c40:	00813823          	sd	s0,16(sp)
    80003c44:	00113c23          	sd	ra,24(sp)
    80003c48:	00913423          	sd	s1,8(sp)
    80003c4c:	02010413          	addi	s0,sp,32
    80003c50:	0ff7f713          	andi	a4,a5,255
    80003c54:	00900693          	li	a3,9
    80003c58:	04d70c63          	beq	a4,a3,80003cb0 <devintr+0x84>
    80003c5c:	fff00713          	li	a4,-1
    80003c60:	03f71713          	slli	a4,a4,0x3f
    80003c64:	00170713          	addi	a4,a4,1
    80003c68:	00e78c63          	beq	a5,a4,80003c80 <devintr+0x54>
    80003c6c:	01813083          	ld	ra,24(sp)
    80003c70:	01013403          	ld	s0,16(sp)
    80003c74:	00813483          	ld	s1,8(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret
    80003c80:	00000097          	auipc	ra,0x0
    80003c84:	c8c080e7          	jalr	-884(ra) # 8000390c <cpuid>
    80003c88:	06050663          	beqz	a0,80003cf4 <devintr+0xc8>
    80003c8c:	144027f3          	csrr	a5,sip
    80003c90:	ffd7f793          	andi	a5,a5,-3
    80003c94:	14479073          	csrw	sip,a5
    80003c98:	01813083          	ld	ra,24(sp)
    80003c9c:	01013403          	ld	s0,16(sp)
    80003ca0:	00813483          	ld	s1,8(sp)
    80003ca4:	00200513          	li	a0,2
    80003ca8:	02010113          	addi	sp,sp,32
    80003cac:	00008067          	ret
    80003cb0:	00000097          	auipc	ra,0x0
    80003cb4:	254080e7          	jalr	596(ra) # 80003f04 <plic_claim>
    80003cb8:	00a00793          	li	a5,10
    80003cbc:	00050493          	mv	s1,a0
    80003cc0:	06f50663          	beq	a0,a5,80003d2c <devintr+0x100>
    80003cc4:	00100513          	li	a0,1
    80003cc8:	fa0482e3          	beqz	s1,80003c6c <devintr+0x40>
    80003ccc:	00048593          	mv	a1,s1
    80003cd0:	00002517          	auipc	a0,0x2
    80003cd4:	55050513          	addi	a0,a0,1360 # 80006220 <kvmincrease+0x770>
    80003cd8:	00000097          	auipc	ra,0x0
    80003cdc:	670080e7          	jalr	1648(ra) # 80004348 <__printf>
    80003ce0:	00048513          	mv	a0,s1
    80003ce4:	00000097          	auipc	ra,0x0
    80003ce8:	258080e7          	jalr	600(ra) # 80003f3c <plic_complete>
    80003cec:	00100513          	li	a0,1
    80003cf0:	f7dff06f          	j	80003c6c <devintr+0x40>
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	84c50513          	addi	a0,a0,-1972 # 80008540 <tickslock>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	320080e7          	jalr	800(ra) # 8000501c <acquire>
    80003d04:	00003717          	auipc	a4,0x3
    80003d08:	71070713          	addi	a4,a4,1808 # 80007414 <ticks>
    80003d0c:	00072783          	lw	a5,0(a4)
    80003d10:	00005517          	auipc	a0,0x5
    80003d14:	83050513          	addi	a0,a0,-2000 # 80008540 <tickslock>
    80003d18:	0017879b          	addiw	a5,a5,1
    80003d1c:	00f72023          	sw	a5,0(a4)
    80003d20:	00001097          	auipc	ra,0x1
    80003d24:	3c8080e7          	jalr	968(ra) # 800050e8 <release>
    80003d28:	f65ff06f          	j	80003c8c <devintr+0x60>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	f24080e7          	jalr	-220(ra) # 80004c50 <uartintr>
    80003d34:	fadff06f          	j	80003ce0 <devintr+0xb4>
	...

0000000080003d40 <kernelvec>:
    80003d40:	f0010113          	addi	sp,sp,-256
    80003d44:	00113023          	sd	ra,0(sp)
    80003d48:	00213423          	sd	sp,8(sp)
    80003d4c:	00313823          	sd	gp,16(sp)
    80003d50:	00413c23          	sd	tp,24(sp)
    80003d54:	02513023          	sd	t0,32(sp)
    80003d58:	02613423          	sd	t1,40(sp)
    80003d5c:	02713823          	sd	t2,48(sp)
    80003d60:	02813c23          	sd	s0,56(sp)
    80003d64:	04913023          	sd	s1,64(sp)
    80003d68:	04a13423          	sd	a0,72(sp)
    80003d6c:	04b13823          	sd	a1,80(sp)
    80003d70:	04c13c23          	sd	a2,88(sp)
    80003d74:	06d13023          	sd	a3,96(sp)
    80003d78:	06e13423          	sd	a4,104(sp)
    80003d7c:	06f13823          	sd	a5,112(sp)
    80003d80:	07013c23          	sd	a6,120(sp)
    80003d84:	09113023          	sd	a7,128(sp)
    80003d88:	09213423          	sd	s2,136(sp)
    80003d8c:	09313823          	sd	s3,144(sp)
    80003d90:	09413c23          	sd	s4,152(sp)
    80003d94:	0b513023          	sd	s5,160(sp)
    80003d98:	0b613423          	sd	s6,168(sp)
    80003d9c:	0b713823          	sd	s7,176(sp)
    80003da0:	0b813c23          	sd	s8,184(sp)
    80003da4:	0d913023          	sd	s9,192(sp)
    80003da8:	0da13423          	sd	s10,200(sp)
    80003dac:	0db13823          	sd	s11,208(sp)
    80003db0:	0dc13c23          	sd	t3,216(sp)
    80003db4:	0fd13023          	sd	t4,224(sp)
    80003db8:	0fe13423          	sd	t5,232(sp)
    80003dbc:	0ff13823          	sd	t6,240(sp)
    80003dc0:	ccdff0ef          	jal	ra,80003a8c <kerneltrap>
    80003dc4:	00013083          	ld	ra,0(sp)
    80003dc8:	00813103          	ld	sp,8(sp)
    80003dcc:	01013183          	ld	gp,16(sp)
    80003dd0:	02013283          	ld	t0,32(sp)
    80003dd4:	02813303          	ld	t1,40(sp)
    80003dd8:	03013383          	ld	t2,48(sp)
    80003ddc:	03813403          	ld	s0,56(sp)
    80003de0:	04013483          	ld	s1,64(sp)
    80003de4:	04813503          	ld	a0,72(sp)
    80003de8:	05013583          	ld	a1,80(sp)
    80003dec:	05813603          	ld	a2,88(sp)
    80003df0:	06013683          	ld	a3,96(sp)
    80003df4:	06813703          	ld	a4,104(sp)
    80003df8:	07013783          	ld	a5,112(sp)
    80003dfc:	07813803          	ld	a6,120(sp)
    80003e00:	08013883          	ld	a7,128(sp)
    80003e04:	08813903          	ld	s2,136(sp)
    80003e08:	09013983          	ld	s3,144(sp)
    80003e0c:	09813a03          	ld	s4,152(sp)
    80003e10:	0a013a83          	ld	s5,160(sp)
    80003e14:	0a813b03          	ld	s6,168(sp)
    80003e18:	0b013b83          	ld	s7,176(sp)
    80003e1c:	0b813c03          	ld	s8,184(sp)
    80003e20:	0c013c83          	ld	s9,192(sp)
    80003e24:	0c813d03          	ld	s10,200(sp)
    80003e28:	0d013d83          	ld	s11,208(sp)
    80003e2c:	0d813e03          	ld	t3,216(sp)
    80003e30:	0e013e83          	ld	t4,224(sp)
    80003e34:	0e813f03          	ld	t5,232(sp)
    80003e38:	0f013f83          	ld	t6,240(sp)
    80003e3c:	10010113          	addi	sp,sp,256
    80003e40:	10200073          	sret
    80003e44:	00000013          	nop
    80003e48:	00000013          	nop
    80003e4c:	00000013          	nop

0000000080003e50 <timervec>:
    80003e50:	34051573          	csrrw	a0,mscratch,a0
    80003e54:	00b53023          	sd	a1,0(a0)
    80003e58:	00c53423          	sd	a2,8(a0)
    80003e5c:	00d53823          	sd	a3,16(a0)
    80003e60:	01853583          	ld	a1,24(a0)
    80003e64:	02053603          	ld	a2,32(a0)
    80003e68:	0005b683          	ld	a3,0(a1)
    80003e6c:	00c686b3          	add	a3,a3,a2
    80003e70:	00d5b023          	sd	a3,0(a1)
    80003e74:	00200593          	li	a1,2
    80003e78:	14459073          	csrw	sip,a1
    80003e7c:	01053683          	ld	a3,16(a0)
    80003e80:	00853603          	ld	a2,8(a0)
    80003e84:	00053583          	ld	a1,0(a0)
    80003e88:	34051573          	csrrw	a0,mscratch,a0
    80003e8c:	30200073          	mret

0000000080003e90 <plicinit>:
    80003e90:	ff010113          	addi	sp,sp,-16
    80003e94:	00813423          	sd	s0,8(sp)
    80003e98:	01010413          	addi	s0,sp,16
    80003e9c:	00813403          	ld	s0,8(sp)
    80003ea0:	0c0007b7          	lui	a5,0xc000
    80003ea4:	00100713          	li	a4,1
    80003ea8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003eac:	00e7a223          	sw	a4,4(a5)
    80003eb0:	01010113          	addi	sp,sp,16
    80003eb4:	00008067          	ret

0000000080003eb8 <plicinithart>:
    80003eb8:	ff010113          	addi	sp,sp,-16
    80003ebc:	00813023          	sd	s0,0(sp)
    80003ec0:	00113423          	sd	ra,8(sp)
    80003ec4:	01010413          	addi	s0,sp,16
    80003ec8:	00000097          	auipc	ra,0x0
    80003ecc:	a44080e7          	jalr	-1468(ra) # 8000390c <cpuid>
    80003ed0:	0085171b          	slliw	a4,a0,0x8
    80003ed4:	0c0027b7          	lui	a5,0xc002
    80003ed8:	00e787b3          	add	a5,a5,a4
    80003edc:	40200713          	li	a4,1026
    80003ee0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003ee4:	00813083          	ld	ra,8(sp)
    80003ee8:	00013403          	ld	s0,0(sp)
    80003eec:	00d5151b          	slliw	a0,a0,0xd
    80003ef0:	0c2017b7          	lui	a5,0xc201
    80003ef4:	00a78533          	add	a0,a5,a0
    80003ef8:	00052023          	sw	zero,0(a0)
    80003efc:	01010113          	addi	sp,sp,16
    80003f00:	00008067          	ret

0000000080003f04 <plic_claim>:
    80003f04:	ff010113          	addi	sp,sp,-16
    80003f08:	00813023          	sd	s0,0(sp)
    80003f0c:	00113423          	sd	ra,8(sp)
    80003f10:	01010413          	addi	s0,sp,16
    80003f14:	00000097          	auipc	ra,0x0
    80003f18:	9f8080e7          	jalr	-1544(ra) # 8000390c <cpuid>
    80003f1c:	00813083          	ld	ra,8(sp)
    80003f20:	00013403          	ld	s0,0(sp)
    80003f24:	00d5151b          	slliw	a0,a0,0xd
    80003f28:	0c2017b7          	lui	a5,0xc201
    80003f2c:	00a78533          	add	a0,a5,a0
    80003f30:	00452503          	lw	a0,4(a0)
    80003f34:	01010113          	addi	sp,sp,16
    80003f38:	00008067          	ret

0000000080003f3c <plic_complete>:
    80003f3c:	fe010113          	addi	sp,sp,-32
    80003f40:	00813823          	sd	s0,16(sp)
    80003f44:	00913423          	sd	s1,8(sp)
    80003f48:	00113c23          	sd	ra,24(sp)
    80003f4c:	02010413          	addi	s0,sp,32
    80003f50:	00050493          	mv	s1,a0
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	9b8080e7          	jalr	-1608(ra) # 8000390c <cpuid>
    80003f5c:	01813083          	ld	ra,24(sp)
    80003f60:	01013403          	ld	s0,16(sp)
    80003f64:	00d5179b          	slliw	a5,a0,0xd
    80003f68:	0c201737          	lui	a4,0xc201
    80003f6c:	00f707b3          	add	a5,a4,a5
    80003f70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003f74:	00813483          	ld	s1,8(sp)
    80003f78:	02010113          	addi	sp,sp,32
    80003f7c:	00008067          	ret

0000000080003f80 <consolewrite>:
    80003f80:	fb010113          	addi	sp,sp,-80
    80003f84:	04813023          	sd	s0,64(sp)
    80003f88:	04113423          	sd	ra,72(sp)
    80003f8c:	02913c23          	sd	s1,56(sp)
    80003f90:	03213823          	sd	s2,48(sp)
    80003f94:	03313423          	sd	s3,40(sp)
    80003f98:	03413023          	sd	s4,32(sp)
    80003f9c:	01513c23          	sd	s5,24(sp)
    80003fa0:	05010413          	addi	s0,sp,80
    80003fa4:	06c05c63          	blez	a2,8000401c <consolewrite+0x9c>
    80003fa8:	00060993          	mv	s3,a2
    80003fac:	00050a13          	mv	s4,a0
    80003fb0:	00058493          	mv	s1,a1
    80003fb4:	00000913          	li	s2,0
    80003fb8:	fff00a93          	li	s5,-1
    80003fbc:	01c0006f          	j	80003fd8 <consolewrite+0x58>
    80003fc0:	fbf44503          	lbu	a0,-65(s0)
    80003fc4:	0019091b          	addiw	s2,s2,1
    80003fc8:	00148493          	addi	s1,s1,1
    80003fcc:	00001097          	auipc	ra,0x1
    80003fd0:	a9c080e7          	jalr	-1380(ra) # 80004a68 <uartputc>
    80003fd4:	03298063          	beq	s3,s2,80003ff4 <consolewrite+0x74>
    80003fd8:	00048613          	mv	a2,s1
    80003fdc:	00100693          	li	a3,1
    80003fe0:	000a0593          	mv	a1,s4
    80003fe4:	fbf40513          	addi	a0,s0,-65
    80003fe8:	00000097          	auipc	ra,0x0
    80003fec:	9dc080e7          	jalr	-1572(ra) # 800039c4 <either_copyin>
    80003ff0:	fd5518e3          	bne	a0,s5,80003fc0 <consolewrite+0x40>
    80003ff4:	04813083          	ld	ra,72(sp)
    80003ff8:	04013403          	ld	s0,64(sp)
    80003ffc:	03813483          	ld	s1,56(sp)
    80004000:	02813983          	ld	s3,40(sp)
    80004004:	02013a03          	ld	s4,32(sp)
    80004008:	01813a83          	ld	s5,24(sp)
    8000400c:	00090513          	mv	a0,s2
    80004010:	03013903          	ld	s2,48(sp)
    80004014:	05010113          	addi	sp,sp,80
    80004018:	00008067          	ret
    8000401c:	00000913          	li	s2,0
    80004020:	fd5ff06f          	j	80003ff4 <consolewrite+0x74>

0000000080004024 <consoleread>:
    80004024:	f9010113          	addi	sp,sp,-112
    80004028:	06813023          	sd	s0,96(sp)
    8000402c:	04913c23          	sd	s1,88(sp)
    80004030:	05213823          	sd	s2,80(sp)
    80004034:	05313423          	sd	s3,72(sp)
    80004038:	05413023          	sd	s4,64(sp)
    8000403c:	03513c23          	sd	s5,56(sp)
    80004040:	03613823          	sd	s6,48(sp)
    80004044:	03713423          	sd	s7,40(sp)
    80004048:	03813023          	sd	s8,32(sp)
    8000404c:	06113423          	sd	ra,104(sp)
    80004050:	01913c23          	sd	s9,24(sp)
    80004054:	07010413          	addi	s0,sp,112
    80004058:	00060b93          	mv	s7,a2
    8000405c:	00050913          	mv	s2,a0
    80004060:	00058c13          	mv	s8,a1
    80004064:	00060b1b          	sext.w	s6,a2
    80004068:	00004497          	auipc	s1,0x4
    8000406c:	50048493          	addi	s1,s1,1280 # 80008568 <cons>
    80004070:	00400993          	li	s3,4
    80004074:	fff00a13          	li	s4,-1
    80004078:	00a00a93          	li	s5,10
    8000407c:	05705e63          	blez	s7,800040d8 <consoleread+0xb4>
    80004080:	09c4a703          	lw	a4,156(s1)
    80004084:	0984a783          	lw	a5,152(s1)
    80004088:	0007071b          	sext.w	a4,a4
    8000408c:	08e78463          	beq	a5,a4,80004114 <consoleread+0xf0>
    80004090:	07f7f713          	andi	a4,a5,127
    80004094:	00e48733          	add	a4,s1,a4
    80004098:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000409c:	0017869b          	addiw	a3,a5,1
    800040a0:	08d4ac23          	sw	a3,152(s1)
    800040a4:	00070c9b          	sext.w	s9,a4
    800040a8:	0b370663          	beq	a4,s3,80004154 <consoleread+0x130>
    800040ac:	00100693          	li	a3,1
    800040b0:	f9f40613          	addi	a2,s0,-97
    800040b4:	000c0593          	mv	a1,s8
    800040b8:	00090513          	mv	a0,s2
    800040bc:	f8e40fa3          	sb	a4,-97(s0)
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	8b8080e7          	jalr	-1864(ra) # 80003978 <either_copyout>
    800040c8:	01450863          	beq	a0,s4,800040d8 <consoleread+0xb4>
    800040cc:	001c0c13          	addi	s8,s8,1
    800040d0:	fffb8b9b          	addiw	s7,s7,-1
    800040d4:	fb5c94e3          	bne	s9,s5,8000407c <consoleread+0x58>
    800040d8:	000b851b          	sext.w	a0,s7
    800040dc:	06813083          	ld	ra,104(sp)
    800040e0:	06013403          	ld	s0,96(sp)
    800040e4:	05813483          	ld	s1,88(sp)
    800040e8:	05013903          	ld	s2,80(sp)
    800040ec:	04813983          	ld	s3,72(sp)
    800040f0:	04013a03          	ld	s4,64(sp)
    800040f4:	03813a83          	ld	s5,56(sp)
    800040f8:	02813b83          	ld	s7,40(sp)
    800040fc:	02013c03          	ld	s8,32(sp)
    80004100:	01813c83          	ld	s9,24(sp)
    80004104:	40ab053b          	subw	a0,s6,a0
    80004108:	03013b03          	ld	s6,48(sp)
    8000410c:	07010113          	addi	sp,sp,112
    80004110:	00008067          	ret
    80004114:	00001097          	auipc	ra,0x1
    80004118:	1d8080e7          	jalr	472(ra) # 800052ec <push_on>
    8000411c:	0984a703          	lw	a4,152(s1)
    80004120:	09c4a783          	lw	a5,156(s1)
    80004124:	0007879b          	sext.w	a5,a5
    80004128:	fef70ce3          	beq	a4,a5,80004120 <consoleread+0xfc>
    8000412c:	00001097          	auipc	ra,0x1
    80004130:	234080e7          	jalr	564(ra) # 80005360 <pop_on>
    80004134:	0984a783          	lw	a5,152(s1)
    80004138:	07f7f713          	andi	a4,a5,127
    8000413c:	00e48733          	add	a4,s1,a4
    80004140:	01874703          	lbu	a4,24(a4)
    80004144:	0017869b          	addiw	a3,a5,1
    80004148:	08d4ac23          	sw	a3,152(s1)
    8000414c:	00070c9b          	sext.w	s9,a4
    80004150:	f5371ee3          	bne	a4,s3,800040ac <consoleread+0x88>
    80004154:	000b851b          	sext.w	a0,s7
    80004158:	f96bf2e3          	bgeu	s7,s6,800040dc <consoleread+0xb8>
    8000415c:	08f4ac23          	sw	a5,152(s1)
    80004160:	f7dff06f          	j	800040dc <consoleread+0xb8>

0000000080004164 <consputc>:
    80004164:	10000793          	li	a5,256
    80004168:	00f50663          	beq	a0,a5,80004174 <consputc+0x10>
    8000416c:	00001317          	auipc	t1,0x1
    80004170:	9f430067          	jr	-1548(t1) # 80004b60 <uartputc_sync>
    80004174:	ff010113          	addi	sp,sp,-16
    80004178:	00113423          	sd	ra,8(sp)
    8000417c:	00813023          	sd	s0,0(sp)
    80004180:	01010413          	addi	s0,sp,16
    80004184:	00800513          	li	a0,8
    80004188:	00001097          	auipc	ra,0x1
    8000418c:	9d8080e7          	jalr	-1576(ra) # 80004b60 <uartputc_sync>
    80004190:	02000513          	li	a0,32
    80004194:	00001097          	auipc	ra,0x1
    80004198:	9cc080e7          	jalr	-1588(ra) # 80004b60 <uartputc_sync>
    8000419c:	00013403          	ld	s0,0(sp)
    800041a0:	00813083          	ld	ra,8(sp)
    800041a4:	00800513          	li	a0,8
    800041a8:	01010113          	addi	sp,sp,16
    800041ac:	00001317          	auipc	t1,0x1
    800041b0:	9b430067          	jr	-1612(t1) # 80004b60 <uartputc_sync>

00000000800041b4 <consoleintr>:
    800041b4:	fe010113          	addi	sp,sp,-32
    800041b8:	00813823          	sd	s0,16(sp)
    800041bc:	00913423          	sd	s1,8(sp)
    800041c0:	01213023          	sd	s2,0(sp)
    800041c4:	00113c23          	sd	ra,24(sp)
    800041c8:	02010413          	addi	s0,sp,32
    800041cc:	00004917          	auipc	s2,0x4
    800041d0:	39c90913          	addi	s2,s2,924 # 80008568 <cons>
    800041d4:	00050493          	mv	s1,a0
    800041d8:	00090513          	mv	a0,s2
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	e40080e7          	jalr	-448(ra) # 8000501c <acquire>
    800041e4:	02048c63          	beqz	s1,8000421c <consoleintr+0x68>
    800041e8:	0a092783          	lw	a5,160(s2)
    800041ec:	09892703          	lw	a4,152(s2)
    800041f0:	07f00693          	li	a3,127
    800041f4:	40e7873b          	subw	a4,a5,a4
    800041f8:	02e6e263          	bltu	a3,a4,8000421c <consoleintr+0x68>
    800041fc:	00d00713          	li	a4,13
    80004200:	04e48063          	beq	s1,a4,80004240 <consoleintr+0x8c>
    80004204:	07f7f713          	andi	a4,a5,127
    80004208:	00e90733          	add	a4,s2,a4
    8000420c:	0017879b          	addiw	a5,a5,1
    80004210:	0af92023          	sw	a5,160(s2)
    80004214:	00970c23          	sb	s1,24(a4)
    80004218:	08f92e23          	sw	a5,156(s2)
    8000421c:	01013403          	ld	s0,16(sp)
    80004220:	01813083          	ld	ra,24(sp)
    80004224:	00813483          	ld	s1,8(sp)
    80004228:	00013903          	ld	s2,0(sp)
    8000422c:	00004517          	auipc	a0,0x4
    80004230:	33c50513          	addi	a0,a0,828 # 80008568 <cons>
    80004234:	02010113          	addi	sp,sp,32
    80004238:	00001317          	auipc	t1,0x1
    8000423c:	eb030067          	jr	-336(t1) # 800050e8 <release>
    80004240:	00a00493          	li	s1,10
    80004244:	fc1ff06f          	j	80004204 <consoleintr+0x50>

0000000080004248 <consoleinit>:
    80004248:	fe010113          	addi	sp,sp,-32
    8000424c:	00113c23          	sd	ra,24(sp)
    80004250:	00813823          	sd	s0,16(sp)
    80004254:	00913423          	sd	s1,8(sp)
    80004258:	02010413          	addi	s0,sp,32
    8000425c:	00004497          	auipc	s1,0x4
    80004260:	30c48493          	addi	s1,s1,780 # 80008568 <cons>
    80004264:	00048513          	mv	a0,s1
    80004268:	00002597          	auipc	a1,0x2
    8000426c:	01058593          	addi	a1,a1,16 # 80006278 <kvmincrease+0x7c8>
    80004270:	00001097          	auipc	ra,0x1
    80004274:	d88080e7          	jalr	-632(ra) # 80004ff8 <initlock>
    80004278:	00000097          	auipc	ra,0x0
    8000427c:	7ac080e7          	jalr	1964(ra) # 80004a24 <uartinit>
    80004280:	01813083          	ld	ra,24(sp)
    80004284:	01013403          	ld	s0,16(sp)
    80004288:	00000797          	auipc	a5,0x0
    8000428c:	d9c78793          	addi	a5,a5,-612 # 80004024 <consoleread>
    80004290:	0af4bc23          	sd	a5,184(s1)
    80004294:	00000797          	auipc	a5,0x0
    80004298:	cec78793          	addi	a5,a5,-788 # 80003f80 <consolewrite>
    8000429c:	0cf4b023          	sd	a5,192(s1)
    800042a0:	00813483          	ld	s1,8(sp)
    800042a4:	02010113          	addi	sp,sp,32
    800042a8:	00008067          	ret

00000000800042ac <console_read>:
    800042ac:	ff010113          	addi	sp,sp,-16
    800042b0:	00813423          	sd	s0,8(sp)
    800042b4:	01010413          	addi	s0,sp,16
    800042b8:	00813403          	ld	s0,8(sp)
    800042bc:	00004317          	auipc	t1,0x4
    800042c0:	36433303          	ld	t1,868(t1) # 80008620 <devsw+0x10>
    800042c4:	01010113          	addi	sp,sp,16
    800042c8:	00030067          	jr	t1

00000000800042cc <console_write>:
    800042cc:	ff010113          	addi	sp,sp,-16
    800042d0:	00813423          	sd	s0,8(sp)
    800042d4:	01010413          	addi	s0,sp,16
    800042d8:	00813403          	ld	s0,8(sp)
    800042dc:	00004317          	auipc	t1,0x4
    800042e0:	34c33303          	ld	t1,844(t1) # 80008628 <devsw+0x18>
    800042e4:	01010113          	addi	sp,sp,16
    800042e8:	00030067          	jr	t1

00000000800042ec <panic>:
    800042ec:	fe010113          	addi	sp,sp,-32
    800042f0:	00113c23          	sd	ra,24(sp)
    800042f4:	00813823          	sd	s0,16(sp)
    800042f8:	00913423          	sd	s1,8(sp)
    800042fc:	02010413          	addi	s0,sp,32
    80004300:	00050493          	mv	s1,a0
    80004304:	00002517          	auipc	a0,0x2
    80004308:	f7c50513          	addi	a0,a0,-132 # 80006280 <kvmincrease+0x7d0>
    8000430c:	00004797          	auipc	a5,0x4
    80004310:	3a07ae23          	sw	zero,956(a5) # 800086c8 <pr+0x18>
    80004314:	00000097          	auipc	ra,0x0
    80004318:	034080e7          	jalr	52(ra) # 80004348 <__printf>
    8000431c:	00048513          	mv	a0,s1
    80004320:	00000097          	auipc	ra,0x0
    80004324:	028080e7          	jalr	40(ra) # 80004348 <__printf>
    80004328:	00002517          	auipc	a0,0x2
    8000432c:	d1050513          	addi	a0,a0,-752 # 80006038 <kvmincrease+0x588>
    80004330:	00000097          	auipc	ra,0x0
    80004334:	018080e7          	jalr	24(ra) # 80004348 <__printf>
    80004338:	00100793          	li	a5,1
    8000433c:	00003717          	auipc	a4,0x3
    80004340:	0cf72e23          	sw	a5,220(a4) # 80007418 <panicked>
    80004344:	0000006f          	j	80004344 <panic+0x58>

0000000080004348 <__printf>:
    80004348:	f3010113          	addi	sp,sp,-208
    8000434c:	08813023          	sd	s0,128(sp)
    80004350:	07313423          	sd	s3,104(sp)
    80004354:	09010413          	addi	s0,sp,144
    80004358:	05813023          	sd	s8,64(sp)
    8000435c:	08113423          	sd	ra,136(sp)
    80004360:	06913c23          	sd	s1,120(sp)
    80004364:	07213823          	sd	s2,112(sp)
    80004368:	07413023          	sd	s4,96(sp)
    8000436c:	05513c23          	sd	s5,88(sp)
    80004370:	05613823          	sd	s6,80(sp)
    80004374:	05713423          	sd	s7,72(sp)
    80004378:	03913c23          	sd	s9,56(sp)
    8000437c:	03a13823          	sd	s10,48(sp)
    80004380:	03b13423          	sd	s11,40(sp)
    80004384:	00004317          	auipc	t1,0x4
    80004388:	32c30313          	addi	t1,t1,812 # 800086b0 <pr>
    8000438c:	01832c03          	lw	s8,24(t1)
    80004390:	00b43423          	sd	a1,8(s0)
    80004394:	00c43823          	sd	a2,16(s0)
    80004398:	00d43c23          	sd	a3,24(s0)
    8000439c:	02e43023          	sd	a4,32(s0)
    800043a0:	02f43423          	sd	a5,40(s0)
    800043a4:	03043823          	sd	a6,48(s0)
    800043a8:	03143c23          	sd	a7,56(s0)
    800043ac:	00050993          	mv	s3,a0
    800043b0:	4a0c1663          	bnez	s8,8000485c <__printf+0x514>
    800043b4:	60098c63          	beqz	s3,800049cc <__printf+0x684>
    800043b8:	0009c503          	lbu	a0,0(s3)
    800043bc:	00840793          	addi	a5,s0,8
    800043c0:	f6f43c23          	sd	a5,-136(s0)
    800043c4:	00000493          	li	s1,0
    800043c8:	22050063          	beqz	a0,800045e8 <__printf+0x2a0>
    800043cc:	00002a37          	lui	s4,0x2
    800043d0:	00018ab7          	lui	s5,0x18
    800043d4:	000f4b37          	lui	s6,0xf4
    800043d8:	00989bb7          	lui	s7,0x989
    800043dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800043e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800043e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800043e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800043ec:	00148c9b          	addiw	s9,s1,1
    800043f0:	02500793          	li	a5,37
    800043f4:	01998933          	add	s2,s3,s9
    800043f8:	38f51263          	bne	a0,a5,8000477c <__printf+0x434>
    800043fc:	00094783          	lbu	a5,0(s2)
    80004400:	00078c9b          	sext.w	s9,a5
    80004404:	1e078263          	beqz	a5,800045e8 <__printf+0x2a0>
    80004408:	0024849b          	addiw	s1,s1,2
    8000440c:	07000713          	li	a4,112
    80004410:	00998933          	add	s2,s3,s1
    80004414:	38e78a63          	beq	a5,a4,800047a8 <__printf+0x460>
    80004418:	20f76863          	bltu	a4,a5,80004628 <__printf+0x2e0>
    8000441c:	42a78863          	beq	a5,a0,8000484c <__printf+0x504>
    80004420:	06400713          	li	a4,100
    80004424:	40e79663          	bne	a5,a4,80004830 <__printf+0x4e8>
    80004428:	f7843783          	ld	a5,-136(s0)
    8000442c:	0007a603          	lw	a2,0(a5)
    80004430:	00878793          	addi	a5,a5,8
    80004434:	f6f43c23          	sd	a5,-136(s0)
    80004438:	42064a63          	bltz	a2,8000486c <__printf+0x524>
    8000443c:	00a00713          	li	a4,10
    80004440:	02e677bb          	remuw	a5,a2,a4
    80004444:	00002d97          	auipc	s11,0x2
    80004448:	e64d8d93          	addi	s11,s11,-412 # 800062a8 <digits>
    8000444c:	00900593          	li	a1,9
    80004450:	0006051b          	sext.w	a0,a2
    80004454:	00000c93          	li	s9,0
    80004458:	02079793          	slli	a5,a5,0x20
    8000445c:	0207d793          	srli	a5,a5,0x20
    80004460:	00fd87b3          	add	a5,s11,a5
    80004464:	0007c783          	lbu	a5,0(a5)
    80004468:	02e656bb          	divuw	a3,a2,a4
    8000446c:	f8f40023          	sb	a5,-128(s0)
    80004470:	14c5d863          	bge	a1,a2,800045c0 <__printf+0x278>
    80004474:	06300593          	li	a1,99
    80004478:	00100c93          	li	s9,1
    8000447c:	02e6f7bb          	remuw	a5,a3,a4
    80004480:	02079793          	slli	a5,a5,0x20
    80004484:	0207d793          	srli	a5,a5,0x20
    80004488:	00fd87b3          	add	a5,s11,a5
    8000448c:	0007c783          	lbu	a5,0(a5)
    80004490:	02e6d73b          	divuw	a4,a3,a4
    80004494:	f8f400a3          	sb	a5,-127(s0)
    80004498:	12a5f463          	bgeu	a1,a0,800045c0 <__printf+0x278>
    8000449c:	00a00693          	li	a3,10
    800044a0:	00900593          	li	a1,9
    800044a4:	02d777bb          	remuw	a5,a4,a3
    800044a8:	02079793          	slli	a5,a5,0x20
    800044ac:	0207d793          	srli	a5,a5,0x20
    800044b0:	00fd87b3          	add	a5,s11,a5
    800044b4:	0007c503          	lbu	a0,0(a5)
    800044b8:	02d757bb          	divuw	a5,a4,a3
    800044bc:	f8a40123          	sb	a0,-126(s0)
    800044c0:	48e5f263          	bgeu	a1,a4,80004944 <__printf+0x5fc>
    800044c4:	06300513          	li	a0,99
    800044c8:	02d7f5bb          	remuw	a1,a5,a3
    800044cc:	02059593          	slli	a1,a1,0x20
    800044d0:	0205d593          	srli	a1,a1,0x20
    800044d4:	00bd85b3          	add	a1,s11,a1
    800044d8:	0005c583          	lbu	a1,0(a1)
    800044dc:	02d7d7bb          	divuw	a5,a5,a3
    800044e0:	f8b401a3          	sb	a1,-125(s0)
    800044e4:	48e57263          	bgeu	a0,a4,80004968 <__printf+0x620>
    800044e8:	3e700513          	li	a0,999
    800044ec:	02d7f5bb          	remuw	a1,a5,a3
    800044f0:	02059593          	slli	a1,a1,0x20
    800044f4:	0205d593          	srli	a1,a1,0x20
    800044f8:	00bd85b3          	add	a1,s11,a1
    800044fc:	0005c583          	lbu	a1,0(a1)
    80004500:	02d7d7bb          	divuw	a5,a5,a3
    80004504:	f8b40223          	sb	a1,-124(s0)
    80004508:	46e57663          	bgeu	a0,a4,80004974 <__printf+0x62c>
    8000450c:	02d7f5bb          	remuw	a1,a5,a3
    80004510:	02059593          	slli	a1,a1,0x20
    80004514:	0205d593          	srli	a1,a1,0x20
    80004518:	00bd85b3          	add	a1,s11,a1
    8000451c:	0005c583          	lbu	a1,0(a1)
    80004520:	02d7d7bb          	divuw	a5,a5,a3
    80004524:	f8b402a3          	sb	a1,-123(s0)
    80004528:	46ea7863          	bgeu	s4,a4,80004998 <__printf+0x650>
    8000452c:	02d7f5bb          	remuw	a1,a5,a3
    80004530:	02059593          	slli	a1,a1,0x20
    80004534:	0205d593          	srli	a1,a1,0x20
    80004538:	00bd85b3          	add	a1,s11,a1
    8000453c:	0005c583          	lbu	a1,0(a1)
    80004540:	02d7d7bb          	divuw	a5,a5,a3
    80004544:	f8b40323          	sb	a1,-122(s0)
    80004548:	3eeaf863          	bgeu	s5,a4,80004938 <__printf+0x5f0>
    8000454c:	02d7f5bb          	remuw	a1,a5,a3
    80004550:	02059593          	slli	a1,a1,0x20
    80004554:	0205d593          	srli	a1,a1,0x20
    80004558:	00bd85b3          	add	a1,s11,a1
    8000455c:	0005c583          	lbu	a1,0(a1)
    80004560:	02d7d7bb          	divuw	a5,a5,a3
    80004564:	f8b403a3          	sb	a1,-121(s0)
    80004568:	42eb7e63          	bgeu	s6,a4,800049a4 <__printf+0x65c>
    8000456c:	02d7f5bb          	remuw	a1,a5,a3
    80004570:	02059593          	slli	a1,a1,0x20
    80004574:	0205d593          	srli	a1,a1,0x20
    80004578:	00bd85b3          	add	a1,s11,a1
    8000457c:	0005c583          	lbu	a1,0(a1)
    80004580:	02d7d7bb          	divuw	a5,a5,a3
    80004584:	f8b40423          	sb	a1,-120(s0)
    80004588:	42ebfc63          	bgeu	s7,a4,800049c0 <__printf+0x678>
    8000458c:	02079793          	slli	a5,a5,0x20
    80004590:	0207d793          	srli	a5,a5,0x20
    80004594:	00fd8db3          	add	s11,s11,a5
    80004598:	000dc703          	lbu	a4,0(s11)
    8000459c:	00a00793          	li	a5,10
    800045a0:	00900c93          	li	s9,9
    800045a4:	f8e404a3          	sb	a4,-119(s0)
    800045a8:	00065c63          	bgez	a2,800045c0 <__printf+0x278>
    800045ac:	f9040713          	addi	a4,s0,-112
    800045b0:	00f70733          	add	a4,a4,a5
    800045b4:	02d00693          	li	a3,45
    800045b8:	fed70823          	sb	a3,-16(a4)
    800045bc:	00078c93          	mv	s9,a5
    800045c0:	f8040793          	addi	a5,s0,-128
    800045c4:	01978cb3          	add	s9,a5,s9
    800045c8:	f7f40d13          	addi	s10,s0,-129
    800045cc:	000cc503          	lbu	a0,0(s9)
    800045d0:	fffc8c93          	addi	s9,s9,-1
    800045d4:	00000097          	auipc	ra,0x0
    800045d8:	b90080e7          	jalr	-1136(ra) # 80004164 <consputc>
    800045dc:	ffac98e3          	bne	s9,s10,800045cc <__printf+0x284>
    800045e0:	00094503          	lbu	a0,0(s2)
    800045e4:	e00514e3          	bnez	a0,800043ec <__printf+0xa4>
    800045e8:	1a0c1663          	bnez	s8,80004794 <__printf+0x44c>
    800045ec:	08813083          	ld	ra,136(sp)
    800045f0:	08013403          	ld	s0,128(sp)
    800045f4:	07813483          	ld	s1,120(sp)
    800045f8:	07013903          	ld	s2,112(sp)
    800045fc:	06813983          	ld	s3,104(sp)
    80004600:	06013a03          	ld	s4,96(sp)
    80004604:	05813a83          	ld	s5,88(sp)
    80004608:	05013b03          	ld	s6,80(sp)
    8000460c:	04813b83          	ld	s7,72(sp)
    80004610:	04013c03          	ld	s8,64(sp)
    80004614:	03813c83          	ld	s9,56(sp)
    80004618:	03013d03          	ld	s10,48(sp)
    8000461c:	02813d83          	ld	s11,40(sp)
    80004620:	0d010113          	addi	sp,sp,208
    80004624:	00008067          	ret
    80004628:	07300713          	li	a4,115
    8000462c:	1ce78a63          	beq	a5,a4,80004800 <__printf+0x4b8>
    80004630:	07800713          	li	a4,120
    80004634:	1ee79e63          	bne	a5,a4,80004830 <__printf+0x4e8>
    80004638:	f7843783          	ld	a5,-136(s0)
    8000463c:	0007a703          	lw	a4,0(a5)
    80004640:	00878793          	addi	a5,a5,8
    80004644:	f6f43c23          	sd	a5,-136(s0)
    80004648:	28074263          	bltz	a4,800048cc <__printf+0x584>
    8000464c:	00002d97          	auipc	s11,0x2
    80004650:	c5cd8d93          	addi	s11,s11,-932 # 800062a8 <digits>
    80004654:	00f77793          	andi	a5,a4,15
    80004658:	00fd87b3          	add	a5,s11,a5
    8000465c:	0007c683          	lbu	a3,0(a5)
    80004660:	00f00613          	li	a2,15
    80004664:	0007079b          	sext.w	a5,a4
    80004668:	f8d40023          	sb	a3,-128(s0)
    8000466c:	0047559b          	srliw	a1,a4,0x4
    80004670:	0047569b          	srliw	a3,a4,0x4
    80004674:	00000c93          	li	s9,0
    80004678:	0ee65063          	bge	a2,a4,80004758 <__printf+0x410>
    8000467c:	00f6f693          	andi	a3,a3,15
    80004680:	00dd86b3          	add	a3,s11,a3
    80004684:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004688:	0087d79b          	srliw	a5,a5,0x8
    8000468c:	00100c93          	li	s9,1
    80004690:	f8d400a3          	sb	a3,-127(s0)
    80004694:	0cb67263          	bgeu	a2,a1,80004758 <__printf+0x410>
    80004698:	00f7f693          	andi	a3,a5,15
    8000469c:	00dd86b3          	add	a3,s11,a3
    800046a0:	0006c583          	lbu	a1,0(a3)
    800046a4:	00f00613          	li	a2,15
    800046a8:	0047d69b          	srliw	a3,a5,0x4
    800046ac:	f8b40123          	sb	a1,-126(s0)
    800046b0:	0047d593          	srli	a1,a5,0x4
    800046b4:	28f67e63          	bgeu	a2,a5,80004950 <__printf+0x608>
    800046b8:	00f6f693          	andi	a3,a3,15
    800046bc:	00dd86b3          	add	a3,s11,a3
    800046c0:	0006c503          	lbu	a0,0(a3)
    800046c4:	0087d813          	srli	a6,a5,0x8
    800046c8:	0087d69b          	srliw	a3,a5,0x8
    800046cc:	f8a401a3          	sb	a0,-125(s0)
    800046d0:	28b67663          	bgeu	a2,a1,8000495c <__printf+0x614>
    800046d4:	00f6f693          	andi	a3,a3,15
    800046d8:	00dd86b3          	add	a3,s11,a3
    800046dc:	0006c583          	lbu	a1,0(a3)
    800046e0:	00c7d513          	srli	a0,a5,0xc
    800046e4:	00c7d69b          	srliw	a3,a5,0xc
    800046e8:	f8b40223          	sb	a1,-124(s0)
    800046ec:	29067a63          	bgeu	a2,a6,80004980 <__printf+0x638>
    800046f0:	00f6f693          	andi	a3,a3,15
    800046f4:	00dd86b3          	add	a3,s11,a3
    800046f8:	0006c583          	lbu	a1,0(a3)
    800046fc:	0107d813          	srli	a6,a5,0x10
    80004700:	0107d69b          	srliw	a3,a5,0x10
    80004704:	f8b402a3          	sb	a1,-123(s0)
    80004708:	28a67263          	bgeu	a2,a0,8000498c <__printf+0x644>
    8000470c:	00f6f693          	andi	a3,a3,15
    80004710:	00dd86b3          	add	a3,s11,a3
    80004714:	0006c683          	lbu	a3,0(a3)
    80004718:	0147d79b          	srliw	a5,a5,0x14
    8000471c:	f8d40323          	sb	a3,-122(s0)
    80004720:	21067663          	bgeu	a2,a6,8000492c <__printf+0x5e4>
    80004724:	02079793          	slli	a5,a5,0x20
    80004728:	0207d793          	srli	a5,a5,0x20
    8000472c:	00fd8db3          	add	s11,s11,a5
    80004730:	000dc683          	lbu	a3,0(s11)
    80004734:	00800793          	li	a5,8
    80004738:	00700c93          	li	s9,7
    8000473c:	f8d403a3          	sb	a3,-121(s0)
    80004740:	00075c63          	bgez	a4,80004758 <__printf+0x410>
    80004744:	f9040713          	addi	a4,s0,-112
    80004748:	00f70733          	add	a4,a4,a5
    8000474c:	02d00693          	li	a3,45
    80004750:	fed70823          	sb	a3,-16(a4)
    80004754:	00078c93          	mv	s9,a5
    80004758:	f8040793          	addi	a5,s0,-128
    8000475c:	01978cb3          	add	s9,a5,s9
    80004760:	f7f40d13          	addi	s10,s0,-129
    80004764:	000cc503          	lbu	a0,0(s9)
    80004768:	fffc8c93          	addi	s9,s9,-1
    8000476c:	00000097          	auipc	ra,0x0
    80004770:	9f8080e7          	jalr	-1544(ra) # 80004164 <consputc>
    80004774:	ff9d18e3          	bne	s10,s9,80004764 <__printf+0x41c>
    80004778:	0100006f          	j	80004788 <__printf+0x440>
    8000477c:	00000097          	auipc	ra,0x0
    80004780:	9e8080e7          	jalr	-1560(ra) # 80004164 <consputc>
    80004784:	000c8493          	mv	s1,s9
    80004788:	00094503          	lbu	a0,0(s2)
    8000478c:	c60510e3          	bnez	a0,800043ec <__printf+0xa4>
    80004790:	e40c0ee3          	beqz	s8,800045ec <__printf+0x2a4>
    80004794:	00004517          	auipc	a0,0x4
    80004798:	f1c50513          	addi	a0,a0,-228 # 800086b0 <pr>
    8000479c:	00001097          	auipc	ra,0x1
    800047a0:	94c080e7          	jalr	-1716(ra) # 800050e8 <release>
    800047a4:	e49ff06f          	j	800045ec <__printf+0x2a4>
    800047a8:	f7843783          	ld	a5,-136(s0)
    800047ac:	03000513          	li	a0,48
    800047b0:	01000d13          	li	s10,16
    800047b4:	00878713          	addi	a4,a5,8
    800047b8:	0007bc83          	ld	s9,0(a5)
    800047bc:	f6e43c23          	sd	a4,-136(s0)
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	9a4080e7          	jalr	-1628(ra) # 80004164 <consputc>
    800047c8:	07800513          	li	a0,120
    800047cc:	00000097          	auipc	ra,0x0
    800047d0:	998080e7          	jalr	-1640(ra) # 80004164 <consputc>
    800047d4:	00002d97          	auipc	s11,0x2
    800047d8:	ad4d8d93          	addi	s11,s11,-1324 # 800062a8 <digits>
    800047dc:	03ccd793          	srli	a5,s9,0x3c
    800047e0:	00fd87b3          	add	a5,s11,a5
    800047e4:	0007c503          	lbu	a0,0(a5)
    800047e8:	fffd0d1b          	addiw	s10,s10,-1
    800047ec:	004c9c93          	slli	s9,s9,0x4
    800047f0:	00000097          	auipc	ra,0x0
    800047f4:	974080e7          	jalr	-1676(ra) # 80004164 <consputc>
    800047f8:	fe0d12e3          	bnez	s10,800047dc <__printf+0x494>
    800047fc:	f8dff06f          	j	80004788 <__printf+0x440>
    80004800:	f7843783          	ld	a5,-136(s0)
    80004804:	0007bc83          	ld	s9,0(a5)
    80004808:	00878793          	addi	a5,a5,8
    8000480c:	f6f43c23          	sd	a5,-136(s0)
    80004810:	000c9a63          	bnez	s9,80004824 <__printf+0x4dc>
    80004814:	1080006f          	j	8000491c <__printf+0x5d4>
    80004818:	001c8c93          	addi	s9,s9,1
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	948080e7          	jalr	-1720(ra) # 80004164 <consputc>
    80004824:	000cc503          	lbu	a0,0(s9)
    80004828:	fe0518e3          	bnez	a0,80004818 <__printf+0x4d0>
    8000482c:	f5dff06f          	j	80004788 <__printf+0x440>
    80004830:	02500513          	li	a0,37
    80004834:	00000097          	auipc	ra,0x0
    80004838:	930080e7          	jalr	-1744(ra) # 80004164 <consputc>
    8000483c:	000c8513          	mv	a0,s9
    80004840:	00000097          	auipc	ra,0x0
    80004844:	924080e7          	jalr	-1756(ra) # 80004164 <consputc>
    80004848:	f41ff06f          	j	80004788 <__printf+0x440>
    8000484c:	02500513          	li	a0,37
    80004850:	00000097          	auipc	ra,0x0
    80004854:	914080e7          	jalr	-1772(ra) # 80004164 <consputc>
    80004858:	f31ff06f          	j	80004788 <__printf+0x440>
    8000485c:	00030513          	mv	a0,t1
    80004860:	00000097          	auipc	ra,0x0
    80004864:	7bc080e7          	jalr	1980(ra) # 8000501c <acquire>
    80004868:	b4dff06f          	j	800043b4 <__printf+0x6c>
    8000486c:	40c0053b          	negw	a0,a2
    80004870:	00a00713          	li	a4,10
    80004874:	02e576bb          	remuw	a3,a0,a4
    80004878:	00002d97          	auipc	s11,0x2
    8000487c:	a30d8d93          	addi	s11,s11,-1488 # 800062a8 <digits>
    80004880:	ff700593          	li	a1,-9
    80004884:	02069693          	slli	a3,a3,0x20
    80004888:	0206d693          	srli	a3,a3,0x20
    8000488c:	00dd86b3          	add	a3,s11,a3
    80004890:	0006c683          	lbu	a3,0(a3)
    80004894:	02e557bb          	divuw	a5,a0,a4
    80004898:	f8d40023          	sb	a3,-128(s0)
    8000489c:	10b65e63          	bge	a2,a1,800049b8 <__printf+0x670>
    800048a0:	06300593          	li	a1,99
    800048a4:	02e7f6bb          	remuw	a3,a5,a4
    800048a8:	02069693          	slli	a3,a3,0x20
    800048ac:	0206d693          	srli	a3,a3,0x20
    800048b0:	00dd86b3          	add	a3,s11,a3
    800048b4:	0006c683          	lbu	a3,0(a3)
    800048b8:	02e7d73b          	divuw	a4,a5,a4
    800048bc:	00200793          	li	a5,2
    800048c0:	f8d400a3          	sb	a3,-127(s0)
    800048c4:	bca5ece3          	bltu	a1,a0,8000449c <__printf+0x154>
    800048c8:	ce5ff06f          	j	800045ac <__printf+0x264>
    800048cc:	40e007bb          	negw	a5,a4
    800048d0:	00002d97          	auipc	s11,0x2
    800048d4:	9d8d8d93          	addi	s11,s11,-1576 # 800062a8 <digits>
    800048d8:	00f7f693          	andi	a3,a5,15
    800048dc:	00dd86b3          	add	a3,s11,a3
    800048e0:	0006c583          	lbu	a1,0(a3)
    800048e4:	ff100613          	li	a2,-15
    800048e8:	0047d69b          	srliw	a3,a5,0x4
    800048ec:	f8b40023          	sb	a1,-128(s0)
    800048f0:	0047d59b          	srliw	a1,a5,0x4
    800048f4:	0ac75e63          	bge	a4,a2,800049b0 <__printf+0x668>
    800048f8:	00f6f693          	andi	a3,a3,15
    800048fc:	00dd86b3          	add	a3,s11,a3
    80004900:	0006c603          	lbu	a2,0(a3)
    80004904:	00f00693          	li	a3,15
    80004908:	0087d79b          	srliw	a5,a5,0x8
    8000490c:	f8c400a3          	sb	a2,-127(s0)
    80004910:	d8b6e4e3          	bltu	a3,a1,80004698 <__printf+0x350>
    80004914:	00200793          	li	a5,2
    80004918:	e2dff06f          	j	80004744 <__printf+0x3fc>
    8000491c:	00002c97          	auipc	s9,0x2
    80004920:	96cc8c93          	addi	s9,s9,-1684 # 80006288 <kvmincrease+0x7d8>
    80004924:	02800513          	li	a0,40
    80004928:	ef1ff06f          	j	80004818 <__printf+0x4d0>
    8000492c:	00700793          	li	a5,7
    80004930:	00600c93          	li	s9,6
    80004934:	e0dff06f          	j	80004740 <__printf+0x3f8>
    80004938:	00700793          	li	a5,7
    8000493c:	00600c93          	li	s9,6
    80004940:	c69ff06f          	j	800045a8 <__printf+0x260>
    80004944:	00300793          	li	a5,3
    80004948:	00200c93          	li	s9,2
    8000494c:	c5dff06f          	j	800045a8 <__printf+0x260>
    80004950:	00300793          	li	a5,3
    80004954:	00200c93          	li	s9,2
    80004958:	de9ff06f          	j	80004740 <__printf+0x3f8>
    8000495c:	00400793          	li	a5,4
    80004960:	00300c93          	li	s9,3
    80004964:	dddff06f          	j	80004740 <__printf+0x3f8>
    80004968:	00400793          	li	a5,4
    8000496c:	00300c93          	li	s9,3
    80004970:	c39ff06f          	j	800045a8 <__printf+0x260>
    80004974:	00500793          	li	a5,5
    80004978:	00400c93          	li	s9,4
    8000497c:	c2dff06f          	j	800045a8 <__printf+0x260>
    80004980:	00500793          	li	a5,5
    80004984:	00400c93          	li	s9,4
    80004988:	db9ff06f          	j	80004740 <__printf+0x3f8>
    8000498c:	00600793          	li	a5,6
    80004990:	00500c93          	li	s9,5
    80004994:	dadff06f          	j	80004740 <__printf+0x3f8>
    80004998:	00600793          	li	a5,6
    8000499c:	00500c93          	li	s9,5
    800049a0:	c09ff06f          	j	800045a8 <__printf+0x260>
    800049a4:	00800793          	li	a5,8
    800049a8:	00700c93          	li	s9,7
    800049ac:	bfdff06f          	j	800045a8 <__printf+0x260>
    800049b0:	00100793          	li	a5,1
    800049b4:	d91ff06f          	j	80004744 <__printf+0x3fc>
    800049b8:	00100793          	li	a5,1
    800049bc:	bf1ff06f          	j	800045ac <__printf+0x264>
    800049c0:	00900793          	li	a5,9
    800049c4:	00800c93          	li	s9,8
    800049c8:	be1ff06f          	j	800045a8 <__printf+0x260>
    800049cc:	00002517          	auipc	a0,0x2
    800049d0:	8c450513          	addi	a0,a0,-1852 # 80006290 <kvmincrease+0x7e0>
    800049d4:	00000097          	auipc	ra,0x0
    800049d8:	918080e7          	jalr	-1768(ra) # 800042ec <panic>

00000000800049dc <printfinit>:
    800049dc:	fe010113          	addi	sp,sp,-32
    800049e0:	00813823          	sd	s0,16(sp)
    800049e4:	00913423          	sd	s1,8(sp)
    800049e8:	00113c23          	sd	ra,24(sp)
    800049ec:	02010413          	addi	s0,sp,32
    800049f0:	00004497          	auipc	s1,0x4
    800049f4:	cc048493          	addi	s1,s1,-832 # 800086b0 <pr>
    800049f8:	00048513          	mv	a0,s1
    800049fc:	00002597          	auipc	a1,0x2
    80004a00:	8a458593          	addi	a1,a1,-1884 # 800062a0 <kvmincrease+0x7f0>
    80004a04:	00000097          	auipc	ra,0x0
    80004a08:	5f4080e7          	jalr	1524(ra) # 80004ff8 <initlock>
    80004a0c:	01813083          	ld	ra,24(sp)
    80004a10:	01013403          	ld	s0,16(sp)
    80004a14:	0004ac23          	sw	zero,24(s1)
    80004a18:	00813483          	ld	s1,8(sp)
    80004a1c:	02010113          	addi	sp,sp,32
    80004a20:	00008067          	ret

0000000080004a24 <uartinit>:
    80004a24:	ff010113          	addi	sp,sp,-16
    80004a28:	00813423          	sd	s0,8(sp)
    80004a2c:	01010413          	addi	s0,sp,16
    80004a30:	100007b7          	lui	a5,0x10000
    80004a34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004a38:	f8000713          	li	a4,-128
    80004a3c:	00e781a3          	sb	a4,3(a5)
    80004a40:	00300713          	li	a4,3
    80004a44:	00e78023          	sb	a4,0(a5)
    80004a48:	000780a3          	sb	zero,1(a5)
    80004a4c:	00e781a3          	sb	a4,3(a5)
    80004a50:	00700693          	li	a3,7
    80004a54:	00d78123          	sb	a3,2(a5)
    80004a58:	00e780a3          	sb	a4,1(a5)
    80004a5c:	00813403          	ld	s0,8(sp)
    80004a60:	01010113          	addi	sp,sp,16
    80004a64:	00008067          	ret

0000000080004a68 <uartputc>:
    80004a68:	00003797          	auipc	a5,0x3
    80004a6c:	9b07a783          	lw	a5,-1616(a5) # 80007418 <panicked>
    80004a70:	00078463          	beqz	a5,80004a78 <uartputc+0x10>
    80004a74:	0000006f          	j	80004a74 <uartputc+0xc>
    80004a78:	fd010113          	addi	sp,sp,-48
    80004a7c:	02813023          	sd	s0,32(sp)
    80004a80:	00913c23          	sd	s1,24(sp)
    80004a84:	01213823          	sd	s2,16(sp)
    80004a88:	01313423          	sd	s3,8(sp)
    80004a8c:	02113423          	sd	ra,40(sp)
    80004a90:	03010413          	addi	s0,sp,48
    80004a94:	00003917          	auipc	s2,0x3
    80004a98:	98c90913          	addi	s2,s2,-1652 # 80007420 <uart_tx_r>
    80004a9c:	00093783          	ld	a5,0(s2)
    80004aa0:	00003497          	auipc	s1,0x3
    80004aa4:	98848493          	addi	s1,s1,-1656 # 80007428 <uart_tx_w>
    80004aa8:	0004b703          	ld	a4,0(s1)
    80004aac:	02078693          	addi	a3,a5,32
    80004ab0:	00050993          	mv	s3,a0
    80004ab4:	02e69c63          	bne	a3,a4,80004aec <uartputc+0x84>
    80004ab8:	00001097          	auipc	ra,0x1
    80004abc:	834080e7          	jalr	-1996(ra) # 800052ec <push_on>
    80004ac0:	00093783          	ld	a5,0(s2)
    80004ac4:	0004b703          	ld	a4,0(s1)
    80004ac8:	02078793          	addi	a5,a5,32
    80004acc:	00e79463          	bne	a5,a4,80004ad4 <uartputc+0x6c>
    80004ad0:	0000006f          	j	80004ad0 <uartputc+0x68>
    80004ad4:	00001097          	auipc	ra,0x1
    80004ad8:	88c080e7          	jalr	-1908(ra) # 80005360 <pop_on>
    80004adc:	00093783          	ld	a5,0(s2)
    80004ae0:	0004b703          	ld	a4,0(s1)
    80004ae4:	02078693          	addi	a3,a5,32
    80004ae8:	fce688e3          	beq	a3,a4,80004ab8 <uartputc+0x50>
    80004aec:	01f77693          	andi	a3,a4,31
    80004af0:	00004597          	auipc	a1,0x4
    80004af4:	be058593          	addi	a1,a1,-1056 # 800086d0 <uart_tx_buf>
    80004af8:	00d586b3          	add	a3,a1,a3
    80004afc:	00170713          	addi	a4,a4,1
    80004b00:	01368023          	sb	s3,0(a3)
    80004b04:	00e4b023          	sd	a4,0(s1)
    80004b08:	10000637          	lui	a2,0x10000
    80004b0c:	02f71063          	bne	a4,a5,80004b2c <uartputc+0xc4>
    80004b10:	0340006f          	j	80004b44 <uartputc+0xdc>
    80004b14:	00074703          	lbu	a4,0(a4)
    80004b18:	00f93023          	sd	a5,0(s2)
    80004b1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004b20:	00093783          	ld	a5,0(s2)
    80004b24:	0004b703          	ld	a4,0(s1)
    80004b28:	00f70e63          	beq	a4,a5,80004b44 <uartputc+0xdc>
    80004b2c:	00564683          	lbu	a3,5(a2)
    80004b30:	01f7f713          	andi	a4,a5,31
    80004b34:	00e58733          	add	a4,a1,a4
    80004b38:	0206f693          	andi	a3,a3,32
    80004b3c:	00178793          	addi	a5,a5,1
    80004b40:	fc069ae3          	bnez	a3,80004b14 <uartputc+0xac>
    80004b44:	02813083          	ld	ra,40(sp)
    80004b48:	02013403          	ld	s0,32(sp)
    80004b4c:	01813483          	ld	s1,24(sp)
    80004b50:	01013903          	ld	s2,16(sp)
    80004b54:	00813983          	ld	s3,8(sp)
    80004b58:	03010113          	addi	sp,sp,48
    80004b5c:	00008067          	ret

0000000080004b60 <uartputc_sync>:
    80004b60:	ff010113          	addi	sp,sp,-16
    80004b64:	00813423          	sd	s0,8(sp)
    80004b68:	01010413          	addi	s0,sp,16
    80004b6c:	00003717          	auipc	a4,0x3
    80004b70:	8ac72703          	lw	a4,-1876(a4) # 80007418 <panicked>
    80004b74:	02071663          	bnez	a4,80004ba0 <uartputc_sync+0x40>
    80004b78:	00050793          	mv	a5,a0
    80004b7c:	100006b7          	lui	a3,0x10000
    80004b80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004b84:	02077713          	andi	a4,a4,32
    80004b88:	fe070ce3          	beqz	a4,80004b80 <uartputc_sync+0x20>
    80004b8c:	0ff7f793          	andi	a5,a5,255
    80004b90:	00f68023          	sb	a5,0(a3)
    80004b94:	00813403          	ld	s0,8(sp)
    80004b98:	01010113          	addi	sp,sp,16
    80004b9c:	00008067          	ret
    80004ba0:	0000006f          	j	80004ba0 <uartputc_sync+0x40>

0000000080004ba4 <uartstart>:
    80004ba4:	ff010113          	addi	sp,sp,-16
    80004ba8:	00813423          	sd	s0,8(sp)
    80004bac:	01010413          	addi	s0,sp,16
    80004bb0:	00003617          	auipc	a2,0x3
    80004bb4:	87060613          	addi	a2,a2,-1936 # 80007420 <uart_tx_r>
    80004bb8:	00003517          	auipc	a0,0x3
    80004bbc:	87050513          	addi	a0,a0,-1936 # 80007428 <uart_tx_w>
    80004bc0:	00063783          	ld	a5,0(a2)
    80004bc4:	00053703          	ld	a4,0(a0)
    80004bc8:	04f70263          	beq	a4,a5,80004c0c <uartstart+0x68>
    80004bcc:	100005b7          	lui	a1,0x10000
    80004bd0:	00004817          	auipc	a6,0x4
    80004bd4:	b0080813          	addi	a6,a6,-1280 # 800086d0 <uart_tx_buf>
    80004bd8:	01c0006f          	j	80004bf4 <uartstart+0x50>
    80004bdc:	0006c703          	lbu	a4,0(a3)
    80004be0:	00f63023          	sd	a5,0(a2)
    80004be4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004be8:	00063783          	ld	a5,0(a2)
    80004bec:	00053703          	ld	a4,0(a0)
    80004bf0:	00f70e63          	beq	a4,a5,80004c0c <uartstart+0x68>
    80004bf4:	01f7f713          	andi	a4,a5,31
    80004bf8:	00e806b3          	add	a3,a6,a4
    80004bfc:	0055c703          	lbu	a4,5(a1)
    80004c00:	00178793          	addi	a5,a5,1
    80004c04:	02077713          	andi	a4,a4,32
    80004c08:	fc071ae3          	bnez	a4,80004bdc <uartstart+0x38>
    80004c0c:	00813403          	ld	s0,8(sp)
    80004c10:	01010113          	addi	sp,sp,16
    80004c14:	00008067          	ret

0000000080004c18 <uartgetc>:
    80004c18:	ff010113          	addi	sp,sp,-16
    80004c1c:	00813423          	sd	s0,8(sp)
    80004c20:	01010413          	addi	s0,sp,16
    80004c24:	10000737          	lui	a4,0x10000
    80004c28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004c2c:	0017f793          	andi	a5,a5,1
    80004c30:	00078c63          	beqz	a5,80004c48 <uartgetc+0x30>
    80004c34:	00074503          	lbu	a0,0(a4)
    80004c38:	0ff57513          	andi	a0,a0,255
    80004c3c:	00813403          	ld	s0,8(sp)
    80004c40:	01010113          	addi	sp,sp,16
    80004c44:	00008067          	ret
    80004c48:	fff00513          	li	a0,-1
    80004c4c:	ff1ff06f          	j	80004c3c <uartgetc+0x24>

0000000080004c50 <uartintr>:
    80004c50:	100007b7          	lui	a5,0x10000
    80004c54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004c58:	0017f793          	andi	a5,a5,1
    80004c5c:	0a078463          	beqz	a5,80004d04 <uartintr+0xb4>
    80004c60:	fe010113          	addi	sp,sp,-32
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	00113c23          	sd	ra,24(sp)
    80004c70:	02010413          	addi	s0,sp,32
    80004c74:	100004b7          	lui	s1,0x10000
    80004c78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004c7c:	0ff57513          	andi	a0,a0,255
    80004c80:	fffff097          	auipc	ra,0xfffff
    80004c84:	534080e7          	jalr	1332(ra) # 800041b4 <consoleintr>
    80004c88:	0054c783          	lbu	a5,5(s1)
    80004c8c:	0017f793          	andi	a5,a5,1
    80004c90:	fe0794e3          	bnez	a5,80004c78 <uartintr+0x28>
    80004c94:	00002617          	auipc	a2,0x2
    80004c98:	78c60613          	addi	a2,a2,1932 # 80007420 <uart_tx_r>
    80004c9c:	00002517          	auipc	a0,0x2
    80004ca0:	78c50513          	addi	a0,a0,1932 # 80007428 <uart_tx_w>
    80004ca4:	00063783          	ld	a5,0(a2)
    80004ca8:	00053703          	ld	a4,0(a0)
    80004cac:	04f70263          	beq	a4,a5,80004cf0 <uartintr+0xa0>
    80004cb0:	100005b7          	lui	a1,0x10000
    80004cb4:	00004817          	auipc	a6,0x4
    80004cb8:	a1c80813          	addi	a6,a6,-1508 # 800086d0 <uart_tx_buf>
    80004cbc:	01c0006f          	j	80004cd8 <uartintr+0x88>
    80004cc0:	0006c703          	lbu	a4,0(a3)
    80004cc4:	00f63023          	sd	a5,0(a2)
    80004cc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004ccc:	00063783          	ld	a5,0(a2)
    80004cd0:	00053703          	ld	a4,0(a0)
    80004cd4:	00f70e63          	beq	a4,a5,80004cf0 <uartintr+0xa0>
    80004cd8:	01f7f713          	andi	a4,a5,31
    80004cdc:	00e806b3          	add	a3,a6,a4
    80004ce0:	0055c703          	lbu	a4,5(a1)
    80004ce4:	00178793          	addi	a5,a5,1
    80004ce8:	02077713          	andi	a4,a4,32
    80004cec:	fc071ae3          	bnez	a4,80004cc0 <uartintr+0x70>
    80004cf0:	01813083          	ld	ra,24(sp)
    80004cf4:	01013403          	ld	s0,16(sp)
    80004cf8:	00813483          	ld	s1,8(sp)
    80004cfc:	02010113          	addi	sp,sp,32
    80004d00:	00008067          	ret
    80004d04:	00002617          	auipc	a2,0x2
    80004d08:	71c60613          	addi	a2,a2,1820 # 80007420 <uart_tx_r>
    80004d0c:	00002517          	auipc	a0,0x2
    80004d10:	71c50513          	addi	a0,a0,1820 # 80007428 <uart_tx_w>
    80004d14:	00063783          	ld	a5,0(a2)
    80004d18:	00053703          	ld	a4,0(a0)
    80004d1c:	04f70263          	beq	a4,a5,80004d60 <uartintr+0x110>
    80004d20:	100005b7          	lui	a1,0x10000
    80004d24:	00004817          	auipc	a6,0x4
    80004d28:	9ac80813          	addi	a6,a6,-1620 # 800086d0 <uart_tx_buf>
    80004d2c:	01c0006f          	j	80004d48 <uartintr+0xf8>
    80004d30:	0006c703          	lbu	a4,0(a3)
    80004d34:	00f63023          	sd	a5,0(a2)
    80004d38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004d3c:	00063783          	ld	a5,0(a2)
    80004d40:	00053703          	ld	a4,0(a0)
    80004d44:	02f70063          	beq	a4,a5,80004d64 <uartintr+0x114>
    80004d48:	01f7f713          	andi	a4,a5,31
    80004d4c:	00e806b3          	add	a3,a6,a4
    80004d50:	0055c703          	lbu	a4,5(a1)
    80004d54:	00178793          	addi	a5,a5,1
    80004d58:	02077713          	andi	a4,a4,32
    80004d5c:	fc071ae3          	bnez	a4,80004d30 <uartintr+0xe0>
    80004d60:	00008067          	ret
    80004d64:	00008067          	ret

0000000080004d68 <kinit>:
    80004d68:	fc010113          	addi	sp,sp,-64
    80004d6c:	02913423          	sd	s1,40(sp)
    80004d70:	fffff7b7          	lui	a5,0xfffff
    80004d74:	00005497          	auipc	s1,0x5
    80004d78:	98b48493          	addi	s1,s1,-1653 # 800096ff <end+0xfff>
    80004d7c:	02813823          	sd	s0,48(sp)
    80004d80:	01313c23          	sd	s3,24(sp)
    80004d84:	00f4f4b3          	and	s1,s1,a5
    80004d88:	02113c23          	sd	ra,56(sp)
    80004d8c:	03213023          	sd	s2,32(sp)
    80004d90:	01413823          	sd	s4,16(sp)
    80004d94:	01513423          	sd	s5,8(sp)
    80004d98:	04010413          	addi	s0,sp,64
    80004d9c:	000017b7          	lui	a5,0x1
    80004da0:	01100993          	li	s3,17
    80004da4:	00f487b3          	add	a5,s1,a5
    80004da8:	01b99993          	slli	s3,s3,0x1b
    80004dac:	06f9e063          	bltu	s3,a5,80004e0c <kinit+0xa4>
    80004db0:	00004a97          	auipc	s5,0x4
    80004db4:	950a8a93          	addi	s5,s5,-1712 # 80008700 <end>
    80004db8:	0754ec63          	bltu	s1,s5,80004e30 <kinit+0xc8>
    80004dbc:	0734fa63          	bgeu	s1,s3,80004e30 <kinit+0xc8>
    80004dc0:	00088a37          	lui	s4,0x88
    80004dc4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004dc8:	00002917          	auipc	s2,0x2
    80004dcc:	66890913          	addi	s2,s2,1640 # 80007430 <kmem>
    80004dd0:	00ca1a13          	slli	s4,s4,0xc
    80004dd4:	0140006f          	j	80004de8 <kinit+0x80>
    80004dd8:	000017b7          	lui	a5,0x1
    80004ddc:	00f484b3          	add	s1,s1,a5
    80004de0:	0554e863          	bltu	s1,s5,80004e30 <kinit+0xc8>
    80004de4:	0534f663          	bgeu	s1,s3,80004e30 <kinit+0xc8>
    80004de8:	00001637          	lui	a2,0x1
    80004dec:	00100593          	li	a1,1
    80004df0:	00048513          	mv	a0,s1
    80004df4:	00000097          	auipc	ra,0x0
    80004df8:	5e4080e7          	jalr	1508(ra) # 800053d8 <__memset>
    80004dfc:	00093783          	ld	a5,0(s2)
    80004e00:	00f4b023          	sd	a5,0(s1)
    80004e04:	00993023          	sd	s1,0(s2)
    80004e08:	fd4498e3          	bne	s1,s4,80004dd8 <kinit+0x70>
    80004e0c:	03813083          	ld	ra,56(sp)
    80004e10:	03013403          	ld	s0,48(sp)
    80004e14:	02813483          	ld	s1,40(sp)
    80004e18:	02013903          	ld	s2,32(sp)
    80004e1c:	01813983          	ld	s3,24(sp)
    80004e20:	01013a03          	ld	s4,16(sp)
    80004e24:	00813a83          	ld	s5,8(sp)
    80004e28:	04010113          	addi	sp,sp,64
    80004e2c:	00008067          	ret
    80004e30:	00001517          	auipc	a0,0x1
    80004e34:	49050513          	addi	a0,a0,1168 # 800062c0 <digits+0x18>
    80004e38:	fffff097          	auipc	ra,0xfffff
    80004e3c:	4b4080e7          	jalr	1204(ra) # 800042ec <panic>

0000000080004e40 <freerange>:
    80004e40:	fc010113          	addi	sp,sp,-64
    80004e44:	000017b7          	lui	a5,0x1
    80004e48:	02913423          	sd	s1,40(sp)
    80004e4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004e50:	009504b3          	add	s1,a0,s1
    80004e54:	fffff537          	lui	a0,0xfffff
    80004e58:	02813823          	sd	s0,48(sp)
    80004e5c:	02113c23          	sd	ra,56(sp)
    80004e60:	03213023          	sd	s2,32(sp)
    80004e64:	01313c23          	sd	s3,24(sp)
    80004e68:	01413823          	sd	s4,16(sp)
    80004e6c:	01513423          	sd	s5,8(sp)
    80004e70:	01613023          	sd	s6,0(sp)
    80004e74:	04010413          	addi	s0,sp,64
    80004e78:	00a4f4b3          	and	s1,s1,a0
    80004e7c:	00f487b3          	add	a5,s1,a5
    80004e80:	06f5e463          	bltu	a1,a5,80004ee8 <freerange+0xa8>
    80004e84:	00004a97          	auipc	s5,0x4
    80004e88:	87ca8a93          	addi	s5,s5,-1924 # 80008700 <end>
    80004e8c:	0954e263          	bltu	s1,s5,80004f10 <freerange+0xd0>
    80004e90:	01100993          	li	s3,17
    80004e94:	01b99993          	slli	s3,s3,0x1b
    80004e98:	0734fc63          	bgeu	s1,s3,80004f10 <freerange+0xd0>
    80004e9c:	00058a13          	mv	s4,a1
    80004ea0:	00002917          	auipc	s2,0x2
    80004ea4:	59090913          	addi	s2,s2,1424 # 80007430 <kmem>
    80004ea8:	00002b37          	lui	s6,0x2
    80004eac:	0140006f          	j	80004ec0 <freerange+0x80>
    80004eb0:	000017b7          	lui	a5,0x1
    80004eb4:	00f484b3          	add	s1,s1,a5
    80004eb8:	0554ec63          	bltu	s1,s5,80004f10 <freerange+0xd0>
    80004ebc:	0534fa63          	bgeu	s1,s3,80004f10 <freerange+0xd0>
    80004ec0:	00001637          	lui	a2,0x1
    80004ec4:	00100593          	li	a1,1
    80004ec8:	00048513          	mv	a0,s1
    80004ecc:	00000097          	auipc	ra,0x0
    80004ed0:	50c080e7          	jalr	1292(ra) # 800053d8 <__memset>
    80004ed4:	00093703          	ld	a4,0(s2)
    80004ed8:	016487b3          	add	a5,s1,s6
    80004edc:	00e4b023          	sd	a4,0(s1)
    80004ee0:	00993023          	sd	s1,0(s2)
    80004ee4:	fcfa76e3          	bgeu	s4,a5,80004eb0 <freerange+0x70>
    80004ee8:	03813083          	ld	ra,56(sp)
    80004eec:	03013403          	ld	s0,48(sp)
    80004ef0:	02813483          	ld	s1,40(sp)
    80004ef4:	02013903          	ld	s2,32(sp)
    80004ef8:	01813983          	ld	s3,24(sp)
    80004efc:	01013a03          	ld	s4,16(sp)
    80004f00:	00813a83          	ld	s5,8(sp)
    80004f04:	00013b03          	ld	s6,0(sp)
    80004f08:	04010113          	addi	sp,sp,64
    80004f0c:	00008067          	ret
    80004f10:	00001517          	auipc	a0,0x1
    80004f14:	3b050513          	addi	a0,a0,944 # 800062c0 <digits+0x18>
    80004f18:	fffff097          	auipc	ra,0xfffff
    80004f1c:	3d4080e7          	jalr	980(ra) # 800042ec <panic>

0000000080004f20 <kfree>:
    80004f20:	fe010113          	addi	sp,sp,-32
    80004f24:	00813823          	sd	s0,16(sp)
    80004f28:	00113c23          	sd	ra,24(sp)
    80004f2c:	00913423          	sd	s1,8(sp)
    80004f30:	02010413          	addi	s0,sp,32
    80004f34:	03451793          	slli	a5,a0,0x34
    80004f38:	04079c63          	bnez	a5,80004f90 <kfree+0x70>
    80004f3c:	00003797          	auipc	a5,0x3
    80004f40:	7c478793          	addi	a5,a5,1988 # 80008700 <end>
    80004f44:	00050493          	mv	s1,a0
    80004f48:	04f56463          	bltu	a0,a5,80004f90 <kfree+0x70>
    80004f4c:	01100793          	li	a5,17
    80004f50:	01b79793          	slli	a5,a5,0x1b
    80004f54:	02f57e63          	bgeu	a0,a5,80004f90 <kfree+0x70>
    80004f58:	00001637          	lui	a2,0x1
    80004f5c:	00100593          	li	a1,1
    80004f60:	00000097          	auipc	ra,0x0
    80004f64:	478080e7          	jalr	1144(ra) # 800053d8 <__memset>
    80004f68:	00002797          	auipc	a5,0x2
    80004f6c:	4c878793          	addi	a5,a5,1224 # 80007430 <kmem>
    80004f70:	0007b703          	ld	a4,0(a5)
    80004f74:	01813083          	ld	ra,24(sp)
    80004f78:	01013403          	ld	s0,16(sp)
    80004f7c:	00e4b023          	sd	a4,0(s1)
    80004f80:	0097b023          	sd	s1,0(a5)
    80004f84:	00813483          	ld	s1,8(sp)
    80004f88:	02010113          	addi	sp,sp,32
    80004f8c:	00008067          	ret
    80004f90:	00001517          	auipc	a0,0x1
    80004f94:	33050513          	addi	a0,a0,816 # 800062c0 <digits+0x18>
    80004f98:	fffff097          	auipc	ra,0xfffff
    80004f9c:	354080e7          	jalr	852(ra) # 800042ec <panic>

0000000080004fa0 <kalloc>:
    80004fa0:	fe010113          	addi	sp,sp,-32
    80004fa4:	00813823          	sd	s0,16(sp)
    80004fa8:	00913423          	sd	s1,8(sp)
    80004fac:	00113c23          	sd	ra,24(sp)
    80004fb0:	02010413          	addi	s0,sp,32
    80004fb4:	00002797          	auipc	a5,0x2
    80004fb8:	47c78793          	addi	a5,a5,1148 # 80007430 <kmem>
    80004fbc:	0007b483          	ld	s1,0(a5)
    80004fc0:	02048063          	beqz	s1,80004fe0 <kalloc+0x40>
    80004fc4:	0004b703          	ld	a4,0(s1)
    80004fc8:	00001637          	lui	a2,0x1
    80004fcc:	00500593          	li	a1,5
    80004fd0:	00048513          	mv	a0,s1
    80004fd4:	00e7b023          	sd	a4,0(a5)
    80004fd8:	00000097          	auipc	ra,0x0
    80004fdc:	400080e7          	jalr	1024(ra) # 800053d8 <__memset>
    80004fe0:	01813083          	ld	ra,24(sp)
    80004fe4:	01013403          	ld	s0,16(sp)
    80004fe8:	00048513          	mv	a0,s1
    80004fec:	00813483          	ld	s1,8(sp)
    80004ff0:	02010113          	addi	sp,sp,32
    80004ff4:	00008067          	ret

0000000080004ff8 <initlock>:
    80004ff8:	ff010113          	addi	sp,sp,-16
    80004ffc:	00813423          	sd	s0,8(sp)
    80005000:	01010413          	addi	s0,sp,16
    80005004:	00813403          	ld	s0,8(sp)
    80005008:	00b53423          	sd	a1,8(a0)
    8000500c:	00052023          	sw	zero,0(a0)
    80005010:	00053823          	sd	zero,16(a0)
    80005014:	01010113          	addi	sp,sp,16
    80005018:	00008067          	ret

000000008000501c <acquire>:
    8000501c:	fe010113          	addi	sp,sp,-32
    80005020:	00813823          	sd	s0,16(sp)
    80005024:	00913423          	sd	s1,8(sp)
    80005028:	00113c23          	sd	ra,24(sp)
    8000502c:	01213023          	sd	s2,0(sp)
    80005030:	02010413          	addi	s0,sp,32
    80005034:	00050493          	mv	s1,a0
    80005038:	10002973          	csrr	s2,sstatus
    8000503c:	100027f3          	csrr	a5,sstatus
    80005040:	ffd7f793          	andi	a5,a5,-3
    80005044:	10079073          	csrw	sstatus,a5
    80005048:	fffff097          	auipc	ra,0xfffff
    8000504c:	8e4080e7          	jalr	-1820(ra) # 8000392c <mycpu>
    80005050:	07852783          	lw	a5,120(a0)
    80005054:	06078e63          	beqz	a5,800050d0 <acquire+0xb4>
    80005058:	fffff097          	auipc	ra,0xfffff
    8000505c:	8d4080e7          	jalr	-1836(ra) # 8000392c <mycpu>
    80005060:	07852783          	lw	a5,120(a0)
    80005064:	0004a703          	lw	a4,0(s1)
    80005068:	0017879b          	addiw	a5,a5,1
    8000506c:	06f52c23          	sw	a5,120(a0)
    80005070:	04071063          	bnez	a4,800050b0 <acquire+0x94>
    80005074:	00100713          	li	a4,1
    80005078:	00070793          	mv	a5,a4
    8000507c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005080:	0007879b          	sext.w	a5,a5
    80005084:	fe079ae3          	bnez	a5,80005078 <acquire+0x5c>
    80005088:	0ff0000f          	fence
    8000508c:	fffff097          	auipc	ra,0xfffff
    80005090:	8a0080e7          	jalr	-1888(ra) # 8000392c <mycpu>
    80005094:	01813083          	ld	ra,24(sp)
    80005098:	01013403          	ld	s0,16(sp)
    8000509c:	00a4b823          	sd	a0,16(s1)
    800050a0:	00013903          	ld	s2,0(sp)
    800050a4:	00813483          	ld	s1,8(sp)
    800050a8:	02010113          	addi	sp,sp,32
    800050ac:	00008067          	ret
    800050b0:	0104b903          	ld	s2,16(s1)
    800050b4:	fffff097          	auipc	ra,0xfffff
    800050b8:	878080e7          	jalr	-1928(ra) # 8000392c <mycpu>
    800050bc:	faa91ce3          	bne	s2,a0,80005074 <acquire+0x58>
    800050c0:	00001517          	auipc	a0,0x1
    800050c4:	20850513          	addi	a0,a0,520 # 800062c8 <digits+0x20>
    800050c8:	fffff097          	auipc	ra,0xfffff
    800050cc:	224080e7          	jalr	548(ra) # 800042ec <panic>
    800050d0:	00195913          	srli	s2,s2,0x1
    800050d4:	fffff097          	auipc	ra,0xfffff
    800050d8:	858080e7          	jalr	-1960(ra) # 8000392c <mycpu>
    800050dc:	00197913          	andi	s2,s2,1
    800050e0:	07252e23          	sw	s2,124(a0)
    800050e4:	f75ff06f          	j	80005058 <acquire+0x3c>

00000000800050e8 <release>:
    800050e8:	fe010113          	addi	sp,sp,-32
    800050ec:	00813823          	sd	s0,16(sp)
    800050f0:	00113c23          	sd	ra,24(sp)
    800050f4:	00913423          	sd	s1,8(sp)
    800050f8:	01213023          	sd	s2,0(sp)
    800050fc:	02010413          	addi	s0,sp,32
    80005100:	00052783          	lw	a5,0(a0)
    80005104:	00079a63          	bnez	a5,80005118 <release+0x30>
    80005108:	00001517          	auipc	a0,0x1
    8000510c:	1c850513          	addi	a0,a0,456 # 800062d0 <digits+0x28>
    80005110:	fffff097          	auipc	ra,0xfffff
    80005114:	1dc080e7          	jalr	476(ra) # 800042ec <panic>
    80005118:	01053903          	ld	s2,16(a0)
    8000511c:	00050493          	mv	s1,a0
    80005120:	fffff097          	auipc	ra,0xfffff
    80005124:	80c080e7          	jalr	-2036(ra) # 8000392c <mycpu>
    80005128:	fea910e3          	bne	s2,a0,80005108 <release+0x20>
    8000512c:	0004b823          	sd	zero,16(s1)
    80005130:	0ff0000f          	fence
    80005134:	0f50000f          	fence	iorw,ow
    80005138:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000513c:	ffffe097          	auipc	ra,0xffffe
    80005140:	7f0080e7          	jalr	2032(ra) # 8000392c <mycpu>
    80005144:	100027f3          	csrr	a5,sstatus
    80005148:	0027f793          	andi	a5,a5,2
    8000514c:	04079a63          	bnez	a5,800051a0 <release+0xb8>
    80005150:	07852783          	lw	a5,120(a0)
    80005154:	02f05e63          	blez	a5,80005190 <release+0xa8>
    80005158:	fff7871b          	addiw	a4,a5,-1
    8000515c:	06e52c23          	sw	a4,120(a0)
    80005160:	00071c63          	bnez	a4,80005178 <release+0x90>
    80005164:	07c52783          	lw	a5,124(a0)
    80005168:	00078863          	beqz	a5,80005178 <release+0x90>
    8000516c:	100027f3          	csrr	a5,sstatus
    80005170:	0027e793          	ori	a5,a5,2
    80005174:	10079073          	csrw	sstatus,a5
    80005178:	01813083          	ld	ra,24(sp)
    8000517c:	01013403          	ld	s0,16(sp)
    80005180:	00813483          	ld	s1,8(sp)
    80005184:	00013903          	ld	s2,0(sp)
    80005188:	02010113          	addi	sp,sp,32
    8000518c:	00008067          	ret
    80005190:	00001517          	auipc	a0,0x1
    80005194:	16050513          	addi	a0,a0,352 # 800062f0 <digits+0x48>
    80005198:	fffff097          	auipc	ra,0xfffff
    8000519c:	154080e7          	jalr	340(ra) # 800042ec <panic>
    800051a0:	00001517          	auipc	a0,0x1
    800051a4:	13850513          	addi	a0,a0,312 # 800062d8 <digits+0x30>
    800051a8:	fffff097          	auipc	ra,0xfffff
    800051ac:	144080e7          	jalr	324(ra) # 800042ec <panic>

00000000800051b0 <holding>:
    800051b0:	00052783          	lw	a5,0(a0)
    800051b4:	00079663          	bnez	a5,800051c0 <holding+0x10>
    800051b8:	00000513          	li	a0,0
    800051bc:	00008067          	ret
    800051c0:	fe010113          	addi	sp,sp,-32
    800051c4:	00813823          	sd	s0,16(sp)
    800051c8:	00913423          	sd	s1,8(sp)
    800051cc:	00113c23          	sd	ra,24(sp)
    800051d0:	02010413          	addi	s0,sp,32
    800051d4:	01053483          	ld	s1,16(a0)
    800051d8:	ffffe097          	auipc	ra,0xffffe
    800051dc:	754080e7          	jalr	1876(ra) # 8000392c <mycpu>
    800051e0:	01813083          	ld	ra,24(sp)
    800051e4:	01013403          	ld	s0,16(sp)
    800051e8:	40a48533          	sub	a0,s1,a0
    800051ec:	00153513          	seqz	a0,a0
    800051f0:	00813483          	ld	s1,8(sp)
    800051f4:	02010113          	addi	sp,sp,32
    800051f8:	00008067          	ret

00000000800051fc <push_off>:
    800051fc:	fe010113          	addi	sp,sp,-32
    80005200:	00813823          	sd	s0,16(sp)
    80005204:	00113c23          	sd	ra,24(sp)
    80005208:	00913423          	sd	s1,8(sp)
    8000520c:	02010413          	addi	s0,sp,32
    80005210:	100024f3          	csrr	s1,sstatus
    80005214:	100027f3          	csrr	a5,sstatus
    80005218:	ffd7f793          	andi	a5,a5,-3
    8000521c:	10079073          	csrw	sstatus,a5
    80005220:	ffffe097          	auipc	ra,0xffffe
    80005224:	70c080e7          	jalr	1804(ra) # 8000392c <mycpu>
    80005228:	07852783          	lw	a5,120(a0)
    8000522c:	02078663          	beqz	a5,80005258 <push_off+0x5c>
    80005230:	ffffe097          	auipc	ra,0xffffe
    80005234:	6fc080e7          	jalr	1788(ra) # 8000392c <mycpu>
    80005238:	07852783          	lw	a5,120(a0)
    8000523c:	01813083          	ld	ra,24(sp)
    80005240:	01013403          	ld	s0,16(sp)
    80005244:	0017879b          	addiw	a5,a5,1
    80005248:	06f52c23          	sw	a5,120(a0)
    8000524c:	00813483          	ld	s1,8(sp)
    80005250:	02010113          	addi	sp,sp,32
    80005254:	00008067          	ret
    80005258:	0014d493          	srli	s1,s1,0x1
    8000525c:	ffffe097          	auipc	ra,0xffffe
    80005260:	6d0080e7          	jalr	1744(ra) # 8000392c <mycpu>
    80005264:	0014f493          	andi	s1,s1,1
    80005268:	06952e23          	sw	s1,124(a0)
    8000526c:	fc5ff06f          	j	80005230 <push_off+0x34>

0000000080005270 <pop_off>:
    80005270:	ff010113          	addi	sp,sp,-16
    80005274:	00813023          	sd	s0,0(sp)
    80005278:	00113423          	sd	ra,8(sp)
    8000527c:	01010413          	addi	s0,sp,16
    80005280:	ffffe097          	auipc	ra,0xffffe
    80005284:	6ac080e7          	jalr	1708(ra) # 8000392c <mycpu>
    80005288:	100027f3          	csrr	a5,sstatus
    8000528c:	0027f793          	andi	a5,a5,2
    80005290:	04079663          	bnez	a5,800052dc <pop_off+0x6c>
    80005294:	07852783          	lw	a5,120(a0)
    80005298:	02f05a63          	blez	a5,800052cc <pop_off+0x5c>
    8000529c:	fff7871b          	addiw	a4,a5,-1
    800052a0:	06e52c23          	sw	a4,120(a0)
    800052a4:	00071c63          	bnez	a4,800052bc <pop_off+0x4c>
    800052a8:	07c52783          	lw	a5,124(a0)
    800052ac:	00078863          	beqz	a5,800052bc <pop_off+0x4c>
    800052b0:	100027f3          	csrr	a5,sstatus
    800052b4:	0027e793          	ori	a5,a5,2
    800052b8:	10079073          	csrw	sstatus,a5
    800052bc:	00813083          	ld	ra,8(sp)
    800052c0:	00013403          	ld	s0,0(sp)
    800052c4:	01010113          	addi	sp,sp,16
    800052c8:	00008067          	ret
    800052cc:	00001517          	auipc	a0,0x1
    800052d0:	02450513          	addi	a0,a0,36 # 800062f0 <digits+0x48>
    800052d4:	fffff097          	auipc	ra,0xfffff
    800052d8:	018080e7          	jalr	24(ra) # 800042ec <panic>
    800052dc:	00001517          	auipc	a0,0x1
    800052e0:	ffc50513          	addi	a0,a0,-4 # 800062d8 <digits+0x30>
    800052e4:	fffff097          	auipc	ra,0xfffff
    800052e8:	008080e7          	jalr	8(ra) # 800042ec <panic>

00000000800052ec <push_on>:
    800052ec:	fe010113          	addi	sp,sp,-32
    800052f0:	00813823          	sd	s0,16(sp)
    800052f4:	00113c23          	sd	ra,24(sp)
    800052f8:	00913423          	sd	s1,8(sp)
    800052fc:	02010413          	addi	s0,sp,32
    80005300:	100024f3          	csrr	s1,sstatus
    80005304:	100027f3          	csrr	a5,sstatus
    80005308:	0027e793          	ori	a5,a5,2
    8000530c:	10079073          	csrw	sstatus,a5
    80005310:	ffffe097          	auipc	ra,0xffffe
    80005314:	61c080e7          	jalr	1564(ra) # 8000392c <mycpu>
    80005318:	07852783          	lw	a5,120(a0)
    8000531c:	02078663          	beqz	a5,80005348 <push_on+0x5c>
    80005320:	ffffe097          	auipc	ra,0xffffe
    80005324:	60c080e7          	jalr	1548(ra) # 8000392c <mycpu>
    80005328:	07852783          	lw	a5,120(a0)
    8000532c:	01813083          	ld	ra,24(sp)
    80005330:	01013403          	ld	s0,16(sp)
    80005334:	0017879b          	addiw	a5,a5,1
    80005338:	06f52c23          	sw	a5,120(a0)
    8000533c:	00813483          	ld	s1,8(sp)
    80005340:	02010113          	addi	sp,sp,32
    80005344:	00008067          	ret
    80005348:	0014d493          	srli	s1,s1,0x1
    8000534c:	ffffe097          	auipc	ra,0xffffe
    80005350:	5e0080e7          	jalr	1504(ra) # 8000392c <mycpu>
    80005354:	0014f493          	andi	s1,s1,1
    80005358:	06952e23          	sw	s1,124(a0)
    8000535c:	fc5ff06f          	j	80005320 <push_on+0x34>

0000000080005360 <pop_on>:
    80005360:	ff010113          	addi	sp,sp,-16
    80005364:	00813023          	sd	s0,0(sp)
    80005368:	00113423          	sd	ra,8(sp)
    8000536c:	01010413          	addi	s0,sp,16
    80005370:	ffffe097          	auipc	ra,0xffffe
    80005374:	5bc080e7          	jalr	1468(ra) # 8000392c <mycpu>
    80005378:	100027f3          	csrr	a5,sstatus
    8000537c:	0027f793          	andi	a5,a5,2
    80005380:	04078463          	beqz	a5,800053c8 <pop_on+0x68>
    80005384:	07852783          	lw	a5,120(a0)
    80005388:	02f05863          	blez	a5,800053b8 <pop_on+0x58>
    8000538c:	fff7879b          	addiw	a5,a5,-1
    80005390:	06f52c23          	sw	a5,120(a0)
    80005394:	07853783          	ld	a5,120(a0)
    80005398:	00079863          	bnez	a5,800053a8 <pop_on+0x48>
    8000539c:	100027f3          	csrr	a5,sstatus
    800053a0:	ffd7f793          	andi	a5,a5,-3
    800053a4:	10079073          	csrw	sstatus,a5
    800053a8:	00813083          	ld	ra,8(sp)
    800053ac:	00013403          	ld	s0,0(sp)
    800053b0:	01010113          	addi	sp,sp,16
    800053b4:	00008067          	ret
    800053b8:	00001517          	auipc	a0,0x1
    800053bc:	f6050513          	addi	a0,a0,-160 # 80006318 <digits+0x70>
    800053c0:	fffff097          	auipc	ra,0xfffff
    800053c4:	f2c080e7          	jalr	-212(ra) # 800042ec <panic>
    800053c8:	00001517          	auipc	a0,0x1
    800053cc:	f3050513          	addi	a0,a0,-208 # 800062f8 <digits+0x50>
    800053d0:	fffff097          	auipc	ra,0xfffff
    800053d4:	f1c080e7          	jalr	-228(ra) # 800042ec <panic>

00000000800053d8 <__memset>:
    800053d8:	ff010113          	addi	sp,sp,-16
    800053dc:	00813423          	sd	s0,8(sp)
    800053e0:	01010413          	addi	s0,sp,16
    800053e4:	1a060e63          	beqz	a2,800055a0 <__memset+0x1c8>
    800053e8:	40a007b3          	neg	a5,a0
    800053ec:	0077f793          	andi	a5,a5,7
    800053f0:	00778693          	addi	a3,a5,7
    800053f4:	00b00813          	li	a6,11
    800053f8:	0ff5f593          	andi	a1,a1,255
    800053fc:	fff6071b          	addiw	a4,a2,-1
    80005400:	1b06e663          	bltu	a3,a6,800055ac <__memset+0x1d4>
    80005404:	1cd76463          	bltu	a4,a3,800055cc <__memset+0x1f4>
    80005408:	1a078e63          	beqz	a5,800055c4 <__memset+0x1ec>
    8000540c:	00b50023          	sb	a1,0(a0)
    80005410:	00100713          	li	a4,1
    80005414:	1ae78463          	beq	a5,a4,800055bc <__memset+0x1e4>
    80005418:	00b500a3          	sb	a1,1(a0)
    8000541c:	00200713          	li	a4,2
    80005420:	1ae78a63          	beq	a5,a4,800055d4 <__memset+0x1fc>
    80005424:	00b50123          	sb	a1,2(a0)
    80005428:	00300713          	li	a4,3
    8000542c:	18e78463          	beq	a5,a4,800055b4 <__memset+0x1dc>
    80005430:	00b501a3          	sb	a1,3(a0)
    80005434:	00400713          	li	a4,4
    80005438:	1ae78263          	beq	a5,a4,800055dc <__memset+0x204>
    8000543c:	00b50223          	sb	a1,4(a0)
    80005440:	00500713          	li	a4,5
    80005444:	1ae78063          	beq	a5,a4,800055e4 <__memset+0x20c>
    80005448:	00b502a3          	sb	a1,5(a0)
    8000544c:	00700713          	li	a4,7
    80005450:	18e79e63          	bne	a5,a4,800055ec <__memset+0x214>
    80005454:	00b50323          	sb	a1,6(a0)
    80005458:	00700e93          	li	t4,7
    8000545c:	00859713          	slli	a4,a1,0x8
    80005460:	00e5e733          	or	a4,a1,a4
    80005464:	01059e13          	slli	t3,a1,0x10
    80005468:	01c76e33          	or	t3,a4,t3
    8000546c:	01859313          	slli	t1,a1,0x18
    80005470:	006e6333          	or	t1,t3,t1
    80005474:	02059893          	slli	a7,a1,0x20
    80005478:	40f60e3b          	subw	t3,a2,a5
    8000547c:	011368b3          	or	a7,t1,a7
    80005480:	02859813          	slli	a6,a1,0x28
    80005484:	0108e833          	or	a6,a7,a6
    80005488:	03059693          	slli	a3,a1,0x30
    8000548c:	003e589b          	srliw	a7,t3,0x3
    80005490:	00d866b3          	or	a3,a6,a3
    80005494:	03859713          	slli	a4,a1,0x38
    80005498:	00389813          	slli	a6,a7,0x3
    8000549c:	00f507b3          	add	a5,a0,a5
    800054a0:	00e6e733          	or	a4,a3,a4
    800054a4:	000e089b          	sext.w	a7,t3
    800054a8:	00f806b3          	add	a3,a6,a5
    800054ac:	00e7b023          	sd	a4,0(a5)
    800054b0:	00878793          	addi	a5,a5,8
    800054b4:	fed79ce3          	bne	a5,a3,800054ac <__memset+0xd4>
    800054b8:	ff8e7793          	andi	a5,t3,-8
    800054bc:	0007871b          	sext.w	a4,a5
    800054c0:	01d787bb          	addw	a5,a5,t4
    800054c4:	0ce88e63          	beq	a7,a4,800055a0 <__memset+0x1c8>
    800054c8:	00f50733          	add	a4,a0,a5
    800054cc:	00b70023          	sb	a1,0(a4)
    800054d0:	0017871b          	addiw	a4,a5,1
    800054d4:	0cc77663          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    800054d8:	00e50733          	add	a4,a0,a4
    800054dc:	00b70023          	sb	a1,0(a4)
    800054e0:	0027871b          	addiw	a4,a5,2
    800054e4:	0ac77e63          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    800054e8:	00e50733          	add	a4,a0,a4
    800054ec:	00b70023          	sb	a1,0(a4)
    800054f0:	0037871b          	addiw	a4,a5,3
    800054f4:	0ac77663          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    800054f8:	00e50733          	add	a4,a0,a4
    800054fc:	00b70023          	sb	a1,0(a4)
    80005500:	0047871b          	addiw	a4,a5,4
    80005504:	08c77e63          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005508:	00e50733          	add	a4,a0,a4
    8000550c:	00b70023          	sb	a1,0(a4)
    80005510:	0057871b          	addiw	a4,a5,5
    80005514:	08c77663          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005518:	00e50733          	add	a4,a0,a4
    8000551c:	00b70023          	sb	a1,0(a4)
    80005520:	0067871b          	addiw	a4,a5,6
    80005524:	06c77e63          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005528:	00e50733          	add	a4,a0,a4
    8000552c:	00b70023          	sb	a1,0(a4)
    80005530:	0077871b          	addiw	a4,a5,7
    80005534:	06c77663          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005538:	00e50733          	add	a4,a0,a4
    8000553c:	00b70023          	sb	a1,0(a4)
    80005540:	0087871b          	addiw	a4,a5,8
    80005544:	04c77e63          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005548:	00e50733          	add	a4,a0,a4
    8000554c:	00b70023          	sb	a1,0(a4)
    80005550:	0097871b          	addiw	a4,a5,9
    80005554:	04c77663          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005558:	00e50733          	add	a4,a0,a4
    8000555c:	00b70023          	sb	a1,0(a4)
    80005560:	00a7871b          	addiw	a4,a5,10
    80005564:	02c77e63          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005568:	00e50733          	add	a4,a0,a4
    8000556c:	00b70023          	sb	a1,0(a4)
    80005570:	00b7871b          	addiw	a4,a5,11
    80005574:	02c77663          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005578:	00e50733          	add	a4,a0,a4
    8000557c:	00b70023          	sb	a1,0(a4)
    80005580:	00c7871b          	addiw	a4,a5,12
    80005584:	00c77e63          	bgeu	a4,a2,800055a0 <__memset+0x1c8>
    80005588:	00e50733          	add	a4,a0,a4
    8000558c:	00b70023          	sb	a1,0(a4)
    80005590:	00d7879b          	addiw	a5,a5,13
    80005594:	00c7f663          	bgeu	a5,a2,800055a0 <__memset+0x1c8>
    80005598:	00f507b3          	add	a5,a0,a5
    8000559c:	00b78023          	sb	a1,0(a5)
    800055a0:	00813403          	ld	s0,8(sp)
    800055a4:	01010113          	addi	sp,sp,16
    800055a8:	00008067          	ret
    800055ac:	00b00693          	li	a3,11
    800055b0:	e55ff06f          	j	80005404 <__memset+0x2c>
    800055b4:	00300e93          	li	t4,3
    800055b8:	ea5ff06f          	j	8000545c <__memset+0x84>
    800055bc:	00100e93          	li	t4,1
    800055c0:	e9dff06f          	j	8000545c <__memset+0x84>
    800055c4:	00000e93          	li	t4,0
    800055c8:	e95ff06f          	j	8000545c <__memset+0x84>
    800055cc:	00000793          	li	a5,0
    800055d0:	ef9ff06f          	j	800054c8 <__memset+0xf0>
    800055d4:	00200e93          	li	t4,2
    800055d8:	e85ff06f          	j	8000545c <__memset+0x84>
    800055dc:	00400e93          	li	t4,4
    800055e0:	e7dff06f          	j	8000545c <__memset+0x84>
    800055e4:	00500e93          	li	t4,5
    800055e8:	e75ff06f          	j	8000545c <__memset+0x84>
    800055ec:	00600e93          	li	t4,6
    800055f0:	e6dff06f          	j	8000545c <__memset+0x84>

00000000800055f4 <__memmove>:
    800055f4:	ff010113          	addi	sp,sp,-16
    800055f8:	00813423          	sd	s0,8(sp)
    800055fc:	01010413          	addi	s0,sp,16
    80005600:	0e060863          	beqz	a2,800056f0 <__memmove+0xfc>
    80005604:	fff6069b          	addiw	a3,a2,-1
    80005608:	0006881b          	sext.w	a6,a3
    8000560c:	0ea5e863          	bltu	a1,a0,800056fc <__memmove+0x108>
    80005610:	00758713          	addi	a4,a1,7
    80005614:	00a5e7b3          	or	a5,a1,a0
    80005618:	40a70733          	sub	a4,a4,a0
    8000561c:	0077f793          	andi	a5,a5,7
    80005620:	00f73713          	sltiu	a4,a4,15
    80005624:	00174713          	xori	a4,a4,1
    80005628:	0017b793          	seqz	a5,a5
    8000562c:	00e7f7b3          	and	a5,a5,a4
    80005630:	10078863          	beqz	a5,80005740 <__memmove+0x14c>
    80005634:	00900793          	li	a5,9
    80005638:	1107f463          	bgeu	a5,a6,80005740 <__memmove+0x14c>
    8000563c:	0036581b          	srliw	a6,a2,0x3
    80005640:	fff8081b          	addiw	a6,a6,-1
    80005644:	02081813          	slli	a6,a6,0x20
    80005648:	01d85893          	srli	a7,a6,0x1d
    8000564c:	00858813          	addi	a6,a1,8
    80005650:	00058793          	mv	a5,a1
    80005654:	00050713          	mv	a4,a0
    80005658:	01088833          	add	a6,a7,a6
    8000565c:	0007b883          	ld	a7,0(a5)
    80005660:	00878793          	addi	a5,a5,8
    80005664:	00870713          	addi	a4,a4,8
    80005668:	ff173c23          	sd	a7,-8(a4)
    8000566c:	ff0798e3          	bne	a5,a6,8000565c <__memmove+0x68>
    80005670:	ff867713          	andi	a4,a2,-8
    80005674:	02071793          	slli	a5,a4,0x20
    80005678:	0207d793          	srli	a5,a5,0x20
    8000567c:	00f585b3          	add	a1,a1,a5
    80005680:	40e686bb          	subw	a3,a3,a4
    80005684:	00f507b3          	add	a5,a0,a5
    80005688:	06e60463          	beq	a2,a4,800056f0 <__memmove+0xfc>
    8000568c:	0005c703          	lbu	a4,0(a1)
    80005690:	00e78023          	sb	a4,0(a5)
    80005694:	04068e63          	beqz	a3,800056f0 <__memmove+0xfc>
    80005698:	0015c603          	lbu	a2,1(a1)
    8000569c:	00100713          	li	a4,1
    800056a0:	00c780a3          	sb	a2,1(a5)
    800056a4:	04e68663          	beq	a3,a4,800056f0 <__memmove+0xfc>
    800056a8:	0025c603          	lbu	a2,2(a1)
    800056ac:	00200713          	li	a4,2
    800056b0:	00c78123          	sb	a2,2(a5)
    800056b4:	02e68e63          	beq	a3,a4,800056f0 <__memmove+0xfc>
    800056b8:	0035c603          	lbu	a2,3(a1)
    800056bc:	00300713          	li	a4,3
    800056c0:	00c781a3          	sb	a2,3(a5)
    800056c4:	02e68663          	beq	a3,a4,800056f0 <__memmove+0xfc>
    800056c8:	0045c603          	lbu	a2,4(a1)
    800056cc:	00400713          	li	a4,4
    800056d0:	00c78223          	sb	a2,4(a5)
    800056d4:	00e68e63          	beq	a3,a4,800056f0 <__memmove+0xfc>
    800056d8:	0055c603          	lbu	a2,5(a1)
    800056dc:	00500713          	li	a4,5
    800056e0:	00c782a3          	sb	a2,5(a5)
    800056e4:	00e68663          	beq	a3,a4,800056f0 <__memmove+0xfc>
    800056e8:	0065c703          	lbu	a4,6(a1)
    800056ec:	00e78323          	sb	a4,6(a5)
    800056f0:	00813403          	ld	s0,8(sp)
    800056f4:	01010113          	addi	sp,sp,16
    800056f8:	00008067          	ret
    800056fc:	02061713          	slli	a4,a2,0x20
    80005700:	02075713          	srli	a4,a4,0x20
    80005704:	00e587b3          	add	a5,a1,a4
    80005708:	f0f574e3          	bgeu	a0,a5,80005610 <__memmove+0x1c>
    8000570c:	02069613          	slli	a2,a3,0x20
    80005710:	02065613          	srli	a2,a2,0x20
    80005714:	fff64613          	not	a2,a2
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00c78633          	add	a2,a5,a2
    80005720:	fff7c683          	lbu	a3,-1(a5)
    80005724:	fff78793          	addi	a5,a5,-1
    80005728:	fff70713          	addi	a4,a4,-1
    8000572c:	00d70023          	sb	a3,0(a4)
    80005730:	fec798e3          	bne	a5,a2,80005720 <__memmove+0x12c>
    80005734:	00813403          	ld	s0,8(sp)
    80005738:	01010113          	addi	sp,sp,16
    8000573c:	00008067          	ret
    80005740:	02069713          	slli	a4,a3,0x20
    80005744:	02075713          	srli	a4,a4,0x20
    80005748:	00170713          	addi	a4,a4,1
    8000574c:	00e50733          	add	a4,a0,a4
    80005750:	00050793          	mv	a5,a0
    80005754:	0005c683          	lbu	a3,0(a1)
    80005758:	00178793          	addi	a5,a5,1
    8000575c:	00158593          	addi	a1,a1,1
    80005760:	fed78fa3          	sb	a3,-1(a5)
    80005764:	fee798e3          	bne	a5,a4,80005754 <__memmove+0x160>
    80005768:	f89ff06f          	j	800056f0 <__memmove+0xfc>

000000008000576c <__mem_free>:
    8000576c:	ff010113          	addi	sp,sp,-16
    80005770:	00813423          	sd	s0,8(sp)
    80005774:	01010413          	addi	s0,sp,16
    80005778:	00002597          	auipc	a1,0x2
    8000577c:	cc058593          	addi	a1,a1,-832 # 80007438 <freep>
    80005780:	0005b783          	ld	a5,0(a1)
    80005784:	ff050693          	addi	a3,a0,-16
    80005788:	0007b703          	ld	a4,0(a5)
    8000578c:	00d7fc63          	bgeu	a5,a3,800057a4 <__mem_free+0x38>
    80005790:	00e6ee63          	bltu	a3,a4,800057ac <__mem_free+0x40>
    80005794:	00e7fc63          	bgeu	a5,a4,800057ac <__mem_free+0x40>
    80005798:	00070793          	mv	a5,a4
    8000579c:	0007b703          	ld	a4,0(a5)
    800057a0:	fed7e8e3          	bltu	a5,a3,80005790 <__mem_free+0x24>
    800057a4:	fee7eae3          	bltu	a5,a4,80005798 <__mem_free+0x2c>
    800057a8:	fee6f8e3          	bgeu	a3,a4,80005798 <__mem_free+0x2c>
    800057ac:	ff852803          	lw	a6,-8(a0)
    800057b0:	02081613          	slli	a2,a6,0x20
    800057b4:	01c65613          	srli	a2,a2,0x1c
    800057b8:	00c68633          	add	a2,a3,a2
    800057bc:	02c70a63          	beq	a4,a2,800057f0 <__mem_free+0x84>
    800057c0:	fee53823          	sd	a4,-16(a0)
    800057c4:	0087a503          	lw	a0,8(a5)
    800057c8:	02051613          	slli	a2,a0,0x20
    800057cc:	01c65613          	srli	a2,a2,0x1c
    800057d0:	00c78633          	add	a2,a5,a2
    800057d4:	04c68263          	beq	a3,a2,80005818 <__mem_free+0xac>
    800057d8:	00813403          	ld	s0,8(sp)
    800057dc:	00d7b023          	sd	a3,0(a5)
    800057e0:	00f5b023          	sd	a5,0(a1)
    800057e4:	00000513          	li	a0,0
    800057e8:	01010113          	addi	sp,sp,16
    800057ec:	00008067          	ret
    800057f0:	00872603          	lw	a2,8(a4)
    800057f4:	00073703          	ld	a4,0(a4)
    800057f8:	0106083b          	addw	a6,a2,a6
    800057fc:	ff052c23          	sw	a6,-8(a0)
    80005800:	fee53823          	sd	a4,-16(a0)
    80005804:	0087a503          	lw	a0,8(a5)
    80005808:	02051613          	slli	a2,a0,0x20
    8000580c:	01c65613          	srli	a2,a2,0x1c
    80005810:	00c78633          	add	a2,a5,a2
    80005814:	fcc692e3          	bne	a3,a2,800057d8 <__mem_free+0x6c>
    80005818:	00813403          	ld	s0,8(sp)
    8000581c:	0105053b          	addw	a0,a0,a6
    80005820:	00a7a423          	sw	a0,8(a5)
    80005824:	00e7b023          	sd	a4,0(a5)
    80005828:	00f5b023          	sd	a5,0(a1)
    8000582c:	00000513          	li	a0,0
    80005830:	01010113          	addi	sp,sp,16
    80005834:	00008067          	ret

0000000080005838 <__mem_alloc>:
    80005838:	fc010113          	addi	sp,sp,-64
    8000583c:	02813823          	sd	s0,48(sp)
    80005840:	02913423          	sd	s1,40(sp)
    80005844:	03213023          	sd	s2,32(sp)
    80005848:	01513423          	sd	s5,8(sp)
    8000584c:	02113c23          	sd	ra,56(sp)
    80005850:	01313c23          	sd	s3,24(sp)
    80005854:	01413823          	sd	s4,16(sp)
    80005858:	01613023          	sd	s6,0(sp)
    8000585c:	04010413          	addi	s0,sp,64
    80005860:	00002a97          	auipc	s5,0x2
    80005864:	bd8a8a93          	addi	s5,s5,-1064 # 80007438 <freep>
    80005868:	00f50913          	addi	s2,a0,15
    8000586c:	000ab683          	ld	a3,0(s5)
    80005870:	00495913          	srli	s2,s2,0x4
    80005874:	0019049b          	addiw	s1,s2,1
    80005878:	00048913          	mv	s2,s1
    8000587c:	0c068c63          	beqz	a3,80005954 <__mem_alloc+0x11c>
    80005880:	0006b503          	ld	a0,0(a3)
    80005884:	00852703          	lw	a4,8(a0)
    80005888:	10977063          	bgeu	a4,s1,80005988 <__mem_alloc+0x150>
    8000588c:	000017b7          	lui	a5,0x1
    80005890:	0009099b          	sext.w	s3,s2
    80005894:	0af4e863          	bltu	s1,a5,80005944 <__mem_alloc+0x10c>
    80005898:	02099a13          	slli	s4,s3,0x20
    8000589c:	01ca5a13          	srli	s4,s4,0x1c
    800058a0:	fff00b13          	li	s6,-1
    800058a4:	0100006f          	j	800058b4 <__mem_alloc+0x7c>
    800058a8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800058ac:	00852703          	lw	a4,8(a0)
    800058b0:	04977463          	bgeu	a4,s1,800058f8 <__mem_alloc+0xc0>
    800058b4:	00050793          	mv	a5,a0
    800058b8:	fea698e3          	bne	a3,a0,800058a8 <__mem_alloc+0x70>
    800058bc:	000a0513          	mv	a0,s4
    800058c0:	00000097          	auipc	ra,0x0
    800058c4:	1f0080e7          	jalr	496(ra) # 80005ab0 <kvmincrease>
    800058c8:	00050793          	mv	a5,a0
    800058cc:	01050513          	addi	a0,a0,16
    800058d0:	07678e63          	beq	a5,s6,8000594c <__mem_alloc+0x114>
    800058d4:	0137a423          	sw	s3,8(a5)
    800058d8:	00000097          	auipc	ra,0x0
    800058dc:	e94080e7          	jalr	-364(ra) # 8000576c <__mem_free>
    800058e0:	000ab783          	ld	a5,0(s5)
    800058e4:	06078463          	beqz	a5,8000594c <__mem_alloc+0x114>
    800058e8:	0007b503          	ld	a0,0(a5)
    800058ec:	00078693          	mv	a3,a5
    800058f0:	00852703          	lw	a4,8(a0)
    800058f4:	fc9760e3          	bltu	a4,s1,800058b4 <__mem_alloc+0x7c>
    800058f8:	08e48263          	beq	s1,a4,8000597c <__mem_alloc+0x144>
    800058fc:	4127073b          	subw	a4,a4,s2
    80005900:	02071693          	slli	a3,a4,0x20
    80005904:	01c6d693          	srli	a3,a3,0x1c
    80005908:	00e52423          	sw	a4,8(a0)
    8000590c:	00d50533          	add	a0,a0,a3
    80005910:	01252423          	sw	s2,8(a0)
    80005914:	00fab023          	sd	a5,0(s5)
    80005918:	01050513          	addi	a0,a0,16
    8000591c:	03813083          	ld	ra,56(sp)
    80005920:	03013403          	ld	s0,48(sp)
    80005924:	02813483          	ld	s1,40(sp)
    80005928:	02013903          	ld	s2,32(sp)
    8000592c:	01813983          	ld	s3,24(sp)
    80005930:	01013a03          	ld	s4,16(sp)
    80005934:	00813a83          	ld	s5,8(sp)
    80005938:	00013b03          	ld	s6,0(sp)
    8000593c:	04010113          	addi	sp,sp,64
    80005940:	00008067          	ret
    80005944:	000019b7          	lui	s3,0x1
    80005948:	f51ff06f          	j	80005898 <__mem_alloc+0x60>
    8000594c:	00000513          	li	a0,0
    80005950:	fcdff06f          	j	8000591c <__mem_alloc+0xe4>
    80005954:	00003797          	auipc	a5,0x3
    80005958:	d9c78793          	addi	a5,a5,-612 # 800086f0 <base>
    8000595c:	00078513          	mv	a0,a5
    80005960:	00fab023          	sd	a5,0(s5)
    80005964:	00f7b023          	sd	a5,0(a5)
    80005968:	00000713          	li	a4,0
    8000596c:	00003797          	auipc	a5,0x3
    80005970:	d807a623          	sw	zero,-628(a5) # 800086f8 <base+0x8>
    80005974:	00050693          	mv	a3,a0
    80005978:	f11ff06f          	j	80005888 <__mem_alloc+0x50>
    8000597c:	00053703          	ld	a4,0(a0)
    80005980:	00e7b023          	sd	a4,0(a5)
    80005984:	f91ff06f          	j	80005914 <__mem_alloc+0xdc>
    80005988:	00068793          	mv	a5,a3
    8000598c:	f6dff06f          	j	800058f8 <__mem_alloc+0xc0>

0000000080005990 <__putc>:
    80005990:	fe010113          	addi	sp,sp,-32
    80005994:	00813823          	sd	s0,16(sp)
    80005998:	00113c23          	sd	ra,24(sp)
    8000599c:	02010413          	addi	s0,sp,32
    800059a0:	00050793          	mv	a5,a0
    800059a4:	fef40593          	addi	a1,s0,-17
    800059a8:	00100613          	li	a2,1
    800059ac:	00000513          	li	a0,0
    800059b0:	fef407a3          	sb	a5,-17(s0)
    800059b4:	fffff097          	auipc	ra,0xfffff
    800059b8:	918080e7          	jalr	-1768(ra) # 800042cc <console_write>
    800059bc:	01813083          	ld	ra,24(sp)
    800059c0:	01013403          	ld	s0,16(sp)
    800059c4:	02010113          	addi	sp,sp,32
    800059c8:	00008067          	ret

00000000800059cc <__getc>:
    800059cc:	fe010113          	addi	sp,sp,-32
    800059d0:	00813823          	sd	s0,16(sp)
    800059d4:	00113c23          	sd	ra,24(sp)
    800059d8:	02010413          	addi	s0,sp,32
    800059dc:	fe840593          	addi	a1,s0,-24
    800059e0:	00100613          	li	a2,1
    800059e4:	00000513          	li	a0,0
    800059e8:	fffff097          	auipc	ra,0xfffff
    800059ec:	8c4080e7          	jalr	-1852(ra) # 800042ac <console_read>
    800059f0:	fe844503          	lbu	a0,-24(s0)
    800059f4:	01813083          	ld	ra,24(sp)
    800059f8:	01013403          	ld	s0,16(sp)
    800059fc:	02010113          	addi	sp,sp,32
    80005a00:	00008067          	ret

0000000080005a04 <console_handler>:
    80005a04:	fe010113          	addi	sp,sp,-32
    80005a08:	00813823          	sd	s0,16(sp)
    80005a0c:	00113c23          	sd	ra,24(sp)
    80005a10:	00913423          	sd	s1,8(sp)
    80005a14:	02010413          	addi	s0,sp,32
    80005a18:	14202773          	csrr	a4,scause
    80005a1c:	100027f3          	csrr	a5,sstatus
    80005a20:	0027f793          	andi	a5,a5,2
    80005a24:	06079e63          	bnez	a5,80005aa0 <console_handler+0x9c>
    80005a28:	00074c63          	bltz	a4,80005a40 <console_handler+0x3c>
    80005a2c:	01813083          	ld	ra,24(sp)
    80005a30:	01013403          	ld	s0,16(sp)
    80005a34:	00813483          	ld	s1,8(sp)
    80005a38:	02010113          	addi	sp,sp,32
    80005a3c:	00008067          	ret
    80005a40:	0ff77713          	andi	a4,a4,255
    80005a44:	00900793          	li	a5,9
    80005a48:	fef712e3          	bne	a4,a5,80005a2c <console_handler+0x28>
    80005a4c:	ffffe097          	auipc	ra,0xffffe
    80005a50:	4b8080e7          	jalr	1208(ra) # 80003f04 <plic_claim>
    80005a54:	00a00793          	li	a5,10
    80005a58:	00050493          	mv	s1,a0
    80005a5c:	02f50c63          	beq	a0,a5,80005a94 <console_handler+0x90>
    80005a60:	fc0506e3          	beqz	a0,80005a2c <console_handler+0x28>
    80005a64:	00050593          	mv	a1,a0
    80005a68:	00000517          	auipc	a0,0x0
    80005a6c:	7b850513          	addi	a0,a0,1976 # 80006220 <kvmincrease+0x770>
    80005a70:	fffff097          	auipc	ra,0xfffff
    80005a74:	8d8080e7          	jalr	-1832(ra) # 80004348 <__printf>
    80005a78:	01013403          	ld	s0,16(sp)
    80005a7c:	01813083          	ld	ra,24(sp)
    80005a80:	00048513          	mv	a0,s1
    80005a84:	00813483          	ld	s1,8(sp)
    80005a88:	02010113          	addi	sp,sp,32
    80005a8c:	ffffe317          	auipc	t1,0xffffe
    80005a90:	4b030067          	jr	1200(t1) # 80003f3c <plic_complete>
    80005a94:	fffff097          	auipc	ra,0xfffff
    80005a98:	1bc080e7          	jalr	444(ra) # 80004c50 <uartintr>
    80005a9c:	fddff06f          	j	80005a78 <console_handler+0x74>
    80005aa0:	00001517          	auipc	a0,0x1
    80005aa4:	88050513          	addi	a0,a0,-1920 # 80006320 <digits+0x78>
    80005aa8:	fffff097          	auipc	ra,0xfffff
    80005aac:	844080e7          	jalr	-1980(ra) # 800042ec <panic>

0000000080005ab0 <kvmincrease>:
    80005ab0:	fe010113          	addi	sp,sp,-32
    80005ab4:	01213023          	sd	s2,0(sp)
    80005ab8:	00001937          	lui	s2,0x1
    80005abc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005ac0:	00813823          	sd	s0,16(sp)
    80005ac4:	00113c23          	sd	ra,24(sp)
    80005ac8:	00913423          	sd	s1,8(sp)
    80005acc:	02010413          	addi	s0,sp,32
    80005ad0:	01250933          	add	s2,a0,s2
    80005ad4:	00c95913          	srli	s2,s2,0xc
    80005ad8:	02090863          	beqz	s2,80005b08 <kvmincrease+0x58>
    80005adc:	00000493          	li	s1,0
    80005ae0:	00148493          	addi	s1,s1,1
    80005ae4:	fffff097          	auipc	ra,0xfffff
    80005ae8:	4bc080e7          	jalr	1212(ra) # 80004fa0 <kalloc>
    80005aec:	fe991ae3          	bne	s2,s1,80005ae0 <kvmincrease+0x30>
    80005af0:	01813083          	ld	ra,24(sp)
    80005af4:	01013403          	ld	s0,16(sp)
    80005af8:	00813483          	ld	s1,8(sp)
    80005afc:	00013903          	ld	s2,0(sp)
    80005b00:	02010113          	addi	sp,sp,32
    80005b04:	00008067          	ret
    80005b08:	01813083          	ld	ra,24(sp)
    80005b0c:	01013403          	ld	s0,16(sp)
    80005b10:	00813483          	ld	s1,8(sp)
    80005b14:	00013903          	ld	s2,0(sp)
    80005b18:	00000513          	li	a0,0
    80005b1c:	02010113          	addi	sp,sp,32
    80005b20:	00008067          	ret
	...
