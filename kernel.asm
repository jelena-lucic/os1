
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	93813103          	ld	sp,-1736(sp) # 80005938 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1cc020ef          	jal	ra,800021e8 <start>

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
    80001084:	381000ef          	jal	ra,80001c04 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001174:	00003097          	auipc	ra,0x3
    80001178:	204080e7          	jalr	516(ra) # 80004378 <__mem_alloc>
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

0000000080001230 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80001230:	fe010113          	addi	sp,sp,-32
    80001234:	00113c23          	sd	ra,24(sp)
    80001238:	00813823          	sd	s0,16(sp)
    8000123c:	00913423          	sd	s1,8(sp)
    80001240:	01213023          	sd	s2,0(sp)
    80001244:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001248:	00000913          	li	s2,0
    8000124c:	0380006f          	j	80001284 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001250:	00000097          	auipc	ra,0x0
    80001254:	fbc080e7          	jalr	-68(ra) # 8000120c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001258:	00148493          	addi	s1,s1,1
    8000125c:	000027b7          	lui	a5,0x2
    80001260:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001264:	0097ee63          	bltu	a5,s1,80001280 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001268:	00000713          	li	a4,0
    8000126c:	000077b7          	lui	a5,0x7
    80001270:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001274:	fce7eee3          	bltu	a5,a4,80001250 <_Z11workerBodyAPv+0x20>
    80001278:	00170713          	addi	a4,a4,1
    8000127c:	ff1ff06f          	j	8000126c <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001280:	00190913          	addi	s2,s2,1
    80001284:	00900793          	li	a5,9
    80001288:	0527e063          	bltu	a5,s2,800012c8 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000128c:	00004517          	auipc	a0,0x4
    80001290:	d7450513          	addi	a0,a0,-652 # 80005000 <kvmincrease+0xa10>
    80001294:	00001097          	auipc	ra,0x1
    80001298:	ca8080e7          	jalr	-856(ra) # 80001f3c <_Z11printStringPKc>
    8000129c:	00000613          	li	a2,0
    800012a0:	00a00593          	li	a1,10
    800012a4:	0009051b          	sext.w	a0,s2
    800012a8:	00001097          	auipc	ra,0x1
    800012ac:	e2c080e7          	jalr	-468(ra) # 800020d4 <_Z8printIntiii>
    800012b0:	00004517          	auipc	a0,0x4
    800012b4:	eb050513          	addi	a0,a0,-336 # 80005160 <kvmincrease+0xb70>
    800012b8:	00001097          	auipc	ra,0x1
    800012bc:	c84080e7          	jalr	-892(ra) # 80001f3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800012c0:	00000493          	li	s1,0
    800012c4:	f99ff06f          	j	8000125c <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    800012c8:	00004517          	auipc	a0,0x4
    800012cc:	d4050513          	addi	a0,a0,-704 # 80005008 <kvmincrease+0xa18>
    800012d0:	00001097          	auipc	ra,0x1
    800012d4:	c6c080e7          	jalr	-916(ra) # 80001f3c <_Z11printStringPKc>
    finishedA = true;
    800012d8:	00100793          	li	a5,1
    800012dc:	00004717          	auipc	a4,0x4
    800012e0:	6cf70223          	sb	a5,1732(a4) # 800059a0 <finishedA>
}
    800012e4:	01813083          	ld	ra,24(sp)
    800012e8:	01013403          	ld	s0,16(sp)
    800012ec:	00813483          	ld	s1,8(sp)
    800012f0:	00013903          	ld	s2,0(sp)
    800012f4:	02010113          	addi	sp,sp,32
    800012f8:	00008067          	ret

00000000800012fc <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800012fc:	fe010113          	addi	sp,sp,-32
    80001300:	00113c23          	sd	ra,24(sp)
    80001304:	00813823          	sd	s0,16(sp)
    80001308:	00913423          	sd	s1,8(sp)
    8000130c:	01213023          	sd	s2,0(sp)
    80001310:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001314:	00000913          	li	s2,0
    80001318:	0380006f          	j	80001350 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	ef0080e7          	jalr	-272(ra) # 8000120c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001324:	00148493          	addi	s1,s1,1
    80001328:	000027b7          	lui	a5,0x2
    8000132c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001330:	0097ee63          	bltu	a5,s1,8000134c <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001334:	00000713          	li	a4,0
    80001338:	000077b7          	lui	a5,0x7
    8000133c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001340:	fce7eee3          	bltu	a5,a4,8000131c <_Z11workerBodyBPv+0x20>
    80001344:	00170713          	addi	a4,a4,1
    80001348:	ff1ff06f          	j	80001338 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000134c:	00190913          	addi	s2,s2,1
    80001350:	00f00793          	li	a5,15
    80001354:	0527e063          	bltu	a5,s2,80001394 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80001358:	00004517          	auipc	a0,0x4
    8000135c:	cc050513          	addi	a0,a0,-832 # 80005018 <kvmincrease+0xa28>
    80001360:	00001097          	auipc	ra,0x1
    80001364:	bdc080e7          	jalr	-1060(ra) # 80001f3c <_Z11printStringPKc>
    80001368:	00000613          	li	a2,0
    8000136c:	00a00593          	li	a1,10
    80001370:	0009051b          	sext.w	a0,s2
    80001374:	00001097          	auipc	ra,0x1
    80001378:	d60080e7          	jalr	-672(ra) # 800020d4 <_Z8printIntiii>
    8000137c:	00004517          	auipc	a0,0x4
    80001380:	de450513          	addi	a0,a0,-540 # 80005160 <kvmincrease+0xb70>
    80001384:	00001097          	auipc	ra,0x1
    80001388:	bb8080e7          	jalr	-1096(ra) # 80001f3c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000138c:	00000493          	li	s1,0
    80001390:	f99ff06f          	j	80001328 <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001394:	00004517          	auipc	a0,0x4
    80001398:	c8c50513          	addi	a0,a0,-884 # 80005020 <kvmincrease+0xa30>
    8000139c:	00001097          	auipc	ra,0x1
    800013a0:	ba0080e7          	jalr	-1120(ra) # 80001f3c <_Z11printStringPKc>
    finishedB = true;
    800013a4:	00100793          	li	a5,1
    800013a8:	00004717          	auipc	a4,0x4
    800013ac:	5ef70ca3          	sb	a5,1529(a4) # 800059a1 <finishedB>
    thread_dispatch();
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	e5c080e7          	jalr	-420(ra) # 8000120c <_Z15thread_dispatchv>
}
    800013b8:	01813083          	ld	ra,24(sp)
    800013bc:	01013403          	ld	s0,16(sp)
    800013c0:	00813483          	ld	s1,8(sp)
    800013c4:	00013903          	ld	s2,0(sp)
    800013c8:	02010113          	addi	sp,sp,32
    800013cc:	00008067          	ret

00000000800013d0 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    800013d0:	fe010113          	addi	sp,sp,-32
    800013d4:	00113c23          	sd	ra,24(sp)
    800013d8:	00813823          	sd	s0,16(sp)
    800013dc:	00913423          	sd	s1,8(sp)
    800013e0:	01213023          	sd	s2,0(sp)
    800013e4:	02010413          	addi	s0,sp,32
    800013e8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800013ec:	00100793          	li	a5,1
    800013f0:	02a7f863          	bgeu	a5,a0,80001420 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800013f4:	00a00793          	li	a5,10
    800013f8:	02f577b3          	remu	a5,a0,a5
    800013fc:	02078e63          	beqz	a5,80001438 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001400:	fff48513          	addi	a0,s1,-1
    80001404:	00000097          	auipc	ra,0x0
    80001408:	fcc080e7          	jalr	-52(ra) # 800013d0 <_Z9fibonaccim>
    8000140c:	00050913          	mv	s2,a0
    80001410:	ffe48513          	addi	a0,s1,-2
    80001414:	00000097          	auipc	ra,0x0
    80001418:	fbc080e7          	jalr	-68(ra) # 800013d0 <_Z9fibonaccim>
    8000141c:	00a90533          	add	a0,s2,a0
}
    80001420:	01813083          	ld	ra,24(sp)
    80001424:	01013403          	ld	s0,16(sp)
    80001428:	00813483          	ld	s1,8(sp)
    8000142c:	00013903          	ld	s2,0(sp)
    80001430:	02010113          	addi	sp,sp,32
    80001434:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	dd4080e7          	jalr	-556(ra) # 8000120c <_Z15thread_dispatchv>
    80001440:	fc1ff06f          	j	80001400 <_Z9fibonaccim+0x30>

0000000080001444 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80001444:	fe010113          	addi	sp,sp,-32
    80001448:	00113c23          	sd	ra,24(sp)
    8000144c:	00813823          	sd	s0,16(sp)
    80001450:	00913423          	sd	s1,8(sp)
    80001454:	01213023          	sd	s2,0(sp)
    80001458:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000145c:	00000493          	li	s1,0
    80001460:	0400006f          	j	800014a0 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001464:	00004517          	auipc	a0,0x4
    80001468:	bcc50513          	addi	a0,a0,-1076 # 80005030 <kvmincrease+0xa40>
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	ad0080e7          	jalr	-1328(ra) # 80001f3c <_Z11printStringPKc>
    80001474:	00000613          	li	a2,0
    80001478:	00a00593          	li	a1,10
    8000147c:	00048513          	mv	a0,s1
    80001480:	00001097          	auipc	ra,0x1
    80001484:	c54080e7          	jalr	-940(ra) # 800020d4 <_Z8printIntiii>
    80001488:	00004517          	auipc	a0,0x4
    8000148c:	cd850513          	addi	a0,a0,-808 # 80005160 <kvmincrease+0xb70>
    80001490:	00001097          	auipc	ra,0x1
    80001494:	aac080e7          	jalr	-1364(ra) # 80001f3c <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001498:	0014849b          	addiw	s1,s1,1
    8000149c:	0ff4f493          	andi	s1,s1,255
    800014a0:	00200793          	li	a5,2
    800014a4:	fc97f0e3          	bgeu	a5,s1,80001464 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    800014a8:	00004517          	auipc	a0,0x4
    800014ac:	b9050513          	addi	a0,a0,-1136 # 80005038 <kvmincrease+0xa48>
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	a8c080e7          	jalr	-1396(ra) # 80001f3c <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800014b8:	00700313          	li	t1,7
    thread_dispatch();
    800014bc:	00000097          	auipc	ra,0x0
    800014c0:	d50080e7          	jalr	-688(ra) # 8000120c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800014c4:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800014c8:	00004517          	auipc	a0,0x4
    800014cc:	b8050513          	addi	a0,a0,-1152 # 80005048 <kvmincrease+0xa58>
    800014d0:	00001097          	auipc	ra,0x1
    800014d4:	a6c080e7          	jalr	-1428(ra) # 80001f3c <_Z11printStringPKc>
    800014d8:	00000613          	li	a2,0
    800014dc:	00a00593          	li	a1,10
    800014e0:	0009051b          	sext.w	a0,s2
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	bf0080e7          	jalr	-1040(ra) # 800020d4 <_Z8printIntiii>
    800014ec:	00004517          	auipc	a0,0x4
    800014f0:	c7450513          	addi	a0,a0,-908 # 80005160 <kvmincrease+0xb70>
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	a48080e7          	jalr	-1464(ra) # 80001f3c <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800014fc:	00c00513          	li	a0,12
    80001500:	00000097          	auipc	ra,0x0
    80001504:	ed0080e7          	jalr	-304(ra) # 800013d0 <_Z9fibonaccim>
    80001508:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000150c:	00004517          	auipc	a0,0x4
    80001510:	b4450513          	addi	a0,a0,-1212 # 80005050 <kvmincrease+0xa60>
    80001514:	00001097          	auipc	ra,0x1
    80001518:	a28080e7          	jalr	-1496(ra) # 80001f3c <_Z11printStringPKc>
    8000151c:	00000613          	li	a2,0
    80001520:	00a00593          	li	a1,10
    80001524:	0009051b          	sext.w	a0,s2
    80001528:	00001097          	auipc	ra,0x1
    8000152c:	bac080e7          	jalr	-1108(ra) # 800020d4 <_Z8printIntiii>
    80001530:	00004517          	auipc	a0,0x4
    80001534:	c3050513          	addi	a0,a0,-976 # 80005160 <kvmincrease+0xb70>
    80001538:	00001097          	auipc	ra,0x1
    8000153c:	a04080e7          	jalr	-1532(ra) # 80001f3c <_Z11printStringPKc>
    80001540:	0400006f          	j	80001580 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001544:	00004517          	auipc	a0,0x4
    80001548:	aec50513          	addi	a0,a0,-1300 # 80005030 <kvmincrease+0xa40>
    8000154c:	00001097          	auipc	ra,0x1
    80001550:	9f0080e7          	jalr	-1552(ra) # 80001f3c <_Z11printStringPKc>
    80001554:	00000613          	li	a2,0
    80001558:	00a00593          	li	a1,10
    8000155c:	00048513          	mv	a0,s1
    80001560:	00001097          	auipc	ra,0x1
    80001564:	b74080e7          	jalr	-1164(ra) # 800020d4 <_Z8printIntiii>
    80001568:	00004517          	auipc	a0,0x4
    8000156c:	bf850513          	addi	a0,a0,-1032 # 80005160 <kvmincrease+0xb70>
    80001570:	00001097          	auipc	ra,0x1
    80001574:	9cc080e7          	jalr	-1588(ra) # 80001f3c <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001578:	0014849b          	addiw	s1,s1,1
    8000157c:	0ff4f493          	andi	s1,s1,255
    80001580:	00500793          	li	a5,5
    80001584:	fc97f0e3          	bgeu	a5,s1,80001544 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    80001588:	00004517          	auipc	a0,0x4
    8000158c:	ad850513          	addi	a0,a0,-1320 # 80005060 <kvmincrease+0xa70>
    80001590:	00001097          	auipc	ra,0x1
    80001594:	9ac080e7          	jalr	-1620(ra) # 80001f3c <_Z11printStringPKc>
    finishedC = true;
    80001598:	00100793          	li	a5,1
    8000159c:	00004717          	auipc	a4,0x4
    800015a0:	40f70323          	sb	a5,1030(a4) # 800059a2 <finishedC>
    thread_dispatch();
    800015a4:	00000097          	auipc	ra,0x0
    800015a8:	c68080e7          	jalr	-920(ra) # 8000120c <_Z15thread_dispatchv>
}
    800015ac:	01813083          	ld	ra,24(sp)
    800015b0:	01013403          	ld	s0,16(sp)
    800015b4:	00813483          	ld	s1,8(sp)
    800015b8:	00013903          	ld	s2,0(sp)
    800015bc:	02010113          	addi	sp,sp,32
    800015c0:	00008067          	ret

00000000800015c4 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    800015c4:	fe010113          	addi	sp,sp,-32
    800015c8:	00113c23          	sd	ra,24(sp)
    800015cc:	00813823          	sd	s0,16(sp)
    800015d0:	00913423          	sd	s1,8(sp)
    800015d4:	01213023          	sd	s2,0(sp)
    800015d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800015dc:	00a00493          	li	s1,10
    800015e0:	0400006f          	j	80001620 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800015e4:	00004517          	auipc	a0,0x4
    800015e8:	a8c50513          	addi	a0,a0,-1396 # 80005070 <kvmincrease+0xa80>
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	950080e7          	jalr	-1712(ra) # 80001f3c <_Z11printStringPKc>
    800015f4:	00000613          	li	a2,0
    800015f8:	00a00593          	li	a1,10
    800015fc:	00048513          	mv	a0,s1
    80001600:	00001097          	auipc	ra,0x1
    80001604:	ad4080e7          	jalr	-1324(ra) # 800020d4 <_Z8printIntiii>
    80001608:	00004517          	auipc	a0,0x4
    8000160c:	b5850513          	addi	a0,a0,-1192 # 80005160 <kvmincrease+0xb70>
    80001610:	00001097          	auipc	ra,0x1
    80001614:	92c080e7          	jalr	-1748(ra) # 80001f3c <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001618:	0014849b          	addiw	s1,s1,1
    8000161c:	0ff4f493          	andi	s1,s1,255
    80001620:	00c00793          	li	a5,12
    80001624:	fc97f0e3          	bgeu	a5,s1,800015e4 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80001628:	00004517          	auipc	a0,0x4
    8000162c:	a5050513          	addi	a0,a0,-1456 # 80005078 <kvmincrease+0xa88>
    80001630:	00001097          	auipc	ra,0x1
    80001634:	90c080e7          	jalr	-1780(ra) # 80001f3c <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001638:	00500313          	li	t1,5
    thread_dispatch();
    8000163c:	00000097          	auipc	ra,0x0
    80001640:	bd0080e7          	jalr	-1072(ra) # 8000120c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001644:	01000513          	li	a0,16
    80001648:	00000097          	auipc	ra,0x0
    8000164c:	d88080e7          	jalr	-632(ra) # 800013d0 <_Z9fibonaccim>
    80001650:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001654:	00004517          	auipc	a0,0x4
    80001658:	a3450513          	addi	a0,a0,-1484 # 80005088 <kvmincrease+0xa98>
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	8e0080e7          	jalr	-1824(ra) # 80001f3c <_Z11printStringPKc>
    80001664:	00000613          	li	a2,0
    80001668:	00a00593          	li	a1,10
    8000166c:	0009051b          	sext.w	a0,s2
    80001670:	00001097          	auipc	ra,0x1
    80001674:	a64080e7          	jalr	-1436(ra) # 800020d4 <_Z8printIntiii>
    80001678:	00004517          	auipc	a0,0x4
    8000167c:	ae850513          	addi	a0,a0,-1304 # 80005160 <kvmincrease+0xb70>
    80001680:	00001097          	auipc	ra,0x1
    80001684:	8bc080e7          	jalr	-1860(ra) # 80001f3c <_Z11printStringPKc>
    80001688:	0400006f          	j	800016c8 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	9e450513          	addi	a0,a0,-1564 # 80005070 <kvmincrease+0xa80>
    80001694:	00001097          	auipc	ra,0x1
    80001698:	8a8080e7          	jalr	-1880(ra) # 80001f3c <_Z11printStringPKc>
    8000169c:	00000613          	li	a2,0
    800016a0:	00a00593          	li	a1,10
    800016a4:	00048513          	mv	a0,s1
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	a2c080e7          	jalr	-1492(ra) # 800020d4 <_Z8printIntiii>
    800016b0:	00004517          	auipc	a0,0x4
    800016b4:	ab050513          	addi	a0,a0,-1360 # 80005160 <kvmincrease+0xb70>
    800016b8:	00001097          	auipc	ra,0x1
    800016bc:	884080e7          	jalr	-1916(ra) # 80001f3c <_Z11printStringPKc>
    for (; i < 16; i++) {
    800016c0:	0014849b          	addiw	s1,s1,1
    800016c4:	0ff4f493          	andi	s1,s1,255
    800016c8:	00f00793          	li	a5,15
    800016cc:	fc97f0e3          	bgeu	a5,s1,8000168c <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800016d0:	00004517          	auipc	a0,0x4
    800016d4:	9c850513          	addi	a0,a0,-1592 # 80005098 <kvmincrease+0xaa8>
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	864080e7          	jalr	-1948(ra) # 80001f3c <_Z11printStringPKc>
    finishedD = true;
    800016e0:	00100793          	li	a5,1
    800016e4:	00004717          	auipc	a4,0x4
    800016e8:	2af70fa3          	sb	a5,703(a4) # 800059a3 <finishedD>
    thread_dispatch();
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	b20080e7          	jalr	-1248(ra) # 8000120c <_Z15thread_dispatchv>
}
    800016f4:	01813083          	ld	ra,24(sp)
    800016f8:	01013403          	ld	s0,16(sp)
    800016fc:	00813483          	ld	s1,8(sp)
    80001700:	00013903          	ld	s2,0(sp)
    80001704:	02010113          	addi	sp,sp,32
    80001708:	00008067          	ret

000000008000170c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    8000170c:	fd010113          	addi	sp,sp,-48
    80001710:	02113423          	sd	ra,40(sp)
    80001714:	02813023          	sd	s0,32(sp)
    80001718:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000171c:	00000613          	li	a2,0
    80001720:	00000597          	auipc	a1,0x0
    80001724:	b1058593          	addi	a1,a1,-1264 # 80001230 <_Z11workerBodyAPv>
    80001728:	fd040513          	addi	a0,s0,-48
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	a18080e7          	jalr	-1512(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001734:	00004517          	auipc	a0,0x4
    80001738:	97450513          	addi	a0,a0,-1676 # 800050a8 <kvmincrease+0xab8>
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	800080e7          	jalr	-2048(ra) # 80001f3c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80001744:	00000613          	li	a2,0
    80001748:	00000597          	auipc	a1,0x0
    8000174c:	bb458593          	addi	a1,a1,-1100 # 800012fc <_Z11workerBodyBPv>
    80001750:	fd840513          	addi	a0,s0,-40
    80001754:	00000097          	auipc	ra,0x0
    80001758:	9f0080e7          	jalr	-1552(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000175c:	00004517          	auipc	a0,0x4
    80001760:	96450513          	addi	a0,a0,-1692 # 800050c0 <kvmincrease+0xad0>
    80001764:	00000097          	auipc	ra,0x0
    80001768:	7d8080e7          	jalr	2008(ra) # 80001f3c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000176c:	00000613          	li	a2,0
    80001770:	00000597          	auipc	a1,0x0
    80001774:	cd458593          	addi	a1,a1,-812 # 80001444 <_Z11workerBodyCPv>
    80001778:	fe040513          	addi	a0,s0,-32
    8000177c:	00000097          	auipc	ra,0x0
    80001780:	9c8080e7          	jalr	-1592(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001784:	00004517          	auipc	a0,0x4
    80001788:	95450513          	addi	a0,a0,-1708 # 800050d8 <kvmincrease+0xae8>
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	7b0080e7          	jalr	1968(ra) # 80001f3c <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80001794:	00000613          	li	a2,0
    80001798:	00000597          	auipc	a1,0x0
    8000179c:	e2c58593          	addi	a1,a1,-468 # 800015c4 <_Z11workerBodyDPv>
    800017a0:	fe840513          	addi	a0,s0,-24
    800017a4:	00000097          	auipc	ra,0x0
    800017a8:	9a0080e7          	jalr	-1632(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800017ac:	00004517          	auipc	a0,0x4
    800017b0:	94450513          	addi	a0,a0,-1724 # 800050f0 <kvmincrease+0xb00>
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	788080e7          	jalr	1928(ra) # 80001f3c <_Z11printStringPKc>
    800017bc:	00c0006f          	j	800017c8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800017c0:	00000097          	auipc	ra,0x0
    800017c4:	a4c080e7          	jalr	-1460(ra) # 8000120c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800017c8:	00004797          	auipc	a5,0x4
    800017cc:	1d87c783          	lbu	a5,472(a5) # 800059a0 <finishedA>
    800017d0:	fe0788e3          	beqz	a5,800017c0 <_Z18Threads_C_API_testv+0xb4>
    800017d4:	00004797          	auipc	a5,0x4
    800017d8:	1cd7c783          	lbu	a5,461(a5) # 800059a1 <finishedB>
    800017dc:	fe0782e3          	beqz	a5,800017c0 <_Z18Threads_C_API_testv+0xb4>
    800017e0:	00004797          	auipc	a5,0x4
    800017e4:	1c27c783          	lbu	a5,450(a5) # 800059a2 <finishedC>
    800017e8:	fc078ce3          	beqz	a5,800017c0 <_Z18Threads_C_API_testv+0xb4>
    800017ec:	00004797          	auipc	a5,0x4
    800017f0:	1b77c783          	lbu	a5,439(a5) # 800059a3 <finishedD>
    800017f4:	fc0786e3          	beqz	a5,800017c0 <_Z18Threads_C_API_testv+0xb4>
    }
    printString("gotov test\n");
    800017f8:	00004517          	auipc	a0,0x4
    800017fc:	91050513          	addi	a0,a0,-1776 # 80005108 <kvmincrease+0xb18>
    80001800:	00000097          	auipc	ra,0x0
    80001804:	73c080e7          	jalr	1852(ra) # 80001f3c <_Z11printStringPKc>
}
    80001808:	02813083          	ld	ra,40(sp)
    8000180c:	02013403          	ld	s0,32(sp)
    80001810:	03010113          	addi	sp,sp,48
    80001814:	00008067          	ret

0000000080001818 <_Z8userMainPv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain(void* arg) {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    printString("usao u userMain\n");
    80001828:	00004517          	auipc	a0,0x4
    8000182c:	8f050513          	addi	a0,a0,-1808 # 80005118 <kvmincrease+0xb28>
    80001830:	00000097          	auipc	ra,0x0
    80001834:	70c080e7          	jalr	1804(ra) # 80001f3c <_Z11printStringPKc>
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80001838:	00000097          	auipc	ra,0x0
    8000183c:	ed4080e7          	jalr	-300(ra) # 8000170c <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    printString("zavrsio userMain\n");
    80001840:	00004517          	auipc	a0,0x4
    80001844:	8f050513          	addi	a0,a0,-1808 # 80005130 <kvmincrease+0xb40>
    80001848:	00000097          	auipc	ra,0x0
    8000184c:	6f4080e7          	jalr	1780(ra) # 80001f3c <_Z11printStringPKc>
    80001850:	00813083          	ld	ra,8(sp)
    80001854:	00013403          	ld	s0,0(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <main>:
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

extern void userMain(void* arg);

int main() {
    80001860:	fd010113          	addi	sp,sp,-48
    80001864:	02113423          	sd	ra,40(sp)
    80001868:	02813023          	sd	s0,32(sp)
    8000186c:	00913c23          	sd	s1,24(sp)
    80001870:	03010413          	addi	s0,sp,48

    printString("MAIN START\n");
    80001874:	00004517          	auipc	a0,0x4
    80001878:	8d450513          	addi	a0,a0,-1836 # 80005148 <kvmincrease+0xb58>
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	6c0080e7          	jalr	1728(ra) # 80001f3c <_Z11printStringPKc>
    TCB::running = TCB::createThread(nullptr, nullptr, nullptr);
    80001884:	00000613          	li	a2,0
    80001888:	00000593          	li	a1,0
    8000188c:	00000513          	li	a0,0
    80001890:	00000097          	auipc	ra,0x0
    80001894:	0e8080e7          	jalr	232(ra) # 80001978 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80001898:	00004797          	auipc	a5,0x4
    8000189c:	0b07b783          	ld	a5,176(a5) # 80005948 <_GLOBAL_OFFSET_TABLE_+0x28>
    800018a0:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800018a4:	00004797          	auipc	a5,0x4
    800018a8:	0847b783          	ld	a5,132(a5) # 80005928 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800018ac:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800018b0:	00200793          	li	a5,2
    800018b4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t handle;
    thread_create(&handle, userMain, nullptr);
    800018b8:	00000613          	li	a2,0
    800018bc:	00004597          	auipc	a1,0x4
    800018c0:	0845b583          	ld	a1,132(a1) # 80005940 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018c4:	fd840513          	addi	a0,s0,-40
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	87c080e7          	jalr	-1924(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>

    while(!handle->isFinished()) {
    800018d0:	fd843483          	ld	s1,-40(s0)
public:
    enum State {CREATED, READY, RUNNING, FINISHED};

    ~TCB() { delete[] stack; }

    bool isFinished() const { return this->state == FINISHED; }
    800018d4:	0384a703          	lw	a4,56(s1)
    800018d8:	00300793          	li	a5,3
    800018dc:	00f70863          	beq	a4,a5,800018ec <main+0x8c>
        thread_dispatch();
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	92c080e7          	jalr	-1748(ra) # 8000120c <_Z15thread_dispatchv>
    800018e8:	fe9ff06f          	j	800018d0 <main+0x70>
    } // join user main

    delete handle;
    800018ec:	02048063          	beqz	s1,8000190c <main+0xac>
    ~TCB() { delete[] stack; }
    800018f0:	0184b503          	ld	a0,24(s1)
    800018f4:	00050663          	beqz	a0,80001900 <main+0xa0>
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	2c4080e7          	jalr	708(ra) # 80001bbc <_ZdaPv>
    80001900:	00048513          	mv	a0,s1
    80001904:	00000097          	auipc	ra,0x0
    80001908:	290080e7          	jalr	656(ra) # 80001b94 <_ZdlPv>

    printString("Finished\n");
    8000190c:	00004517          	auipc	a0,0x4
    80001910:	84c50513          	addi	a0,a0,-1972 # 80005158 <kvmincrease+0xb68>
    80001914:	00000097          	auipc	ra,0x0
    80001918:	628080e7          	jalr	1576(ra) # 80001f3c <_Z11printStringPKc>

    return 0;
}
    8000191c:	00000513          	li	a0,0
    80001920:	02813083          	ld	ra,40(sp)
    80001924:	02013403          	ld	s0,32(sp)
    80001928:	01813483          	ld	s1,24(sp)
    8000192c:	03010113          	addi	sp,sp,48
    80001930:	00008067          	ret

0000000080001934 <_ZN3TCB13threadWrapperEv>:
    running->state = RUNNING;

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00113423          	sd	ra,8(sp)
    8000193c:	00813023          	sd	s0,0(sp)
    80001940:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001944:	00000097          	auipc	ra,0x0
    80001948:	2a0080e7          	jalr	672(ra) # 80001be4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    8000194c:	00004797          	auipc	a5,0x4
    80001950:	05c7b783          	ld	a5,92(a5) # 800059a8 <_ZN3TCB7runningE>
    80001954:	0087b703          	ld	a4,8(a5)
    80001958:	0107b503          	ld	a0,16(a5)
    8000195c:	000700e7          	jalr	a4
    thread_exit();
    80001960:	00000097          	auipc	ra,0x0
    80001964:	878080e7          	jalr	-1928(ra) # 800011d8 <_Z11thread_exitv>
}
    80001968:	00813083          	ld	ra,8(sp)
    8000196c:	00013403          	ld	s0,0(sp)
    80001970:	01010113          	addi	sp,sp,16
    80001974:	00008067          	ret

0000000080001978 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
TCB *TCB::createThread(Body body, Arg arg, uint64* stack) {
    80001978:	fd010113          	addi	sp,sp,-48
    8000197c:	02113423          	sd	ra,40(sp)
    80001980:	02813023          	sd	s0,32(sp)
    80001984:	00913c23          	sd	s1,24(sp)
    80001988:	01213823          	sd	s2,16(sp)
    8000198c:	01313423          	sd	s3,8(sp)
    80001990:	01413023          	sd	s4,0(sp)
    80001994:	03010413          	addi	s0,sp,48
    80001998:	00050993          	mv	s3,a0
    8000199c:	00058a13          	mv	s4,a1
    800019a0:	00060913          	mv	s2,a2
    return new TCB(body, arg, stack, DEFAULT_TIME_SLICE);
    800019a4:	04000513          	li	a0,64
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	19c080e7          	jalr	412(ra) # 80001b44 <_Znwm>
    800019b0:	00050493          	mv	s1,a0
            arg(arg),
            stack(body != nullptr ? stack : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice)
    800019b4:	01353423          	sd	s3,8(a0)
    800019b8:	01453823          	sd	s4,16(a0)
            stack(body != nullptr ? stack : nullptr),
    800019bc:	04098263          	beqz	s3,80001a00 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x88>
    800019c0:	00090793          	mv	a5,s2
            timeSlice(timeSlice)
    800019c4:	00f4bc23          	sd	a5,24(s1)
    800019c8:	00000797          	auipc	a5,0x0
    800019cc:	f6c78793          	addi	a5,a5,-148 # 80001934 <_ZN3TCB13threadWrapperEv>
    800019d0:	02f4b023          	sd	a5,32(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800019d4:	02090a63          	beqz	s2,80001a08 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x90>
    800019d8:	00008637          	lui	a2,0x8
    800019dc:	00c90933          	add	s2,s2,a2
            timeSlice(timeSlice)
    800019e0:	0324b423          	sd	s2,40(s1)
    800019e4:	00200793          	li	a5,2
    800019e8:	02f4b823          	sd	a5,48(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    800019ec:	04098063          	beqz	s3,80001a2c <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb4>
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	4a8080e7          	jalr	1192(ra) # 80001e9c <_ZN9Scheduler3putEP3TCB>
    800019fc:	0300006f          	j	80001a2c <_ZN3TCB12createThreadEPFvPvES0_Pm+0xb4>
            stack(body != nullptr ? stack : nullptr),
    80001a00:	00000793          	li	a5,0
    80001a04:	fc1ff06f          	j	800019c4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x4c>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001a08:	00000913          	li	s2,0
    80001a0c:	fd5ff06f          	j	800019e0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x68>
    80001a10:	00050913          	mv	s2,a0
    80001a14:	00048513          	mv	a0,s1
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	17c080e7          	jalr	380(ra) # 80001b94 <_ZdlPv>
    80001a20:	00090513          	mv	a0,s2
    80001a24:	00005097          	auipc	ra,0x5
    80001a28:	084080e7          	jalr	132(ra) # 80006aa8 <_Unwind_Resume>
        this->id = this->ID++;
    80001a2c:	00004717          	auipc	a4,0x4
    80001a30:	f7c70713          	addi	a4,a4,-132 # 800059a8 <_ZN3TCB7runningE>
    80001a34:	00873783          	ld	a5,8(a4)
    80001a38:	00178693          	addi	a3,a5,1
    80001a3c:	00d73423          	sd	a3,8(a4)
    80001a40:	00f4b023          	sd	a5,0(s1)
        this->state = READY;
    80001a44:	00100793          	li	a5,1
    80001a48:	02f4ac23          	sw	a5,56(s1)
}
    80001a4c:	00048513          	mv	a0,s1
    80001a50:	02813083          	ld	ra,40(sp)
    80001a54:	02013403          	ld	s0,32(sp)
    80001a58:	01813483          	ld	s1,24(sp)
    80001a5c:	01013903          	ld	s2,16(sp)
    80001a60:	00813983          	ld	s3,8(sp)
    80001a64:	00013a03          	ld	s4,0(sp)
    80001a68:	03010113          	addi	sp,sp,48
    80001a6c:	00008067          	ret

0000000080001a70 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001a70:	fe010113          	addi	sp,sp,-32
    80001a74:	00113c23          	sd	ra,24(sp)
    80001a78:	00813823          	sd	s0,16(sp)
    80001a7c:	00913423          	sd	s1,8(sp)
    80001a80:	02010413          	addi	s0,sp,32
    TCB::timeSliceCounter = 0;
    80001a84:	00004797          	auipc	a5,0x4
    80001a88:	f2478793          	addi	a5,a5,-220 # 800059a8 <_ZN3TCB7runningE>
    80001a8c:	0007b823          	sd	zero,16(a5)
    TCB *old = running;
    80001a90:	0007b483          	ld	s1,0(a5)
    bool isFinished() const { return this->state == FINISHED; }
    80001a94:	0384a703          	lw	a4,56(s1)
    if (!old->isFinished()) {
    80001a98:	00300793          	li	a5,3
    80001a9c:	04f71063          	bne	a4,a5,80001adc <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	394080e7          	jalr	916(ra) # 80001e34 <_ZN9Scheduler3getEv>
    80001aa8:	00004797          	auipc	a5,0x4
    80001aac:	f0a7b023          	sd	a0,-256(a5) # 800059a8 <_ZN3TCB7runningE>
    running->state = RUNNING;
    80001ab0:	00200793          	li	a5,2
    80001ab4:	02f52c23          	sw	a5,56(a0)
    TCB::contextSwitch(&old->context, &running->context);
    80001ab8:	02050593          	addi	a1,a0,32
    80001abc:	02048513          	addi	a0,s1,32
    80001ac0:	fffff097          	auipc	ra,0xfffff
    80001ac4:	650080e7          	jalr	1616(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001ac8:	01813083          	ld	ra,24(sp)
    80001acc:	01013403          	ld	s0,16(sp)
    80001ad0:	00813483          	ld	s1,8(sp)
    80001ad4:	02010113          	addi	sp,sp,32
    80001ad8:	00008067          	ret
        old->state = READY;
    80001adc:	00100793          	li	a5,1
    80001ae0:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    80001ae4:	00048513          	mv	a0,s1
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	3b4080e7          	jalr	948(ra) # 80001e9c <_ZN9Scheduler3putEP3TCB>
    80001af0:	fb1ff06f          	j	80001aa0 <_ZN3TCB8dispatchEv+0x30>

0000000080001af4 <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(running->state == RUNNING){
    80001af4:	00004797          	auipc	a5,0x4
    80001af8:	eb47b783          	ld	a5,-332(a5) # 800059a8 <_ZN3TCB7runningE>
    80001afc:	0387a683          	lw	a3,56(a5)
    80001b00:	00200713          	li	a4,2
    80001b04:	02e69c63          	bne	a3,a4,80001b3c <_ZN3TCB4exitEv+0x48>
int TCB::exit() {
    80001b08:	ff010113          	addi	sp,sp,-16
    80001b0c:	00113423          	sd	ra,8(sp)
    80001b10:	00813023          	sd	s0,0(sp)
    80001b14:	01010413          	addi	s0,sp,16
        running->state = FINISHED;
    80001b18:	00300713          	li	a4,3
    80001b1c:	02e7ac23          	sw	a4,56(a5)
        dispatch();
    80001b20:	00000097          	auipc	ra,0x0
    80001b24:	f50080e7          	jalr	-176(ra) # 80001a70 <_ZN3TCB8dispatchEv>
        return 0;
    80001b28:	00000513          	li	a0,0
    }
    return -1;
}
    80001b2c:	00813083          	ld	ra,8(sp)
    80001b30:	00013403          	ld	s0,0(sp)
    80001b34:	01010113          	addi	sp,sp,16
    80001b38:	00008067          	ret
    return -1;
    80001b3c:	fff00513          	li	a0,-1
}
    80001b40:	00008067          	ret

0000000080001b44 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001b44:	ff010113          	addi	sp,sp,-16
    80001b48:	00113423          	sd	ra,8(sp)
    80001b4c:	00813023          	sd	s0,0(sp)
    80001b50:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001b54:	00003097          	auipc	ra,0x3
    80001b58:	824080e7          	jalr	-2012(ra) # 80004378 <__mem_alloc>
}
    80001b5c:	00813083          	ld	ra,8(sp)
    80001b60:	00013403          	ld	s0,0(sp)
    80001b64:	01010113          	addi	sp,sp,16
    80001b68:	00008067          	ret

0000000080001b6c <_Znam>:

void *operator new[](size_t n)
{
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001b7c:	00002097          	auipc	ra,0x2
    80001b80:	7fc080e7          	jalr	2044(ra) # 80004378 <__mem_alloc>
}
    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001ba4:	00002097          	auipc	ra,0x2
    80001ba8:	708080e7          	jalr	1800(ra) # 800042ac <__mem_free>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001bcc:	00002097          	auipc	ra,0x2
    80001bd0:	6e0080e7          	jalr	1760(ra) # 800042ac <__mem_free>
    80001bd4:	00813083          	ld	ra,8(sp)
    80001bd8:	00013403          	ld	s0,0(sp)
    80001bdc:	01010113          	addi	sp,sp,16
    80001be0:	00008067          	ret

0000000080001be4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    80001be4:	ff010113          	addi	sp,sp,-16
    80001be8:	00813423          	sd	s0,8(sp)
    80001bec:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001bf0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001bf4:	10200073          	sret
}
    80001bf8:	00813403          	ld	s0,8(sp)
    80001bfc:	01010113          	addi	sp,sp,16
    80001c00:	00008067          	ret

0000000080001c04 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    80001c04:	f7010113          	addi	sp,sp,-144
    80001c08:	08113423          	sd	ra,136(sp)
    80001c0c:	08813023          	sd	s0,128(sp)
    80001c10:	06913c23          	sd	s1,120(sp)
    80001c14:	07213823          	sd	s2,112(sp)
    80001c18:	07313423          	sd	s3,104(sp)
    80001c1c:	09010413          	addi	s0,sp,144
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    80001c20:	05843783          	ld	a5,88(s0)
    80001c24:	faf43023          	sd	a5,-96(s0)
    return a1;
    80001c28:	fa043603          	ld	a2,-96(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80001c2c:	06043783          	ld	a5,96(s0)
    80001c30:	f8f43c23          	sd	a5,-104(s0)
    return a2;
    80001c34:	f9843583          	ld	a1,-104(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80001c38:	06843783          	ld	a5,104(s0)
    80001c3c:	f8f43823          	sd	a5,-112(s0)
    return a3;
    80001c40:	f9043503          	ld	a0,-112(s0)
}

inline uint64 Riscv::r_a4() {
    uint64 volatile a4;
    __asm__ volatile ("ld %0, 14*8(fp)" : "=r"(a4));
    80001c44:	07043783          	ld	a5,112(s0)
    80001c48:	f8f43423          	sd	a5,-120(s0)
    return a4;
    80001c4c:	f8843903          	ld	s2,-120(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    80001c50:	05043783          	ld	a5,80(s0)
    80001c54:	f8f43023          	sd	a5,-128(s0)
    return a0;
    80001c58:	f8043803          	ld	a6,-128(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c5c:	142027f3          	csrr	a5,scause
    80001c60:	f6f43c23          	sd	a5,-136(s0)
    return scause;
    80001c64:	f7843703          	ld	a4,-136(s0)
    uint64 a4 = r_a4();
    long a0 = r_a0();

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001c68:	ff870693          	addi	a3,a4,-8
    80001c6c:	00100793          	li	a5,1
    80001c70:	06d7fe63          	bgeu	a5,a3,80001cec <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
        }

        w_sstatus(sstatus); // restauracija statusnog registra
        w_sepc(sepc); // restauracija pc registra

    } else if (scause == 0x8000000000000001UL) {
    80001c74:	fff00793          	li	a5,-1
    80001c78:	03f79793          	slli	a5,a5,0x3f
    80001c7c:	00178793          	addi	a5,a5,1
    80001c80:	10f70463          	beq	a4,a5,80001d88 <_ZN5Riscv20handleSupervisorTrapEv+0x184>

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
    80001c84:	fff00793          	li	a5,-1
    80001c88:	03f79793          	slli	a5,a5,0x3f
    80001c8c:	00978793          	addi	a5,a5,9
    80001c90:	14f70c63          	beq	a4,a5,80001de8 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    } else {
        // unexpected trap cause
        printInt(scause);
    80001c94:	00000613          	li	a2,0
    80001c98:	00a00593          	li	a1,10
    80001c9c:	0007051b          	sext.w	a0,a4
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	434080e7          	jalr	1076(ra) # 800020d4 <_Z8printIntiii>
        printString("\n");
    80001ca8:	00003517          	auipc	a0,0x3
    80001cac:	4b850513          	addi	a0,a0,1208 # 80005160 <kvmincrease+0xb70>
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	28c080e7          	jalr	652(ra) # 80001f3c <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cb8:	141027f3          	csrr	a5,sepc
    80001cbc:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001cc0:	fc843503          	ld	a0,-56(s0)
        printInt(r_sepc());
    80001cc4:	00000613          	li	a2,0
    80001cc8:	00a00593          	li	a1,10
    80001ccc:	0005051b          	sext.w	a0,a0
    80001cd0:	00000097          	auipc	ra,0x0
    80001cd4:	404080e7          	jalr	1028(ra) # 800020d4 <_Z8printIntiii>
        printString("\n");
    80001cd8:	00003517          	auipc	a0,0x3
    80001cdc:	48850513          	addi	a0,a0,1160 # 80005160 <kvmincrease+0xb70>
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	25c080e7          	jalr	604(ra) # 80001f3c <_Z11printStringPKc>
    }
    80001ce8:	0400006f          	j	80001d28 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001cec:	141027f3          	csrr	a5,sepc
    80001cf0:	faf43823          	sd	a5,-80(s0)
    return sepc;
    80001cf4:	fb043483          	ld	s1,-80(s0)
        uint64 sepc = r_sepc() + 4; // jer pc pokazuje na trenutnu instrukciju tj ecall a treba na sledecu
    80001cf8:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001cfc:	100027f3          	csrr	a5,sstatus
    80001d00:	faf43423          	sd	a5,-88(s0)
    return sstatus;
    80001d04:	fa843983          	ld	s3,-88(s0)
        if(a0 == 0x11) { //thread_create
    80001d08:	01100793          	li	a5,17
    80001d0c:	02f80c63          	beq	a6,a5,80001d44 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        else if(a0 == 0x12) { // thread_exit
    80001d10:	01200793          	li	a5,18
    80001d14:	04f80c63          	beq	a6,a5,80001d6c <_ZN5Riscv20handleSupervisorTrapEv+0x168>
        else if(a0 == 0x13) { // thread_dispatch
    80001d18:	01300793          	li	a5,19
    80001d1c:	06f80063          	beq	a6,a5,80001d7c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001d20:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001d24:	14149073          	csrw	sepc,s1
    80001d28:	08813083          	ld	ra,136(sp)
    80001d2c:	08013403          	ld	s0,128(sp)
    80001d30:	07813483          	ld	s1,120(sp)
    80001d34:	07013903          	ld	s2,112(sp)
    80001d38:	06813983          	ld	s3,104(sp)
    80001d3c:	09010113          	addi	sp,sp,144
    80001d40:	00008067          	ret
            TCB *handle = TCB::createThread((void (*)(void*))(a3), (void*)a2, (uint64*)a1);
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	c34080e7          	jalr	-972(ra) # 80001978 <_ZN3TCB12createThreadEPFvPvES0_Pm>
            if(!handle) w_a0(-1);
    80001d4c:	00050a63          	beqz	a0,80001d60 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
                *(h) = handle;
    80001d50:	00a93023          	sd	a0,0(s2)
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001d54:	00000793          	li	a5,0
    80001d58:	00078513          	mv	a0,a5
}
    80001d5c:	fc5ff06f          	j	80001d20 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001d60:	fff00793          	li	a5,-1
    80001d64:	00078513          	mv	a0,a5
}
    80001d68:	fb9ff06f          	j	80001d20 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
            a0 = TCB::exit();
    80001d6c:	00000097          	auipc	ra,0x0
    80001d70:	d88080e7          	jalr	-632(ra) # 80001af4 <_ZN3TCB4exitEv>
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80001d74:	00050513          	mv	a0,a0
}
    80001d78:	fa9ff06f          	j	80001d20 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
            TCB::dispatch();
    80001d7c:	00000097          	auipc	ra,0x0
    80001d80:	cf4080e7          	jalr	-780(ra) # 80001a70 <_ZN3TCB8dispatchEv>
    80001d84:	f9dff06f          	j	80001d20 <_ZN5Riscv20handleSupervisorTrapEv+0x11c>
        TCB::timeSliceCounter++;
    80001d88:	00004717          	auipc	a4,0x4
    80001d8c:	ba873703          	ld	a4,-1112(a4) # 80005930 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001d90:	00073783          	ld	a5,0(a4)
    80001d94:	00178793          	addi	a5,a5,1
    80001d98:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80001d9c:	00004717          	auipc	a4,0x4
    80001da0:	bac73703          	ld	a4,-1108(a4) # 80005948 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001da4:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    80001da8:	03073703          	ld	a4,48(a4)
    80001dac:	00e7f863          	bgeu	a5,a4,80001dbc <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001db0:	00200793          	li	a5,2
    80001db4:	1447b073          	csrc	sip,a5
}
    80001db8:	f71ff06f          	j	80001d28 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001dbc:	141027f3          	csrr	a5,sepc
    80001dc0:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    80001dc4:	fc043483          	ld	s1,-64(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001dc8:	100027f3          	csrr	a5,sstatus
    80001dcc:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    80001dd0:	fb843903          	ld	s2,-72(s0)
            TCB::dispatch();
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	c9c080e7          	jalr	-868(ra) # 80001a70 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001ddc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001de0:	14149073          	csrw	sepc,s1
}
    80001de4:	fcdff06f          	j	80001db0 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
        console_handler();
    80001de8:	00002097          	auipc	ra,0x2
    80001dec:	75c080e7          	jalr	1884(ra) # 80004544 <console_handler>
    80001df0:	f39ff06f          	j	80001d28 <_ZN5Riscv20handleSupervisorTrapEv+0x124>

0000000080001df4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001df4:	ff010113          	addi	sp,sp,-16
    80001df8:	00813423          	sd	s0,8(sp)
    80001dfc:	01010413          	addi	s0,sp,16
    80001e00:	00100793          	li	a5,1
    80001e04:	00f50863          	beq	a0,a5,80001e14 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001e08:	00813403          	ld	s0,8(sp)
    80001e0c:	01010113          	addi	sp,sp,16
    80001e10:	00008067          	ret
    80001e14:	000107b7          	lui	a5,0x10
    80001e18:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001e1c:	fef596e3          	bne	a1,a5,80001e08 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001e20:	00004797          	auipc	a5,0x4
    80001e24:	ba078793          	addi	a5,a5,-1120 # 800059c0 <_ZN9Scheduler16readyThreadQueueE>
    80001e28:	0007b023          	sd	zero,0(a5)
    80001e2c:	0007b423          	sd	zero,8(a5)
    80001e30:	fd9ff06f          	j	80001e08 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001e34 <_ZN9Scheduler3getEv>:
{
    80001e34:	fe010113          	addi	sp,sp,-32
    80001e38:	00113c23          	sd	ra,24(sp)
    80001e3c:	00813823          	sd	s0,16(sp)
    80001e40:	00913423          	sd	s1,8(sp)
    80001e44:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001e48:	00004517          	auipc	a0,0x4
    80001e4c:	b7853503          	ld	a0,-1160(a0) # 800059c0 <_ZN9Scheduler16readyThreadQueueE>
    80001e50:	04050263          	beqz	a0,80001e94 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001e54:	00853783          	ld	a5,8(a0)
    80001e58:	00004717          	auipc	a4,0x4
    80001e5c:	b6f73423          	sd	a5,-1176(a4) # 800059c0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001e60:	02078463          	beqz	a5,80001e88 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001e64:	00053483          	ld	s1,0(a0)
        delete elem;
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	d2c080e7          	jalr	-724(ra) # 80001b94 <_ZdlPv>
}
    80001e70:	00048513          	mv	a0,s1
    80001e74:	01813083          	ld	ra,24(sp)
    80001e78:	01013403          	ld	s0,16(sp)
    80001e7c:	00813483          	ld	s1,8(sp)
    80001e80:	02010113          	addi	sp,sp,32
    80001e84:	00008067          	ret
        if (!head) { tail = 0; }
    80001e88:	00004797          	auipc	a5,0x4
    80001e8c:	b407b023          	sd	zero,-1216(a5) # 800059c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001e90:	fd5ff06f          	j	80001e64 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001e94:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001e98:	fd9ff06f          	j	80001e70 <_ZN9Scheduler3getEv+0x3c>

0000000080001e9c <_ZN9Scheduler3putEP3TCB>:
{
    80001e9c:	fe010113          	addi	sp,sp,-32
    80001ea0:	00113c23          	sd	ra,24(sp)
    80001ea4:	00813823          	sd	s0,16(sp)
    80001ea8:	00913423          	sd	s1,8(sp)
    80001eac:	02010413          	addi	s0,sp,32
    80001eb0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001eb4:	01000513          	li	a0,16
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	c8c080e7          	jalr	-884(ra) # 80001b44 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ec0:	00953023          	sd	s1,0(a0)
    80001ec4:	00053423          	sd	zero,8(a0)
        if (tail)
    80001ec8:	00004797          	auipc	a5,0x4
    80001ecc:	b007b783          	ld	a5,-1280(a5) # 800059c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ed0:	02078263          	beqz	a5,80001ef4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001ed4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001ed8:	00004797          	auipc	a5,0x4
    80001edc:	aea7b823          	sd	a0,-1296(a5) # 800059c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001ee0:	01813083          	ld	ra,24(sp)
    80001ee4:	01013403          	ld	s0,16(sp)
    80001ee8:	00813483          	ld	s1,8(sp)
    80001eec:	02010113          	addi	sp,sp,32
    80001ef0:	00008067          	ret
            head = tail = elem;
    80001ef4:	00004797          	auipc	a5,0x4
    80001ef8:	acc78793          	addi	a5,a5,-1332 # 800059c0 <_ZN9Scheduler16readyThreadQueueE>
    80001efc:	00a7b423          	sd	a0,8(a5)
    80001f00:	00a7b023          	sd	a0,0(a5)
    80001f04:	fddff06f          	j	80001ee0 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001f08 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001f08:	ff010113          	addi	sp,sp,-16
    80001f0c:	00113423          	sd	ra,8(sp)
    80001f10:	00813023          	sd	s0,0(sp)
    80001f14:	01010413          	addi	s0,sp,16
    80001f18:	000105b7          	lui	a1,0x10
    80001f1c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001f20:	00100513          	li	a0,1
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	ed0080e7          	jalr	-304(ra) # 80001df4 <_Z41__static_initialization_and_destruction_0ii>
    80001f2c:	00813083          	ld	ra,8(sp)
    80001f30:	00013403          	ld	s0,0(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80001f3c:	fe010113          	addi	sp,sp,-32
    80001f40:	00113c23          	sd	ra,24(sp)
    80001f44:	00813823          	sd	s0,16(sp)
    80001f48:	00913423          	sd	s1,8(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    80001f50:	00050493          	mv	s1,a0
    LOCK();
    80001f54:	00100613          	li	a2,1
    80001f58:	00000593          	li	a1,0
    80001f5c:	00004517          	auipc	a0,0x4
    80001f60:	a7450513          	addi	a0,a0,-1420 # 800059d0 <lockPrint>
    80001f64:	fffff097          	auipc	ra,0xfffff
    80001f68:	1c0080e7          	jalr	448(ra) # 80001124 <copy_and_swap>
    80001f6c:	fe0514e3          	bnez	a0,80001f54 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80001f70:	0004c503          	lbu	a0,0(s1)
    80001f74:	00050a63          	beqz	a0,80001f88 <_Z11printStringPKc+0x4c>
    {
        __putc(*string);
    80001f78:	00002097          	auipc	ra,0x2
    80001f7c:	558080e7          	jalr	1368(ra) # 800044d0 <__putc>
        string++;
    80001f80:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001f84:	fedff06f          	j	80001f70 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80001f88:	00000613          	li	a2,0
    80001f8c:	00100593          	li	a1,1
    80001f90:	00004517          	auipc	a0,0x4
    80001f94:	a4050513          	addi	a0,a0,-1472 # 800059d0 <lockPrint>
    80001f98:	fffff097          	auipc	ra,0xfffff
    80001f9c:	18c080e7          	jalr	396(ra) # 80001124 <copy_and_swap>
    80001fa0:	fe0514e3          	bnez	a0,80001f88 <_Z11printStringPKc+0x4c>
}
    80001fa4:	01813083          	ld	ra,24(sp)
    80001fa8:	01013403          	ld	s0,16(sp)
    80001fac:	00813483          	ld	s1,8(sp)
    80001fb0:	02010113          	addi	sp,sp,32
    80001fb4:	00008067          	ret

0000000080001fb8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80001fb8:	fd010113          	addi	sp,sp,-48
    80001fbc:	02113423          	sd	ra,40(sp)
    80001fc0:	02813023          	sd	s0,32(sp)
    80001fc4:	00913c23          	sd	s1,24(sp)
    80001fc8:	01213823          	sd	s2,16(sp)
    80001fcc:	01313423          	sd	s3,8(sp)
    80001fd0:	01413023          	sd	s4,0(sp)
    80001fd4:	03010413          	addi	s0,sp,48
    80001fd8:	00050993          	mv	s3,a0
    80001fdc:	00058a13          	mv	s4,a1
    LOCK();
    80001fe0:	00100613          	li	a2,1
    80001fe4:	00000593          	li	a1,0
    80001fe8:	00004517          	auipc	a0,0x4
    80001fec:	9e850513          	addi	a0,a0,-1560 # 800059d0 <lockPrint>
    80001ff0:	fffff097          	auipc	ra,0xfffff
    80001ff4:	134080e7          	jalr	308(ra) # 80001124 <copy_and_swap>
    80001ff8:	fe0514e3          	bnez	a0,80001fe0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001ffc:	00000913          	li	s2,0
    80002000:	00090493          	mv	s1,s2
    80002004:	0019091b          	addiw	s2,s2,1
    80002008:	03495a63          	bge	s2,s4,8000203c <_Z9getStringPci+0x84>
        cc = __getc();
    8000200c:	00002097          	auipc	ra,0x2
    80002010:	500080e7          	jalr	1280(ra) # 8000450c <__getc>
        if(cc < 1)
    80002014:	02050463          	beqz	a0,8000203c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002018:	009984b3          	add	s1,s3,s1
    8000201c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002020:	00a00793          	li	a5,10
    80002024:	00f50a63          	beq	a0,a5,80002038 <_Z9getStringPci+0x80>
    80002028:	00d00793          	li	a5,13
    8000202c:	fcf51ae3          	bne	a0,a5,80002000 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002030:	00090493          	mv	s1,s2
    80002034:	0080006f          	j	8000203c <_Z9getStringPci+0x84>
    80002038:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000203c:	009984b3          	add	s1,s3,s1
    80002040:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002044:	00000613          	li	a2,0
    80002048:	00100593          	li	a1,1
    8000204c:	00004517          	auipc	a0,0x4
    80002050:	98450513          	addi	a0,a0,-1660 # 800059d0 <lockPrint>
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	0d0080e7          	jalr	208(ra) # 80001124 <copy_and_swap>
    8000205c:	fe0514e3          	bnez	a0,80002044 <_Z9getStringPci+0x8c>
    return buf;
}
    80002060:	00098513          	mv	a0,s3
    80002064:	02813083          	ld	ra,40(sp)
    80002068:	02013403          	ld	s0,32(sp)
    8000206c:	01813483          	ld	s1,24(sp)
    80002070:	01013903          	ld	s2,16(sp)
    80002074:	00813983          	ld	s3,8(sp)
    80002078:	00013a03          	ld	s4,0(sp)
    8000207c:	03010113          	addi	sp,sp,48
    80002080:	00008067          	ret

0000000080002084 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00813423          	sd	s0,8(sp)
    8000208c:	01010413          	addi	s0,sp,16
    80002090:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002094:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002098:	0006c603          	lbu	a2,0(a3)
    8000209c:	fd06071b          	addiw	a4,a2,-48
    800020a0:	0ff77713          	andi	a4,a4,255
    800020a4:	00900793          	li	a5,9
    800020a8:	02e7e063          	bltu	a5,a4,800020c8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800020ac:	0025179b          	slliw	a5,a0,0x2
    800020b0:	00a787bb          	addw	a5,a5,a0
    800020b4:	0017979b          	slliw	a5,a5,0x1
    800020b8:	00168693          	addi	a3,a3,1
    800020bc:	00c787bb          	addw	a5,a5,a2
    800020c0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800020c4:	fd5ff06f          	j	80002098 <_Z11stringToIntPKc+0x14>
    return n;
}
    800020c8:	00813403          	ld	s0,8(sp)
    800020cc:	01010113          	addi	sp,sp,16
    800020d0:	00008067          	ret

00000000800020d4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800020d4:	fc010113          	addi	sp,sp,-64
    800020d8:	02113c23          	sd	ra,56(sp)
    800020dc:	02813823          	sd	s0,48(sp)
    800020e0:	02913423          	sd	s1,40(sp)
    800020e4:	03213023          	sd	s2,32(sp)
    800020e8:	01313c23          	sd	s3,24(sp)
    800020ec:	04010413          	addi	s0,sp,64
    800020f0:	00050493          	mv	s1,a0
    800020f4:	00058913          	mv	s2,a1
    800020f8:	00060993          	mv	s3,a2
    LOCK();
    800020fc:	00100613          	li	a2,1
    80002100:	00000593          	li	a1,0
    80002104:	00004517          	auipc	a0,0x4
    80002108:	8cc50513          	addi	a0,a0,-1844 # 800059d0 <lockPrint>
    8000210c:	fffff097          	auipc	ra,0xfffff
    80002110:	018080e7          	jalr	24(ra) # 80001124 <copy_and_swap>
    80002114:	fe0514e3          	bnez	a0,800020fc <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002118:	00098463          	beqz	s3,80002120 <_Z8printIntiii+0x4c>
    8000211c:	0804c463          	bltz	s1,800021a4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002120:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002124:	00000593          	li	a1,0
    }

    i = 0;
    80002128:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000212c:	0009079b          	sext.w	a5,s2
    80002130:	0325773b          	remuw	a4,a0,s2
    80002134:	00048613          	mv	a2,s1
    80002138:	0014849b          	addiw	s1,s1,1
    8000213c:	02071693          	slli	a3,a4,0x20
    80002140:	0206d693          	srli	a3,a3,0x20
    80002144:	00003717          	auipc	a4,0x3
    80002148:	7c470713          	addi	a4,a4,1988 # 80005908 <digits>
    8000214c:	00d70733          	add	a4,a4,a3
    80002150:	00074683          	lbu	a3,0(a4)
    80002154:	fd040713          	addi	a4,s0,-48
    80002158:	00c70733          	add	a4,a4,a2
    8000215c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002160:	0005071b          	sext.w	a4,a0
    80002164:	0325553b          	divuw	a0,a0,s2
    80002168:	fcf772e3          	bgeu	a4,a5,8000212c <_Z8printIntiii+0x58>
    if(neg)
    8000216c:	00058c63          	beqz	a1,80002184 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002170:	fd040793          	addi	a5,s0,-48
    80002174:	009784b3          	add	s1,a5,s1
    80002178:	02d00793          	li	a5,45
    8000217c:	fef48823          	sb	a5,-16(s1)
    80002180:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002184:	fff4849b          	addiw	s1,s1,-1
    80002188:	0204c463          	bltz	s1,800021b0 <_Z8printIntiii+0xdc>
        __putc(buf[i]);
    8000218c:	fd040793          	addi	a5,s0,-48
    80002190:	009787b3          	add	a5,a5,s1
    80002194:	ff07c503          	lbu	a0,-16(a5)
    80002198:	00002097          	auipc	ra,0x2
    8000219c:	338080e7          	jalr	824(ra) # 800044d0 <__putc>
    800021a0:	fe5ff06f          	j	80002184 <_Z8printIntiii+0xb0>
        x = -xx;
    800021a4:	4090053b          	negw	a0,s1
        neg = 1;
    800021a8:	00100593          	li	a1,1
        x = -xx;
    800021ac:	f7dff06f          	j	80002128 <_Z8printIntiii+0x54>

    UNLOCK();
    800021b0:	00000613          	li	a2,0
    800021b4:	00100593          	li	a1,1
    800021b8:	00004517          	auipc	a0,0x4
    800021bc:	81850513          	addi	a0,a0,-2024 # 800059d0 <lockPrint>
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	f64080e7          	jalr	-156(ra) # 80001124 <copy_and_swap>
    800021c8:	fe0514e3          	bnez	a0,800021b0 <_Z8printIntiii+0xdc>
    800021cc:	03813083          	ld	ra,56(sp)
    800021d0:	03013403          	ld	s0,48(sp)
    800021d4:	02813483          	ld	s1,40(sp)
    800021d8:	02013903          	ld	s2,32(sp)
    800021dc:	01813983          	ld	s3,24(sp)
    800021e0:	04010113          	addi	sp,sp,64
    800021e4:	00008067          	ret

00000000800021e8 <start>:
    800021e8:	ff010113          	addi	sp,sp,-16
    800021ec:	00813423          	sd	s0,8(sp)
    800021f0:	01010413          	addi	s0,sp,16
    800021f4:	300027f3          	csrr	a5,mstatus
    800021f8:	ffffe737          	lui	a4,0xffffe
    800021fc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff7baf>
    80002200:	00e7f7b3          	and	a5,a5,a4
    80002204:	00001737          	lui	a4,0x1
    80002208:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000220c:	00e7e7b3          	or	a5,a5,a4
    80002210:	30079073          	csrw	mstatus,a5
    80002214:	00000797          	auipc	a5,0x0
    80002218:	16078793          	addi	a5,a5,352 # 80002374 <system_main>
    8000221c:	34179073          	csrw	mepc,a5
    80002220:	00000793          	li	a5,0
    80002224:	18079073          	csrw	satp,a5
    80002228:	000107b7          	lui	a5,0x10
    8000222c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002230:	30279073          	csrw	medeleg,a5
    80002234:	30379073          	csrw	mideleg,a5
    80002238:	104027f3          	csrr	a5,sie
    8000223c:	2227e793          	ori	a5,a5,546
    80002240:	10479073          	csrw	sie,a5
    80002244:	fff00793          	li	a5,-1
    80002248:	00a7d793          	srli	a5,a5,0xa
    8000224c:	3b079073          	csrw	pmpaddr0,a5
    80002250:	00f00793          	li	a5,15
    80002254:	3a079073          	csrw	pmpcfg0,a5
    80002258:	f14027f3          	csrr	a5,mhartid
    8000225c:	0200c737          	lui	a4,0x200c
    80002260:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002264:	0007869b          	sext.w	a3,a5
    80002268:	00269713          	slli	a4,a3,0x2
    8000226c:	000f4637          	lui	a2,0xf4
    80002270:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002274:	00d70733          	add	a4,a4,a3
    80002278:	0037979b          	slliw	a5,a5,0x3
    8000227c:	020046b7          	lui	a3,0x2004
    80002280:	00d787b3          	add	a5,a5,a3
    80002284:	00c585b3          	add	a1,a1,a2
    80002288:	00371693          	slli	a3,a4,0x3
    8000228c:	00003717          	auipc	a4,0x3
    80002290:	75470713          	addi	a4,a4,1876 # 800059e0 <timer_scratch>
    80002294:	00b7b023          	sd	a1,0(a5)
    80002298:	00d70733          	add	a4,a4,a3
    8000229c:	00f73c23          	sd	a5,24(a4)
    800022a0:	02c73023          	sd	a2,32(a4)
    800022a4:	34071073          	csrw	mscratch,a4
    800022a8:	00000797          	auipc	a5,0x0
    800022ac:	6e878793          	addi	a5,a5,1768 # 80002990 <timervec>
    800022b0:	30579073          	csrw	mtvec,a5
    800022b4:	300027f3          	csrr	a5,mstatus
    800022b8:	0087e793          	ori	a5,a5,8
    800022bc:	30079073          	csrw	mstatus,a5
    800022c0:	304027f3          	csrr	a5,mie
    800022c4:	0807e793          	ori	a5,a5,128
    800022c8:	30479073          	csrw	mie,a5
    800022cc:	f14027f3          	csrr	a5,mhartid
    800022d0:	0007879b          	sext.w	a5,a5
    800022d4:	00078213          	mv	tp,a5
    800022d8:	30200073          	mret
    800022dc:	00813403          	ld	s0,8(sp)
    800022e0:	01010113          	addi	sp,sp,16
    800022e4:	00008067          	ret

00000000800022e8 <timerinit>:
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00813423          	sd	s0,8(sp)
    800022f0:	01010413          	addi	s0,sp,16
    800022f4:	f14027f3          	csrr	a5,mhartid
    800022f8:	0200c737          	lui	a4,0x200c
    800022fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002300:	0007869b          	sext.w	a3,a5
    80002304:	00269713          	slli	a4,a3,0x2
    80002308:	000f4637          	lui	a2,0xf4
    8000230c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002310:	00d70733          	add	a4,a4,a3
    80002314:	0037979b          	slliw	a5,a5,0x3
    80002318:	020046b7          	lui	a3,0x2004
    8000231c:	00d787b3          	add	a5,a5,a3
    80002320:	00c585b3          	add	a1,a1,a2
    80002324:	00371693          	slli	a3,a4,0x3
    80002328:	00003717          	auipc	a4,0x3
    8000232c:	6b870713          	addi	a4,a4,1720 # 800059e0 <timer_scratch>
    80002330:	00b7b023          	sd	a1,0(a5)
    80002334:	00d70733          	add	a4,a4,a3
    80002338:	00f73c23          	sd	a5,24(a4)
    8000233c:	02c73023          	sd	a2,32(a4)
    80002340:	34071073          	csrw	mscratch,a4
    80002344:	00000797          	auipc	a5,0x0
    80002348:	64c78793          	addi	a5,a5,1612 # 80002990 <timervec>
    8000234c:	30579073          	csrw	mtvec,a5
    80002350:	300027f3          	csrr	a5,mstatus
    80002354:	0087e793          	ori	a5,a5,8
    80002358:	30079073          	csrw	mstatus,a5
    8000235c:	304027f3          	csrr	a5,mie
    80002360:	0807e793          	ori	a5,a5,128
    80002364:	30479073          	csrw	mie,a5
    80002368:	00813403          	ld	s0,8(sp)
    8000236c:	01010113          	addi	sp,sp,16
    80002370:	00008067          	ret

0000000080002374 <system_main>:
    80002374:	fe010113          	addi	sp,sp,-32
    80002378:	00813823          	sd	s0,16(sp)
    8000237c:	00913423          	sd	s1,8(sp)
    80002380:	00113c23          	sd	ra,24(sp)
    80002384:	02010413          	addi	s0,sp,32
    80002388:	00000097          	auipc	ra,0x0
    8000238c:	0c4080e7          	jalr	196(ra) # 8000244c <cpuid>
    80002390:	00003497          	auipc	s1,0x3
    80002394:	5e048493          	addi	s1,s1,1504 # 80005970 <started>
    80002398:	02050263          	beqz	a0,800023bc <system_main+0x48>
    8000239c:	0004a783          	lw	a5,0(s1)
    800023a0:	0007879b          	sext.w	a5,a5
    800023a4:	fe078ce3          	beqz	a5,8000239c <system_main+0x28>
    800023a8:	0ff0000f          	fence
    800023ac:	00003517          	auipc	a0,0x3
    800023b0:	dec50513          	addi	a0,a0,-532 # 80005198 <kvmincrease+0xba8>
    800023b4:	00001097          	auipc	ra,0x1
    800023b8:	a78080e7          	jalr	-1416(ra) # 80002e2c <panic>
    800023bc:	00001097          	auipc	ra,0x1
    800023c0:	9cc080e7          	jalr	-1588(ra) # 80002d88 <consoleinit>
    800023c4:	00001097          	auipc	ra,0x1
    800023c8:	158080e7          	jalr	344(ra) # 8000351c <printfinit>
    800023cc:	00003517          	auipc	a0,0x3
    800023d0:	d9450513          	addi	a0,a0,-620 # 80005160 <kvmincrease+0xb70>
    800023d4:	00001097          	auipc	ra,0x1
    800023d8:	ab4080e7          	jalr	-1356(ra) # 80002e88 <__printf>
    800023dc:	00003517          	auipc	a0,0x3
    800023e0:	d8c50513          	addi	a0,a0,-628 # 80005168 <kvmincrease+0xb78>
    800023e4:	00001097          	auipc	ra,0x1
    800023e8:	aa4080e7          	jalr	-1372(ra) # 80002e88 <__printf>
    800023ec:	00003517          	auipc	a0,0x3
    800023f0:	d7450513          	addi	a0,a0,-652 # 80005160 <kvmincrease+0xb70>
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	a94080e7          	jalr	-1388(ra) # 80002e88 <__printf>
    800023fc:	00001097          	auipc	ra,0x1
    80002400:	4ac080e7          	jalr	1196(ra) # 800038a8 <kinit>
    80002404:	00000097          	auipc	ra,0x0
    80002408:	148080e7          	jalr	328(ra) # 8000254c <trapinit>
    8000240c:	00000097          	auipc	ra,0x0
    80002410:	16c080e7          	jalr	364(ra) # 80002578 <trapinithart>
    80002414:	00000097          	auipc	ra,0x0
    80002418:	5bc080e7          	jalr	1468(ra) # 800029d0 <plicinit>
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	5dc080e7          	jalr	1500(ra) # 800029f8 <plicinithart>
    80002424:	00000097          	auipc	ra,0x0
    80002428:	078080e7          	jalr	120(ra) # 8000249c <userinit>
    8000242c:	0ff0000f          	fence
    80002430:	00100793          	li	a5,1
    80002434:	00003517          	auipc	a0,0x3
    80002438:	d4c50513          	addi	a0,a0,-692 # 80005180 <kvmincrease+0xb90>
    8000243c:	00f4a023          	sw	a5,0(s1)
    80002440:	00001097          	auipc	ra,0x1
    80002444:	a48080e7          	jalr	-1464(ra) # 80002e88 <__printf>
    80002448:	0000006f          	j	80002448 <system_main+0xd4>

000000008000244c <cpuid>:
    8000244c:	ff010113          	addi	sp,sp,-16
    80002450:	00813423          	sd	s0,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00020513          	mv	a0,tp
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	0005051b          	sext.w	a0,a0
    80002464:	01010113          	addi	sp,sp,16
    80002468:	00008067          	ret

000000008000246c <mycpu>:
    8000246c:	ff010113          	addi	sp,sp,-16
    80002470:	00813423          	sd	s0,8(sp)
    80002474:	01010413          	addi	s0,sp,16
    80002478:	00020793          	mv	a5,tp
    8000247c:	00813403          	ld	s0,8(sp)
    80002480:	0007879b          	sext.w	a5,a5
    80002484:	00779793          	slli	a5,a5,0x7
    80002488:	00004517          	auipc	a0,0x4
    8000248c:	58850513          	addi	a0,a0,1416 # 80006a10 <cpus>
    80002490:	00f50533          	add	a0,a0,a5
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret

000000008000249c <userinit>:
    8000249c:	ff010113          	addi	sp,sp,-16
    800024a0:	00813423          	sd	s0,8(sp)
    800024a4:	01010413          	addi	s0,sp,16
    800024a8:	00813403          	ld	s0,8(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	fffff317          	auipc	t1,0xfffff
    800024b4:	3b030067          	jr	944(t1) # 80001860 <main>

00000000800024b8 <either_copyout>:
    800024b8:	ff010113          	addi	sp,sp,-16
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	00113423          	sd	ra,8(sp)
    800024c4:	01010413          	addi	s0,sp,16
    800024c8:	02051663          	bnez	a0,800024f4 <either_copyout+0x3c>
    800024cc:	00058513          	mv	a0,a1
    800024d0:	00060593          	mv	a1,a2
    800024d4:	0006861b          	sext.w	a2,a3
    800024d8:	00002097          	auipc	ra,0x2
    800024dc:	c5c080e7          	jalr	-932(ra) # 80004134 <__memmove>
    800024e0:	00813083          	ld	ra,8(sp)
    800024e4:	00013403          	ld	s0,0(sp)
    800024e8:	00000513          	li	a0,0
    800024ec:	01010113          	addi	sp,sp,16
    800024f0:	00008067          	ret
    800024f4:	00003517          	auipc	a0,0x3
    800024f8:	ccc50513          	addi	a0,a0,-820 # 800051c0 <kvmincrease+0xbd0>
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	930080e7          	jalr	-1744(ra) # 80002e2c <panic>

0000000080002504 <either_copyin>:
    80002504:	ff010113          	addi	sp,sp,-16
    80002508:	00813023          	sd	s0,0(sp)
    8000250c:	00113423          	sd	ra,8(sp)
    80002510:	01010413          	addi	s0,sp,16
    80002514:	02059463          	bnez	a1,8000253c <either_copyin+0x38>
    80002518:	00060593          	mv	a1,a2
    8000251c:	0006861b          	sext.w	a2,a3
    80002520:	00002097          	auipc	ra,0x2
    80002524:	c14080e7          	jalr	-1004(ra) # 80004134 <__memmove>
    80002528:	00813083          	ld	ra,8(sp)
    8000252c:	00013403          	ld	s0,0(sp)
    80002530:	00000513          	li	a0,0
    80002534:	01010113          	addi	sp,sp,16
    80002538:	00008067          	ret
    8000253c:	00003517          	auipc	a0,0x3
    80002540:	cac50513          	addi	a0,a0,-852 # 800051e8 <kvmincrease+0xbf8>
    80002544:	00001097          	auipc	ra,0x1
    80002548:	8e8080e7          	jalr	-1816(ra) # 80002e2c <panic>

000000008000254c <trapinit>:
    8000254c:	ff010113          	addi	sp,sp,-16
    80002550:	00813423          	sd	s0,8(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	00813403          	ld	s0,8(sp)
    8000255c:	00003597          	auipc	a1,0x3
    80002560:	cb458593          	addi	a1,a1,-844 # 80005210 <kvmincrease+0xc20>
    80002564:	00004517          	auipc	a0,0x4
    80002568:	52c50513          	addi	a0,a0,1324 # 80006a90 <tickslock>
    8000256c:	01010113          	addi	sp,sp,16
    80002570:	00001317          	auipc	t1,0x1
    80002574:	5c830067          	jr	1480(t1) # 80003b38 <initlock>

0000000080002578 <trapinithart>:
    80002578:	ff010113          	addi	sp,sp,-16
    8000257c:	00813423          	sd	s0,8(sp)
    80002580:	01010413          	addi	s0,sp,16
    80002584:	00000797          	auipc	a5,0x0
    80002588:	2fc78793          	addi	a5,a5,764 # 80002880 <kernelvec>
    8000258c:	10579073          	csrw	stvec,a5
    80002590:	00813403          	ld	s0,8(sp)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret

000000008000259c <usertrap>:
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00813423          	sd	s0,8(sp)
    800025a4:	01010413          	addi	s0,sp,16
    800025a8:	00813403          	ld	s0,8(sp)
    800025ac:	01010113          	addi	sp,sp,16
    800025b0:	00008067          	ret

00000000800025b4 <usertrapret>:
    800025b4:	ff010113          	addi	sp,sp,-16
    800025b8:	00813423          	sd	s0,8(sp)
    800025bc:	01010413          	addi	s0,sp,16
    800025c0:	00813403          	ld	s0,8(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <kerneltrap>:
    800025cc:	fe010113          	addi	sp,sp,-32
    800025d0:	00813823          	sd	s0,16(sp)
    800025d4:	00113c23          	sd	ra,24(sp)
    800025d8:	00913423          	sd	s1,8(sp)
    800025dc:	02010413          	addi	s0,sp,32
    800025e0:	142025f3          	csrr	a1,scause
    800025e4:	100027f3          	csrr	a5,sstatus
    800025e8:	0027f793          	andi	a5,a5,2
    800025ec:	10079c63          	bnez	a5,80002704 <kerneltrap+0x138>
    800025f0:	142027f3          	csrr	a5,scause
    800025f4:	0207ce63          	bltz	a5,80002630 <kerneltrap+0x64>
    800025f8:	00003517          	auipc	a0,0x3
    800025fc:	c6050513          	addi	a0,a0,-928 # 80005258 <kvmincrease+0xc68>
    80002600:	00001097          	auipc	ra,0x1
    80002604:	888080e7          	jalr	-1912(ra) # 80002e88 <__printf>
    80002608:	141025f3          	csrr	a1,sepc
    8000260c:	14302673          	csrr	a2,stval
    80002610:	00003517          	auipc	a0,0x3
    80002614:	c5850513          	addi	a0,a0,-936 # 80005268 <kvmincrease+0xc78>
    80002618:	00001097          	auipc	ra,0x1
    8000261c:	870080e7          	jalr	-1936(ra) # 80002e88 <__printf>
    80002620:	00003517          	auipc	a0,0x3
    80002624:	c6050513          	addi	a0,a0,-928 # 80005280 <kvmincrease+0xc90>
    80002628:	00001097          	auipc	ra,0x1
    8000262c:	804080e7          	jalr	-2044(ra) # 80002e2c <panic>
    80002630:	0ff7f713          	andi	a4,a5,255
    80002634:	00900693          	li	a3,9
    80002638:	04d70063          	beq	a4,a3,80002678 <kerneltrap+0xac>
    8000263c:	fff00713          	li	a4,-1
    80002640:	03f71713          	slli	a4,a4,0x3f
    80002644:	00170713          	addi	a4,a4,1
    80002648:	fae798e3          	bne	a5,a4,800025f8 <kerneltrap+0x2c>
    8000264c:	00000097          	auipc	ra,0x0
    80002650:	e00080e7          	jalr	-512(ra) # 8000244c <cpuid>
    80002654:	06050663          	beqz	a0,800026c0 <kerneltrap+0xf4>
    80002658:	144027f3          	csrr	a5,sip
    8000265c:	ffd7f793          	andi	a5,a5,-3
    80002660:	14479073          	csrw	sip,a5
    80002664:	01813083          	ld	ra,24(sp)
    80002668:	01013403          	ld	s0,16(sp)
    8000266c:	00813483          	ld	s1,8(sp)
    80002670:	02010113          	addi	sp,sp,32
    80002674:	00008067          	ret
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	3cc080e7          	jalr	972(ra) # 80002a44 <plic_claim>
    80002680:	00a00793          	li	a5,10
    80002684:	00050493          	mv	s1,a0
    80002688:	06f50863          	beq	a0,a5,800026f8 <kerneltrap+0x12c>
    8000268c:	fc050ce3          	beqz	a0,80002664 <kerneltrap+0x98>
    80002690:	00050593          	mv	a1,a0
    80002694:	00003517          	auipc	a0,0x3
    80002698:	ba450513          	addi	a0,a0,-1116 # 80005238 <kvmincrease+0xc48>
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	7ec080e7          	jalr	2028(ra) # 80002e88 <__printf>
    800026a4:	01013403          	ld	s0,16(sp)
    800026a8:	01813083          	ld	ra,24(sp)
    800026ac:	00048513          	mv	a0,s1
    800026b0:	00813483          	ld	s1,8(sp)
    800026b4:	02010113          	addi	sp,sp,32
    800026b8:	00000317          	auipc	t1,0x0
    800026bc:	3c430067          	jr	964(t1) # 80002a7c <plic_complete>
    800026c0:	00004517          	auipc	a0,0x4
    800026c4:	3d050513          	addi	a0,a0,976 # 80006a90 <tickslock>
    800026c8:	00001097          	auipc	ra,0x1
    800026cc:	494080e7          	jalr	1172(ra) # 80003b5c <acquire>
    800026d0:	00003717          	auipc	a4,0x3
    800026d4:	2a470713          	addi	a4,a4,676 # 80005974 <ticks>
    800026d8:	00072783          	lw	a5,0(a4)
    800026dc:	00004517          	auipc	a0,0x4
    800026e0:	3b450513          	addi	a0,a0,948 # 80006a90 <tickslock>
    800026e4:	0017879b          	addiw	a5,a5,1
    800026e8:	00f72023          	sw	a5,0(a4)
    800026ec:	00001097          	auipc	ra,0x1
    800026f0:	53c080e7          	jalr	1340(ra) # 80003c28 <release>
    800026f4:	f65ff06f          	j	80002658 <kerneltrap+0x8c>
    800026f8:	00001097          	auipc	ra,0x1
    800026fc:	098080e7          	jalr	152(ra) # 80003790 <uartintr>
    80002700:	fa5ff06f          	j	800026a4 <kerneltrap+0xd8>
    80002704:	00003517          	auipc	a0,0x3
    80002708:	b1450513          	addi	a0,a0,-1260 # 80005218 <kvmincrease+0xc28>
    8000270c:	00000097          	auipc	ra,0x0
    80002710:	720080e7          	jalr	1824(ra) # 80002e2c <panic>

0000000080002714 <clockintr>:
    80002714:	fe010113          	addi	sp,sp,-32
    80002718:	00813823          	sd	s0,16(sp)
    8000271c:	00913423          	sd	s1,8(sp)
    80002720:	00113c23          	sd	ra,24(sp)
    80002724:	02010413          	addi	s0,sp,32
    80002728:	00004497          	auipc	s1,0x4
    8000272c:	36848493          	addi	s1,s1,872 # 80006a90 <tickslock>
    80002730:	00048513          	mv	a0,s1
    80002734:	00001097          	auipc	ra,0x1
    80002738:	428080e7          	jalr	1064(ra) # 80003b5c <acquire>
    8000273c:	00003717          	auipc	a4,0x3
    80002740:	23870713          	addi	a4,a4,568 # 80005974 <ticks>
    80002744:	00072783          	lw	a5,0(a4)
    80002748:	01013403          	ld	s0,16(sp)
    8000274c:	01813083          	ld	ra,24(sp)
    80002750:	00048513          	mv	a0,s1
    80002754:	0017879b          	addiw	a5,a5,1
    80002758:	00813483          	ld	s1,8(sp)
    8000275c:	00f72023          	sw	a5,0(a4)
    80002760:	02010113          	addi	sp,sp,32
    80002764:	00001317          	auipc	t1,0x1
    80002768:	4c430067          	jr	1220(t1) # 80003c28 <release>

000000008000276c <devintr>:
    8000276c:	142027f3          	csrr	a5,scause
    80002770:	00000513          	li	a0,0
    80002774:	0007c463          	bltz	a5,8000277c <devintr+0x10>
    80002778:	00008067          	ret
    8000277c:	fe010113          	addi	sp,sp,-32
    80002780:	00813823          	sd	s0,16(sp)
    80002784:	00113c23          	sd	ra,24(sp)
    80002788:	00913423          	sd	s1,8(sp)
    8000278c:	02010413          	addi	s0,sp,32
    80002790:	0ff7f713          	andi	a4,a5,255
    80002794:	00900693          	li	a3,9
    80002798:	04d70c63          	beq	a4,a3,800027f0 <devintr+0x84>
    8000279c:	fff00713          	li	a4,-1
    800027a0:	03f71713          	slli	a4,a4,0x3f
    800027a4:	00170713          	addi	a4,a4,1
    800027a8:	00e78c63          	beq	a5,a4,800027c0 <devintr+0x54>
    800027ac:	01813083          	ld	ra,24(sp)
    800027b0:	01013403          	ld	s0,16(sp)
    800027b4:	00813483          	ld	s1,8(sp)
    800027b8:	02010113          	addi	sp,sp,32
    800027bc:	00008067          	ret
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	c8c080e7          	jalr	-884(ra) # 8000244c <cpuid>
    800027c8:	06050663          	beqz	a0,80002834 <devintr+0xc8>
    800027cc:	144027f3          	csrr	a5,sip
    800027d0:	ffd7f793          	andi	a5,a5,-3
    800027d4:	14479073          	csrw	sip,a5
    800027d8:	01813083          	ld	ra,24(sp)
    800027dc:	01013403          	ld	s0,16(sp)
    800027e0:	00813483          	ld	s1,8(sp)
    800027e4:	00200513          	li	a0,2
    800027e8:	02010113          	addi	sp,sp,32
    800027ec:	00008067          	ret
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	254080e7          	jalr	596(ra) # 80002a44 <plic_claim>
    800027f8:	00a00793          	li	a5,10
    800027fc:	00050493          	mv	s1,a0
    80002800:	06f50663          	beq	a0,a5,8000286c <devintr+0x100>
    80002804:	00100513          	li	a0,1
    80002808:	fa0482e3          	beqz	s1,800027ac <devintr+0x40>
    8000280c:	00048593          	mv	a1,s1
    80002810:	00003517          	auipc	a0,0x3
    80002814:	a2850513          	addi	a0,a0,-1496 # 80005238 <kvmincrease+0xc48>
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	670080e7          	jalr	1648(ra) # 80002e88 <__printf>
    80002820:	00048513          	mv	a0,s1
    80002824:	00000097          	auipc	ra,0x0
    80002828:	258080e7          	jalr	600(ra) # 80002a7c <plic_complete>
    8000282c:	00100513          	li	a0,1
    80002830:	f7dff06f          	j	800027ac <devintr+0x40>
    80002834:	00004517          	auipc	a0,0x4
    80002838:	25c50513          	addi	a0,a0,604 # 80006a90 <tickslock>
    8000283c:	00001097          	auipc	ra,0x1
    80002840:	320080e7          	jalr	800(ra) # 80003b5c <acquire>
    80002844:	00003717          	auipc	a4,0x3
    80002848:	13070713          	addi	a4,a4,304 # 80005974 <ticks>
    8000284c:	00072783          	lw	a5,0(a4)
    80002850:	00004517          	auipc	a0,0x4
    80002854:	24050513          	addi	a0,a0,576 # 80006a90 <tickslock>
    80002858:	0017879b          	addiw	a5,a5,1
    8000285c:	00f72023          	sw	a5,0(a4)
    80002860:	00001097          	auipc	ra,0x1
    80002864:	3c8080e7          	jalr	968(ra) # 80003c28 <release>
    80002868:	f65ff06f          	j	800027cc <devintr+0x60>
    8000286c:	00001097          	auipc	ra,0x1
    80002870:	f24080e7          	jalr	-220(ra) # 80003790 <uartintr>
    80002874:	fadff06f          	j	80002820 <devintr+0xb4>
	...

0000000080002880 <kernelvec>:
    80002880:	f0010113          	addi	sp,sp,-256
    80002884:	00113023          	sd	ra,0(sp)
    80002888:	00213423          	sd	sp,8(sp)
    8000288c:	00313823          	sd	gp,16(sp)
    80002890:	00413c23          	sd	tp,24(sp)
    80002894:	02513023          	sd	t0,32(sp)
    80002898:	02613423          	sd	t1,40(sp)
    8000289c:	02713823          	sd	t2,48(sp)
    800028a0:	02813c23          	sd	s0,56(sp)
    800028a4:	04913023          	sd	s1,64(sp)
    800028a8:	04a13423          	sd	a0,72(sp)
    800028ac:	04b13823          	sd	a1,80(sp)
    800028b0:	04c13c23          	sd	a2,88(sp)
    800028b4:	06d13023          	sd	a3,96(sp)
    800028b8:	06e13423          	sd	a4,104(sp)
    800028bc:	06f13823          	sd	a5,112(sp)
    800028c0:	07013c23          	sd	a6,120(sp)
    800028c4:	09113023          	sd	a7,128(sp)
    800028c8:	09213423          	sd	s2,136(sp)
    800028cc:	09313823          	sd	s3,144(sp)
    800028d0:	09413c23          	sd	s4,152(sp)
    800028d4:	0b513023          	sd	s5,160(sp)
    800028d8:	0b613423          	sd	s6,168(sp)
    800028dc:	0b713823          	sd	s7,176(sp)
    800028e0:	0b813c23          	sd	s8,184(sp)
    800028e4:	0d913023          	sd	s9,192(sp)
    800028e8:	0da13423          	sd	s10,200(sp)
    800028ec:	0db13823          	sd	s11,208(sp)
    800028f0:	0dc13c23          	sd	t3,216(sp)
    800028f4:	0fd13023          	sd	t4,224(sp)
    800028f8:	0fe13423          	sd	t5,232(sp)
    800028fc:	0ff13823          	sd	t6,240(sp)
    80002900:	ccdff0ef          	jal	ra,800025cc <kerneltrap>
    80002904:	00013083          	ld	ra,0(sp)
    80002908:	00813103          	ld	sp,8(sp)
    8000290c:	01013183          	ld	gp,16(sp)
    80002910:	02013283          	ld	t0,32(sp)
    80002914:	02813303          	ld	t1,40(sp)
    80002918:	03013383          	ld	t2,48(sp)
    8000291c:	03813403          	ld	s0,56(sp)
    80002920:	04013483          	ld	s1,64(sp)
    80002924:	04813503          	ld	a0,72(sp)
    80002928:	05013583          	ld	a1,80(sp)
    8000292c:	05813603          	ld	a2,88(sp)
    80002930:	06013683          	ld	a3,96(sp)
    80002934:	06813703          	ld	a4,104(sp)
    80002938:	07013783          	ld	a5,112(sp)
    8000293c:	07813803          	ld	a6,120(sp)
    80002940:	08013883          	ld	a7,128(sp)
    80002944:	08813903          	ld	s2,136(sp)
    80002948:	09013983          	ld	s3,144(sp)
    8000294c:	09813a03          	ld	s4,152(sp)
    80002950:	0a013a83          	ld	s5,160(sp)
    80002954:	0a813b03          	ld	s6,168(sp)
    80002958:	0b013b83          	ld	s7,176(sp)
    8000295c:	0b813c03          	ld	s8,184(sp)
    80002960:	0c013c83          	ld	s9,192(sp)
    80002964:	0c813d03          	ld	s10,200(sp)
    80002968:	0d013d83          	ld	s11,208(sp)
    8000296c:	0d813e03          	ld	t3,216(sp)
    80002970:	0e013e83          	ld	t4,224(sp)
    80002974:	0e813f03          	ld	t5,232(sp)
    80002978:	0f013f83          	ld	t6,240(sp)
    8000297c:	10010113          	addi	sp,sp,256
    80002980:	10200073          	sret
    80002984:	00000013          	nop
    80002988:	00000013          	nop
    8000298c:	00000013          	nop

0000000080002990 <timervec>:
    80002990:	34051573          	csrrw	a0,mscratch,a0
    80002994:	00b53023          	sd	a1,0(a0)
    80002998:	00c53423          	sd	a2,8(a0)
    8000299c:	00d53823          	sd	a3,16(a0)
    800029a0:	01853583          	ld	a1,24(a0)
    800029a4:	02053603          	ld	a2,32(a0)
    800029a8:	0005b683          	ld	a3,0(a1)
    800029ac:	00c686b3          	add	a3,a3,a2
    800029b0:	00d5b023          	sd	a3,0(a1)
    800029b4:	00200593          	li	a1,2
    800029b8:	14459073          	csrw	sip,a1
    800029bc:	01053683          	ld	a3,16(a0)
    800029c0:	00853603          	ld	a2,8(a0)
    800029c4:	00053583          	ld	a1,0(a0)
    800029c8:	34051573          	csrrw	a0,mscratch,a0
    800029cc:	30200073          	mret

00000000800029d0 <plicinit>:
    800029d0:	ff010113          	addi	sp,sp,-16
    800029d4:	00813423          	sd	s0,8(sp)
    800029d8:	01010413          	addi	s0,sp,16
    800029dc:	00813403          	ld	s0,8(sp)
    800029e0:	0c0007b7          	lui	a5,0xc000
    800029e4:	00100713          	li	a4,1
    800029e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800029ec:	00e7a223          	sw	a4,4(a5)
    800029f0:	01010113          	addi	sp,sp,16
    800029f4:	00008067          	ret

00000000800029f8 <plicinithart>:
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00813023          	sd	s0,0(sp)
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	01010413          	addi	s0,sp,16
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	a44080e7          	jalr	-1468(ra) # 8000244c <cpuid>
    80002a10:	0085171b          	slliw	a4,a0,0x8
    80002a14:	0c0027b7          	lui	a5,0xc002
    80002a18:	00e787b3          	add	a5,a5,a4
    80002a1c:	40200713          	li	a4,1026
    80002a20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002a24:	00813083          	ld	ra,8(sp)
    80002a28:	00013403          	ld	s0,0(sp)
    80002a2c:	00d5151b          	slliw	a0,a0,0xd
    80002a30:	0c2017b7          	lui	a5,0xc201
    80002a34:	00a78533          	add	a0,a5,a0
    80002a38:	00052023          	sw	zero,0(a0)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret

0000000080002a44 <plic_claim>:
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00813023          	sd	s0,0(sp)
    80002a4c:	00113423          	sd	ra,8(sp)
    80002a50:	01010413          	addi	s0,sp,16
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	9f8080e7          	jalr	-1544(ra) # 8000244c <cpuid>
    80002a5c:	00813083          	ld	ra,8(sp)
    80002a60:	00013403          	ld	s0,0(sp)
    80002a64:	00d5151b          	slliw	a0,a0,0xd
    80002a68:	0c2017b7          	lui	a5,0xc201
    80002a6c:	00a78533          	add	a0,a5,a0
    80002a70:	00452503          	lw	a0,4(a0)
    80002a74:	01010113          	addi	sp,sp,16
    80002a78:	00008067          	ret

0000000080002a7c <plic_complete>:
    80002a7c:	fe010113          	addi	sp,sp,-32
    80002a80:	00813823          	sd	s0,16(sp)
    80002a84:	00913423          	sd	s1,8(sp)
    80002a88:	00113c23          	sd	ra,24(sp)
    80002a8c:	02010413          	addi	s0,sp,32
    80002a90:	00050493          	mv	s1,a0
    80002a94:	00000097          	auipc	ra,0x0
    80002a98:	9b8080e7          	jalr	-1608(ra) # 8000244c <cpuid>
    80002a9c:	01813083          	ld	ra,24(sp)
    80002aa0:	01013403          	ld	s0,16(sp)
    80002aa4:	00d5179b          	slliw	a5,a0,0xd
    80002aa8:	0c201737          	lui	a4,0xc201
    80002aac:	00f707b3          	add	a5,a4,a5
    80002ab0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002ab4:	00813483          	ld	s1,8(sp)
    80002ab8:	02010113          	addi	sp,sp,32
    80002abc:	00008067          	ret

0000000080002ac0 <consolewrite>:
    80002ac0:	fb010113          	addi	sp,sp,-80
    80002ac4:	04813023          	sd	s0,64(sp)
    80002ac8:	04113423          	sd	ra,72(sp)
    80002acc:	02913c23          	sd	s1,56(sp)
    80002ad0:	03213823          	sd	s2,48(sp)
    80002ad4:	03313423          	sd	s3,40(sp)
    80002ad8:	03413023          	sd	s4,32(sp)
    80002adc:	01513c23          	sd	s5,24(sp)
    80002ae0:	05010413          	addi	s0,sp,80
    80002ae4:	06c05c63          	blez	a2,80002b5c <consolewrite+0x9c>
    80002ae8:	00060993          	mv	s3,a2
    80002aec:	00050a13          	mv	s4,a0
    80002af0:	00058493          	mv	s1,a1
    80002af4:	00000913          	li	s2,0
    80002af8:	fff00a93          	li	s5,-1
    80002afc:	01c0006f          	j	80002b18 <consolewrite+0x58>
    80002b00:	fbf44503          	lbu	a0,-65(s0)
    80002b04:	0019091b          	addiw	s2,s2,1
    80002b08:	00148493          	addi	s1,s1,1
    80002b0c:	00001097          	auipc	ra,0x1
    80002b10:	a9c080e7          	jalr	-1380(ra) # 800035a8 <uartputc>
    80002b14:	03298063          	beq	s3,s2,80002b34 <consolewrite+0x74>
    80002b18:	00048613          	mv	a2,s1
    80002b1c:	00100693          	li	a3,1
    80002b20:	000a0593          	mv	a1,s4
    80002b24:	fbf40513          	addi	a0,s0,-65
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	9dc080e7          	jalr	-1572(ra) # 80002504 <either_copyin>
    80002b30:	fd5518e3          	bne	a0,s5,80002b00 <consolewrite+0x40>
    80002b34:	04813083          	ld	ra,72(sp)
    80002b38:	04013403          	ld	s0,64(sp)
    80002b3c:	03813483          	ld	s1,56(sp)
    80002b40:	02813983          	ld	s3,40(sp)
    80002b44:	02013a03          	ld	s4,32(sp)
    80002b48:	01813a83          	ld	s5,24(sp)
    80002b4c:	00090513          	mv	a0,s2
    80002b50:	03013903          	ld	s2,48(sp)
    80002b54:	05010113          	addi	sp,sp,80
    80002b58:	00008067          	ret
    80002b5c:	00000913          	li	s2,0
    80002b60:	fd5ff06f          	j	80002b34 <consolewrite+0x74>

0000000080002b64 <consoleread>:
    80002b64:	f9010113          	addi	sp,sp,-112
    80002b68:	06813023          	sd	s0,96(sp)
    80002b6c:	04913c23          	sd	s1,88(sp)
    80002b70:	05213823          	sd	s2,80(sp)
    80002b74:	05313423          	sd	s3,72(sp)
    80002b78:	05413023          	sd	s4,64(sp)
    80002b7c:	03513c23          	sd	s5,56(sp)
    80002b80:	03613823          	sd	s6,48(sp)
    80002b84:	03713423          	sd	s7,40(sp)
    80002b88:	03813023          	sd	s8,32(sp)
    80002b8c:	06113423          	sd	ra,104(sp)
    80002b90:	01913c23          	sd	s9,24(sp)
    80002b94:	07010413          	addi	s0,sp,112
    80002b98:	00060b93          	mv	s7,a2
    80002b9c:	00050913          	mv	s2,a0
    80002ba0:	00058c13          	mv	s8,a1
    80002ba4:	00060b1b          	sext.w	s6,a2
    80002ba8:	00004497          	auipc	s1,0x4
    80002bac:	f1048493          	addi	s1,s1,-240 # 80006ab8 <cons>
    80002bb0:	00400993          	li	s3,4
    80002bb4:	fff00a13          	li	s4,-1
    80002bb8:	00a00a93          	li	s5,10
    80002bbc:	05705e63          	blez	s7,80002c18 <consoleread+0xb4>
    80002bc0:	09c4a703          	lw	a4,156(s1)
    80002bc4:	0984a783          	lw	a5,152(s1)
    80002bc8:	0007071b          	sext.w	a4,a4
    80002bcc:	08e78463          	beq	a5,a4,80002c54 <consoleread+0xf0>
    80002bd0:	07f7f713          	andi	a4,a5,127
    80002bd4:	00e48733          	add	a4,s1,a4
    80002bd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80002bdc:	0017869b          	addiw	a3,a5,1
    80002be0:	08d4ac23          	sw	a3,152(s1)
    80002be4:	00070c9b          	sext.w	s9,a4
    80002be8:	0b370663          	beq	a4,s3,80002c94 <consoleread+0x130>
    80002bec:	00100693          	li	a3,1
    80002bf0:	f9f40613          	addi	a2,s0,-97
    80002bf4:	000c0593          	mv	a1,s8
    80002bf8:	00090513          	mv	a0,s2
    80002bfc:	f8e40fa3          	sb	a4,-97(s0)
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	8b8080e7          	jalr	-1864(ra) # 800024b8 <either_copyout>
    80002c08:	01450863          	beq	a0,s4,80002c18 <consoleread+0xb4>
    80002c0c:	001c0c13          	addi	s8,s8,1
    80002c10:	fffb8b9b          	addiw	s7,s7,-1
    80002c14:	fb5c94e3          	bne	s9,s5,80002bbc <consoleread+0x58>
    80002c18:	000b851b          	sext.w	a0,s7
    80002c1c:	06813083          	ld	ra,104(sp)
    80002c20:	06013403          	ld	s0,96(sp)
    80002c24:	05813483          	ld	s1,88(sp)
    80002c28:	05013903          	ld	s2,80(sp)
    80002c2c:	04813983          	ld	s3,72(sp)
    80002c30:	04013a03          	ld	s4,64(sp)
    80002c34:	03813a83          	ld	s5,56(sp)
    80002c38:	02813b83          	ld	s7,40(sp)
    80002c3c:	02013c03          	ld	s8,32(sp)
    80002c40:	01813c83          	ld	s9,24(sp)
    80002c44:	40ab053b          	subw	a0,s6,a0
    80002c48:	03013b03          	ld	s6,48(sp)
    80002c4c:	07010113          	addi	sp,sp,112
    80002c50:	00008067          	ret
    80002c54:	00001097          	auipc	ra,0x1
    80002c58:	1d8080e7          	jalr	472(ra) # 80003e2c <push_on>
    80002c5c:	0984a703          	lw	a4,152(s1)
    80002c60:	09c4a783          	lw	a5,156(s1)
    80002c64:	0007879b          	sext.w	a5,a5
    80002c68:	fef70ce3          	beq	a4,a5,80002c60 <consoleread+0xfc>
    80002c6c:	00001097          	auipc	ra,0x1
    80002c70:	234080e7          	jalr	564(ra) # 80003ea0 <pop_on>
    80002c74:	0984a783          	lw	a5,152(s1)
    80002c78:	07f7f713          	andi	a4,a5,127
    80002c7c:	00e48733          	add	a4,s1,a4
    80002c80:	01874703          	lbu	a4,24(a4)
    80002c84:	0017869b          	addiw	a3,a5,1
    80002c88:	08d4ac23          	sw	a3,152(s1)
    80002c8c:	00070c9b          	sext.w	s9,a4
    80002c90:	f5371ee3          	bne	a4,s3,80002bec <consoleread+0x88>
    80002c94:	000b851b          	sext.w	a0,s7
    80002c98:	f96bf2e3          	bgeu	s7,s6,80002c1c <consoleread+0xb8>
    80002c9c:	08f4ac23          	sw	a5,152(s1)
    80002ca0:	f7dff06f          	j	80002c1c <consoleread+0xb8>

0000000080002ca4 <consputc>:
    80002ca4:	10000793          	li	a5,256
    80002ca8:	00f50663          	beq	a0,a5,80002cb4 <consputc+0x10>
    80002cac:	00001317          	auipc	t1,0x1
    80002cb0:	9f430067          	jr	-1548(t1) # 800036a0 <uartputc_sync>
    80002cb4:	ff010113          	addi	sp,sp,-16
    80002cb8:	00113423          	sd	ra,8(sp)
    80002cbc:	00813023          	sd	s0,0(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    80002cc4:	00800513          	li	a0,8
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	9d8080e7          	jalr	-1576(ra) # 800036a0 <uartputc_sync>
    80002cd0:	02000513          	li	a0,32
    80002cd4:	00001097          	auipc	ra,0x1
    80002cd8:	9cc080e7          	jalr	-1588(ra) # 800036a0 <uartputc_sync>
    80002cdc:	00013403          	ld	s0,0(sp)
    80002ce0:	00813083          	ld	ra,8(sp)
    80002ce4:	00800513          	li	a0,8
    80002ce8:	01010113          	addi	sp,sp,16
    80002cec:	00001317          	auipc	t1,0x1
    80002cf0:	9b430067          	jr	-1612(t1) # 800036a0 <uartputc_sync>

0000000080002cf4 <consoleintr>:
    80002cf4:	fe010113          	addi	sp,sp,-32
    80002cf8:	00813823          	sd	s0,16(sp)
    80002cfc:	00913423          	sd	s1,8(sp)
    80002d00:	01213023          	sd	s2,0(sp)
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	02010413          	addi	s0,sp,32
    80002d0c:	00004917          	auipc	s2,0x4
    80002d10:	dac90913          	addi	s2,s2,-596 # 80006ab8 <cons>
    80002d14:	00050493          	mv	s1,a0
    80002d18:	00090513          	mv	a0,s2
    80002d1c:	00001097          	auipc	ra,0x1
    80002d20:	e40080e7          	jalr	-448(ra) # 80003b5c <acquire>
    80002d24:	02048c63          	beqz	s1,80002d5c <consoleintr+0x68>
    80002d28:	0a092783          	lw	a5,160(s2)
    80002d2c:	09892703          	lw	a4,152(s2)
    80002d30:	07f00693          	li	a3,127
    80002d34:	40e7873b          	subw	a4,a5,a4
    80002d38:	02e6e263          	bltu	a3,a4,80002d5c <consoleintr+0x68>
    80002d3c:	00d00713          	li	a4,13
    80002d40:	04e48063          	beq	s1,a4,80002d80 <consoleintr+0x8c>
    80002d44:	07f7f713          	andi	a4,a5,127
    80002d48:	00e90733          	add	a4,s2,a4
    80002d4c:	0017879b          	addiw	a5,a5,1
    80002d50:	0af92023          	sw	a5,160(s2)
    80002d54:	00970c23          	sb	s1,24(a4)
    80002d58:	08f92e23          	sw	a5,156(s2)
    80002d5c:	01013403          	ld	s0,16(sp)
    80002d60:	01813083          	ld	ra,24(sp)
    80002d64:	00813483          	ld	s1,8(sp)
    80002d68:	00013903          	ld	s2,0(sp)
    80002d6c:	00004517          	auipc	a0,0x4
    80002d70:	d4c50513          	addi	a0,a0,-692 # 80006ab8 <cons>
    80002d74:	02010113          	addi	sp,sp,32
    80002d78:	00001317          	auipc	t1,0x1
    80002d7c:	eb030067          	jr	-336(t1) # 80003c28 <release>
    80002d80:	00a00493          	li	s1,10
    80002d84:	fc1ff06f          	j	80002d44 <consoleintr+0x50>

0000000080002d88 <consoleinit>:
    80002d88:	fe010113          	addi	sp,sp,-32
    80002d8c:	00113c23          	sd	ra,24(sp)
    80002d90:	00813823          	sd	s0,16(sp)
    80002d94:	00913423          	sd	s1,8(sp)
    80002d98:	02010413          	addi	s0,sp,32
    80002d9c:	00004497          	auipc	s1,0x4
    80002da0:	d1c48493          	addi	s1,s1,-740 # 80006ab8 <cons>
    80002da4:	00048513          	mv	a0,s1
    80002da8:	00002597          	auipc	a1,0x2
    80002dac:	4e858593          	addi	a1,a1,1256 # 80005290 <kvmincrease+0xca0>
    80002db0:	00001097          	auipc	ra,0x1
    80002db4:	d88080e7          	jalr	-632(ra) # 80003b38 <initlock>
    80002db8:	00000097          	auipc	ra,0x0
    80002dbc:	7ac080e7          	jalr	1964(ra) # 80003564 <uartinit>
    80002dc0:	01813083          	ld	ra,24(sp)
    80002dc4:	01013403          	ld	s0,16(sp)
    80002dc8:	00000797          	auipc	a5,0x0
    80002dcc:	d9c78793          	addi	a5,a5,-612 # 80002b64 <consoleread>
    80002dd0:	0af4bc23          	sd	a5,184(s1)
    80002dd4:	00000797          	auipc	a5,0x0
    80002dd8:	cec78793          	addi	a5,a5,-788 # 80002ac0 <consolewrite>
    80002ddc:	0cf4b023          	sd	a5,192(s1)
    80002de0:	00813483          	ld	s1,8(sp)
    80002de4:	02010113          	addi	sp,sp,32
    80002de8:	00008067          	ret

0000000080002dec <console_read>:
    80002dec:	ff010113          	addi	sp,sp,-16
    80002df0:	00813423          	sd	s0,8(sp)
    80002df4:	01010413          	addi	s0,sp,16
    80002df8:	00813403          	ld	s0,8(sp)
    80002dfc:	00004317          	auipc	t1,0x4
    80002e00:	d7433303          	ld	t1,-652(t1) # 80006b70 <devsw+0x10>
    80002e04:	01010113          	addi	sp,sp,16
    80002e08:	00030067          	jr	t1

0000000080002e0c <console_write>:
    80002e0c:	ff010113          	addi	sp,sp,-16
    80002e10:	00813423          	sd	s0,8(sp)
    80002e14:	01010413          	addi	s0,sp,16
    80002e18:	00813403          	ld	s0,8(sp)
    80002e1c:	00004317          	auipc	t1,0x4
    80002e20:	d5c33303          	ld	t1,-676(t1) # 80006b78 <devsw+0x18>
    80002e24:	01010113          	addi	sp,sp,16
    80002e28:	00030067          	jr	t1

0000000080002e2c <panic>:
    80002e2c:	fe010113          	addi	sp,sp,-32
    80002e30:	00113c23          	sd	ra,24(sp)
    80002e34:	00813823          	sd	s0,16(sp)
    80002e38:	00913423          	sd	s1,8(sp)
    80002e3c:	02010413          	addi	s0,sp,32
    80002e40:	00050493          	mv	s1,a0
    80002e44:	00002517          	auipc	a0,0x2
    80002e48:	45450513          	addi	a0,a0,1108 # 80005298 <kvmincrease+0xca8>
    80002e4c:	00004797          	auipc	a5,0x4
    80002e50:	dc07a623          	sw	zero,-564(a5) # 80006c18 <pr+0x18>
    80002e54:	00000097          	auipc	ra,0x0
    80002e58:	034080e7          	jalr	52(ra) # 80002e88 <__printf>
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	00000097          	auipc	ra,0x0
    80002e64:	028080e7          	jalr	40(ra) # 80002e88 <__printf>
    80002e68:	00002517          	auipc	a0,0x2
    80002e6c:	2f850513          	addi	a0,a0,760 # 80005160 <kvmincrease+0xb70>
    80002e70:	00000097          	auipc	ra,0x0
    80002e74:	018080e7          	jalr	24(ra) # 80002e88 <__printf>
    80002e78:	00100793          	li	a5,1
    80002e7c:	00003717          	auipc	a4,0x3
    80002e80:	aef72e23          	sw	a5,-1284(a4) # 80005978 <panicked>
    80002e84:	0000006f          	j	80002e84 <panic+0x58>

0000000080002e88 <__printf>:
    80002e88:	f3010113          	addi	sp,sp,-208
    80002e8c:	08813023          	sd	s0,128(sp)
    80002e90:	07313423          	sd	s3,104(sp)
    80002e94:	09010413          	addi	s0,sp,144
    80002e98:	05813023          	sd	s8,64(sp)
    80002e9c:	08113423          	sd	ra,136(sp)
    80002ea0:	06913c23          	sd	s1,120(sp)
    80002ea4:	07213823          	sd	s2,112(sp)
    80002ea8:	07413023          	sd	s4,96(sp)
    80002eac:	05513c23          	sd	s5,88(sp)
    80002eb0:	05613823          	sd	s6,80(sp)
    80002eb4:	05713423          	sd	s7,72(sp)
    80002eb8:	03913c23          	sd	s9,56(sp)
    80002ebc:	03a13823          	sd	s10,48(sp)
    80002ec0:	03b13423          	sd	s11,40(sp)
    80002ec4:	00004317          	auipc	t1,0x4
    80002ec8:	d3c30313          	addi	t1,t1,-708 # 80006c00 <pr>
    80002ecc:	01832c03          	lw	s8,24(t1)
    80002ed0:	00b43423          	sd	a1,8(s0)
    80002ed4:	00c43823          	sd	a2,16(s0)
    80002ed8:	00d43c23          	sd	a3,24(s0)
    80002edc:	02e43023          	sd	a4,32(s0)
    80002ee0:	02f43423          	sd	a5,40(s0)
    80002ee4:	03043823          	sd	a6,48(s0)
    80002ee8:	03143c23          	sd	a7,56(s0)
    80002eec:	00050993          	mv	s3,a0
    80002ef0:	4a0c1663          	bnez	s8,8000339c <__printf+0x514>
    80002ef4:	60098c63          	beqz	s3,8000350c <__printf+0x684>
    80002ef8:	0009c503          	lbu	a0,0(s3)
    80002efc:	00840793          	addi	a5,s0,8
    80002f00:	f6f43c23          	sd	a5,-136(s0)
    80002f04:	00000493          	li	s1,0
    80002f08:	22050063          	beqz	a0,80003128 <__printf+0x2a0>
    80002f0c:	00002a37          	lui	s4,0x2
    80002f10:	00018ab7          	lui	s5,0x18
    80002f14:	000f4b37          	lui	s6,0xf4
    80002f18:	00989bb7          	lui	s7,0x989
    80002f1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002f20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002f24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002f28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80002f2c:	00148c9b          	addiw	s9,s1,1
    80002f30:	02500793          	li	a5,37
    80002f34:	01998933          	add	s2,s3,s9
    80002f38:	38f51263          	bne	a0,a5,800032bc <__printf+0x434>
    80002f3c:	00094783          	lbu	a5,0(s2)
    80002f40:	00078c9b          	sext.w	s9,a5
    80002f44:	1e078263          	beqz	a5,80003128 <__printf+0x2a0>
    80002f48:	0024849b          	addiw	s1,s1,2
    80002f4c:	07000713          	li	a4,112
    80002f50:	00998933          	add	s2,s3,s1
    80002f54:	38e78a63          	beq	a5,a4,800032e8 <__printf+0x460>
    80002f58:	20f76863          	bltu	a4,a5,80003168 <__printf+0x2e0>
    80002f5c:	42a78863          	beq	a5,a0,8000338c <__printf+0x504>
    80002f60:	06400713          	li	a4,100
    80002f64:	40e79663          	bne	a5,a4,80003370 <__printf+0x4e8>
    80002f68:	f7843783          	ld	a5,-136(s0)
    80002f6c:	0007a603          	lw	a2,0(a5)
    80002f70:	00878793          	addi	a5,a5,8
    80002f74:	f6f43c23          	sd	a5,-136(s0)
    80002f78:	42064a63          	bltz	a2,800033ac <__printf+0x524>
    80002f7c:	00a00713          	li	a4,10
    80002f80:	02e677bb          	remuw	a5,a2,a4
    80002f84:	00002d97          	auipc	s11,0x2
    80002f88:	33cd8d93          	addi	s11,s11,828 # 800052c0 <digits>
    80002f8c:	00900593          	li	a1,9
    80002f90:	0006051b          	sext.w	a0,a2
    80002f94:	00000c93          	li	s9,0
    80002f98:	02079793          	slli	a5,a5,0x20
    80002f9c:	0207d793          	srli	a5,a5,0x20
    80002fa0:	00fd87b3          	add	a5,s11,a5
    80002fa4:	0007c783          	lbu	a5,0(a5)
    80002fa8:	02e656bb          	divuw	a3,a2,a4
    80002fac:	f8f40023          	sb	a5,-128(s0)
    80002fb0:	14c5d863          	bge	a1,a2,80003100 <__printf+0x278>
    80002fb4:	06300593          	li	a1,99
    80002fb8:	00100c93          	li	s9,1
    80002fbc:	02e6f7bb          	remuw	a5,a3,a4
    80002fc0:	02079793          	slli	a5,a5,0x20
    80002fc4:	0207d793          	srli	a5,a5,0x20
    80002fc8:	00fd87b3          	add	a5,s11,a5
    80002fcc:	0007c783          	lbu	a5,0(a5)
    80002fd0:	02e6d73b          	divuw	a4,a3,a4
    80002fd4:	f8f400a3          	sb	a5,-127(s0)
    80002fd8:	12a5f463          	bgeu	a1,a0,80003100 <__printf+0x278>
    80002fdc:	00a00693          	li	a3,10
    80002fe0:	00900593          	li	a1,9
    80002fe4:	02d777bb          	remuw	a5,a4,a3
    80002fe8:	02079793          	slli	a5,a5,0x20
    80002fec:	0207d793          	srli	a5,a5,0x20
    80002ff0:	00fd87b3          	add	a5,s11,a5
    80002ff4:	0007c503          	lbu	a0,0(a5)
    80002ff8:	02d757bb          	divuw	a5,a4,a3
    80002ffc:	f8a40123          	sb	a0,-126(s0)
    80003000:	48e5f263          	bgeu	a1,a4,80003484 <__printf+0x5fc>
    80003004:	06300513          	li	a0,99
    80003008:	02d7f5bb          	remuw	a1,a5,a3
    8000300c:	02059593          	slli	a1,a1,0x20
    80003010:	0205d593          	srli	a1,a1,0x20
    80003014:	00bd85b3          	add	a1,s11,a1
    80003018:	0005c583          	lbu	a1,0(a1)
    8000301c:	02d7d7bb          	divuw	a5,a5,a3
    80003020:	f8b401a3          	sb	a1,-125(s0)
    80003024:	48e57263          	bgeu	a0,a4,800034a8 <__printf+0x620>
    80003028:	3e700513          	li	a0,999
    8000302c:	02d7f5bb          	remuw	a1,a5,a3
    80003030:	02059593          	slli	a1,a1,0x20
    80003034:	0205d593          	srli	a1,a1,0x20
    80003038:	00bd85b3          	add	a1,s11,a1
    8000303c:	0005c583          	lbu	a1,0(a1)
    80003040:	02d7d7bb          	divuw	a5,a5,a3
    80003044:	f8b40223          	sb	a1,-124(s0)
    80003048:	46e57663          	bgeu	a0,a4,800034b4 <__printf+0x62c>
    8000304c:	02d7f5bb          	remuw	a1,a5,a3
    80003050:	02059593          	slli	a1,a1,0x20
    80003054:	0205d593          	srli	a1,a1,0x20
    80003058:	00bd85b3          	add	a1,s11,a1
    8000305c:	0005c583          	lbu	a1,0(a1)
    80003060:	02d7d7bb          	divuw	a5,a5,a3
    80003064:	f8b402a3          	sb	a1,-123(s0)
    80003068:	46ea7863          	bgeu	s4,a4,800034d8 <__printf+0x650>
    8000306c:	02d7f5bb          	remuw	a1,a5,a3
    80003070:	02059593          	slli	a1,a1,0x20
    80003074:	0205d593          	srli	a1,a1,0x20
    80003078:	00bd85b3          	add	a1,s11,a1
    8000307c:	0005c583          	lbu	a1,0(a1)
    80003080:	02d7d7bb          	divuw	a5,a5,a3
    80003084:	f8b40323          	sb	a1,-122(s0)
    80003088:	3eeaf863          	bgeu	s5,a4,80003478 <__printf+0x5f0>
    8000308c:	02d7f5bb          	remuw	a1,a5,a3
    80003090:	02059593          	slli	a1,a1,0x20
    80003094:	0205d593          	srli	a1,a1,0x20
    80003098:	00bd85b3          	add	a1,s11,a1
    8000309c:	0005c583          	lbu	a1,0(a1)
    800030a0:	02d7d7bb          	divuw	a5,a5,a3
    800030a4:	f8b403a3          	sb	a1,-121(s0)
    800030a8:	42eb7e63          	bgeu	s6,a4,800034e4 <__printf+0x65c>
    800030ac:	02d7f5bb          	remuw	a1,a5,a3
    800030b0:	02059593          	slli	a1,a1,0x20
    800030b4:	0205d593          	srli	a1,a1,0x20
    800030b8:	00bd85b3          	add	a1,s11,a1
    800030bc:	0005c583          	lbu	a1,0(a1)
    800030c0:	02d7d7bb          	divuw	a5,a5,a3
    800030c4:	f8b40423          	sb	a1,-120(s0)
    800030c8:	42ebfc63          	bgeu	s7,a4,80003500 <__printf+0x678>
    800030cc:	02079793          	slli	a5,a5,0x20
    800030d0:	0207d793          	srli	a5,a5,0x20
    800030d4:	00fd8db3          	add	s11,s11,a5
    800030d8:	000dc703          	lbu	a4,0(s11)
    800030dc:	00a00793          	li	a5,10
    800030e0:	00900c93          	li	s9,9
    800030e4:	f8e404a3          	sb	a4,-119(s0)
    800030e8:	00065c63          	bgez	a2,80003100 <__printf+0x278>
    800030ec:	f9040713          	addi	a4,s0,-112
    800030f0:	00f70733          	add	a4,a4,a5
    800030f4:	02d00693          	li	a3,45
    800030f8:	fed70823          	sb	a3,-16(a4)
    800030fc:	00078c93          	mv	s9,a5
    80003100:	f8040793          	addi	a5,s0,-128
    80003104:	01978cb3          	add	s9,a5,s9
    80003108:	f7f40d13          	addi	s10,s0,-129
    8000310c:	000cc503          	lbu	a0,0(s9)
    80003110:	fffc8c93          	addi	s9,s9,-1
    80003114:	00000097          	auipc	ra,0x0
    80003118:	b90080e7          	jalr	-1136(ra) # 80002ca4 <consputc>
    8000311c:	ffac98e3          	bne	s9,s10,8000310c <__printf+0x284>
    80003120:	00094503          	lbu	a0,0(s2)
    80003124:	e00514e3          	bnez	a0,80002f2c <__printf+0xa4>
    80003128:	1a0c1663          	bnez	s8,800032d4 <__printf+0x44c>
    8000312c:	08813083          	ld	ra,136(sp)
    80003130:	08013403          	ld	s0,128(sp)
    80003134:	07813483          	ld	s1,120(sp)
    80003138:	07013903          	ld	s2,112(sp)
    8000313c:	06813983          	ld	s3,104(sp)
    80003140:	06013a03          	ld	s4,96(sp)
    80003144:	05813a83          	ld	s5,88(sp)
    80003148:	05013b03          	ld	s6,80(sp)
    8000314c:	04813b83          	ld	s7,72(sp)
    80003150:	04013c03          	ld	s8,64(sp)
    80003154:	03813c83          	ld	s9,56(sp)
    80003158:	03013d03          	ld	s10,48(sp)
    8000315c:	02813d83          	ld	s11,40(sp)
    80003160:	0d010113          	addi	sp,sp,208
    80003164:	00008067          	ret
    80003168:	07300713          	li	a4,115
    8000316c:	1ce78a63          	beq	a5,a4,80003340 <__printf+0x4b8>
    80003170:	07800713          	li	a4,120
    80003174:	1ee79e63          	bne	a5,a4,80003370 <__printf+0x4e8>
    80003178:	f7843783          	ld	a5,-136(s0)
    8000317c:	0007a703          	lw	a4,0(a5)
    80003180:	00878793          	addi	a5,a5,8
    80003184:	f6f43c23          	sd	a5,-136(s0)
    80003188:	28074263          	bltz	a4,8000340c <__printf+0x584>
    8000318c:	00002d97          	auipc	s11,0x2
    80003190:	134d8d93          	addi	s11,s11,308 # 800052c0 <digits>
    80003194:	00f77793          	andi	a5,a4,15
    80003198:	00fd87b3          	add	a5,s11,a5
    8000319c:	0007c683          	lbu	a3,0(a5)
    800031a0:	00f00613          	li	a2,15
    800031a4:	0007079b          	sext.w	a5,a4
    800031a8:	f8d40023          	sb	a3,-128(s0)
    800031ac:	0047559b          	srliw	a1,a4,0x4
    800031b0:	0047569b          	srliw	a3,a4,0x4
    800031b4:	00000c93          	li	s9,0
    800031b8:	0ee65063          	bge	a2,a4,80003298 <__printf+0x410>
    800031bc:	00f6f693          	andi	a3,a3,15
    800031c0:	00dd86b3          	add	a3,s11,a3
    800031c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800031c8:	0087d79b          	srliw	a5,a5,0x8
    800031cc:	00100c93          	li	s9,1
    800031d0:	f8d400a3          	sb	a3,-127(s0)
    800031d4:	0cb67263          	bgeu	a2,a1,80003298 <__printf+0x410>
    800031d8:	00f7f693          	andi	a3,a5,15
    800031dc:	00dd86b3          	add	a3,s11,a3
    800031e0:	0006c583          	lbu	a1,0(a3)
    800031e4:	00f00613          	li	a2,15
    800031e8:	0047d69b          	srliw	a3,a5,0x4
    800031ec:	f8b40123          	sb	a1,-126(s0)
    800031f0:	0047d593          	srli	a1,a5,0x4
    800031f4:	28f67e63          	bgeu	a2,a5,80003490 <__printf+0x608>
    800031f8:	00f6f693          	andi	a3,a3,15
    800031fc:	00dd86b3          	add	a3,s11,a3
    80003200:	0006c503          	lbu	a0,0(a3)
    80003204:	0087d813          	srli	a6,a5,0x8
    80003208:	0087d69b          	srliw	a3,a5,0x8
    8000320c:	f8a401a3          	sb	a0,-125(s0)
    80003210:	28b67663          	bgeu	a2,a1,8000349c <__printf+0x614>
    80003214:	00f6f693          	andi	a3,a3,15
    80003218:	00dd86b3          	add	a3,s11,a3
    8000321c:	0006c583          	lbu	a1,0(a3)
    80003220:	00c7d513          	srli	a0,a5,0xc
    80003224:	00c7d69b          	srliw	a3,a5,0xc
    80003228:	f8b40223          	sb	a1,-124(s0)
    8000322c:	29067a63          	bgeu	a2,a6,800034c0 <__printf+0x638>
    80003230:	00f6f693          	andi	a3,a3,15
    80003234:	00dd86b3          	add	a3,s11,a3
    80003238:	0006c583          	lbu	a1,0(a3)
    8000323c:	0107d813          	srli	a6,a5,0x10
    80003240:	0107d69b          	srliw	a3,a5,0x10
    80003244:	f8b402a3          	sb	a1,-123(s0)
    80003248:	28a67263          	bgeu	a2,a0,800034cc <__printf+0x644>
    8000324c:	00f6f693          	andi	a3,a3,15
    80003250:	00dd86b3          	add	a3,s11,a3
    80003254:	0006c683          	lbu	a3,0(a3)
    80003258:	0147d79b          	srliw	a5,a5,0x14
    8000325c:	f8d40323          	sb	a3,-122(s0)
    80003260:	21067663          	bgeu	a2,a6,8000346c <__printf+0x5e4>
    80003264:	02079793          	slli	a5,a5,0x20
    80003268:	0207d793          	srli	a5,a5,0x20
    8000326c:	00fd8db3          	add	s11,s11,a5
    80003270:	000dc683          	lbu	a3,0(s11)
    80003274:	00800793          	li	a5,8
    80003278:	00700c93          	li	s9,7
    8000327c:	f8d403a3          	sb	a3,-121(s0)
    80003280:	00075c63          	bgez	a4,80003298 <__printf+0x410>
    80003284:	f9040713          	addi	a4,s0,-112
    80003288:	00f70733          	add	a4,a4,a5
    8000328c:	02d00693          	li	a3,45
    80003290:	fed70823          	sb	a3,-16(a4)
    80003294:	00078c93          	mv	s9,a5
    80003298:	f8040793          	addi	a5,s0,-128
    8000329c:	01978cb3          	add	s9,a5,s9
    800032a0:	f7f40d13          	addi	s10,s0,-129
    800032a4:	000cc503          	lbu	a0,0(s9)
    800032a8:	fffc8c93          	addi	s9,s9,-1
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	9f8080e7          	jalr	-1544(ra) # 80002ca4 <consputc>
    800032b4:	ff9d18e3          	bne	s10,s9,800032a4 <__printf+0x41c>
    800032b8:	0100006f          	j	800032c8 <__printf+0x440>
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	9e8080e7          	jalr	-1560(ra) # 80002ca4 <consputc>
    800032c4:	000c8493          	mv	s1,s9
    800032c8:	00094503          	lbu	a0,0(s2)
    800032cc:	c60510e3          	bnez	a0,80002f2c <__printf+0xa4>
    800032d0:	e40c0ee3          	beqz	s8,8000312c <__printf+0x2a4>
    800032d4:	00004517          	auipc	a0,0x4
    800032d8:	92c50513          	addi	a0,a0,-1748 # 80006c00 <pr>
    800032dc:	00001097          	auipc	ra,0x1
    800032e0:	94c080e7          	jalr	-1716(ra) # 80003c28 <release>
    800032e4:	e49ff06f          	j	8000312c <__printf+0x2a4>
    800032e8:	f7843783          	ld	a5,-136(s0)
    800032ec:	03000513          	li	a0,48
    800032f0:	01000d13          	li	s10,16
    800032f4:	00878713          	addi	a4,a5,8
    800032f8:	0007bc83          	ld	s9,0(a5)
    800032fc:	f6e43c23          	sd	a4,-136(s0)
    80003300:	00000097          	auipc	ra,0x0
    80003304:	9a4080e7          	jalr	-1628(ra) # 80002ca4 <consputc>
    80003308:	07800513          	li	a0,120
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	998080e7          	jalr	-1640(ra) # 80002ca4 <consputc>
    80003314:	00002d97          	auipc	s11,0x2
    80003318:	facd8d93          	addi	s11,s11,-84 # 800052c0 <digits>
    8000331c:	03ccd793          	srli	a5,s9,0x3c
    80003320:	00fd87b3          	add	a5,s11,a5
    80003324:	0007c503          	lbu	a0,0(a5)
    80003328:	fffd0d1b          	addiw	s10,s10,-1
    8000332c:	004c9c93          	slli	s9,s9,0x4
    80003330:	00000097          	auipc	ra,0x0
    80003334:	974080e7          	jalr	-1676(ra) # 80002ca4 <consputc>
    80003338:	fe0d12e3          	bnez	s10,8000331c <__printf+0x494>
    8000333c:	f8dff06f          	j	800032c8 <__printf+0x440>
    80003340:	f7843783          	ld	a5,-136(s0)
    80003344:	0007bc83          	ld	s9,0(a5)
    80003348:	00878793          	addi	a5,a5,8
    8000334c:	f6f43c23          	sd	a5,-136(s0)
    80003350:	000c9a63          	bnez	s9,80003364 <__printf+0x4dc>
    80003354:	1080006f          	j	8000345c <__printf+0x5d4>
    80003358:	001c8c93          	addi	s9,s9,1
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	948080e7          	jalr	-1720(ra) # 80002ca4 <consputc>
    80003364:	000cc503          	lbu	a0,0(s9)
    80003368:	fe0518e3          	bnez	a0,80003358 <__printf+0x4d0>
    8000336c:	f5dff06f          	j	800032c8 <__printf+0x440>
    80003370:	02500513          	li	a0,37
    80003374:	00000097          	auipc	ra,0x0
    80003378:	930080e7          	jalr	-1744(ra) # 80002ca4 <consputc>
    8000337c:	000c8513          	mv	a0,s9
    80003380:	00000097          	auipc	ra,0x0
    80003384:	924080e7          	jalr	-1756(ra) # 80002ca4 <consputc>
    80003388:	f41ff06f          	j	800032c8 <__printf+0x440>
    8000338c:	02500513          	li	a0,37
    80003390:	00000097          	auipc	ra,0x0
    80003394:	914080e7          	jalr	-1772(ra) # 80002ca4 <consputc>
    80003398:	f31ff06f          	j	800032c8 <__printf+0x440>
    8000339c:	00030513          	mv	a0,t1
    800033a0:	00000097          	auipc	ra,0x0
    800033a4:	7bc080e7          	jalr	1980(ra) # 80003b5c <acquire>
    800033a8:	b4dff06f          	j	80002ef4 <__printf+0x6c>
    800033ac:	40c0053b          	negw	a0,a2
    800033b0:	00a00713          	li	a4,10
    800033b4:	02e576bb          	remuw	a3,a0,a4
    800033b8:	00002d97          	auipc	s11,0x2
    800033bc:	f08d8d93          	addi	s11,s11,-248 # 800052c0 <digits>
    800033c0:	ff700593          	li	a1,-9
    800033c4:	02069693          	slli	a3,a3,0x20
    800033c8:	0206d693          	srli	a3,a3,0x20
    800033cc:	00dd86b3          	add	a3,s11,a3
    800033d0:	0006c683          	lbu	a3,0(a3)
    800033d4:	02e557bb          	divuw	a5,a0,a4
    800033d8:	f8d40023          	sb	a3,-128(s0)
    800033dc:	10b65e63          	bge	a2,a1,800034f8 <__printf+0x670>
    800033e0:	06300593          	li	a1,99
    800033e4:	02e7f6bb          	remuw	a3,a5,a4
    800033e8:	02069693          	slli	a3,a3,0x20
    800033ec:	0206d693          	srli	a3,a3,0x20
    800033f0:	00dd86b3          	add	a3,s11,a3
    800033f4:	0006c683          	lbu	a3,0(a3)
    800033f8:	02e7d73b          	divuw	a4,a5,a4
    800033fc:	00200793          	li	a5,2
    80003400:	f8d400a3          	sb	a3,-127(s0)
    80003404:	bca5ece3          	bltu	a1,a0,80002fdc <__printf+0x154>
    80003408:	ce5ff06f          	j	800030ec <__printf+0x264>
    8000340c:	40e007bb          	negw	a5,a4
    80003410:	00002d97          	auipc	s11,0x2
    80003414:	eb0d8d93          	addi	s11,s11,-336 # 800052c0 <digits>
    80003418:	00f7f693          	andi	a3,a5,15
    8000341c:	00dd86b3          	add	a3,s11,a3
    80003420:	0006c583          	lbu	a1,0(a3)
    80003424:	ff100613          	li	a2,-15
    80003428:	0047d69b          	srliw	a3,a5,0x4
    8000342c:	f8b40023          	sb	a1,-128(s0)
    80003430:	0047d59b          	srliw	a1,a5,0x4
    80003434:	0ac75e63          	bge	a4,a2,800034f0 <__printf+0x668>
    80003438:	00f6f693          	andi	a3,a3,15
    8000343c:	00dd86b3          	add	a3,s11,a3
    80003440:	0006c603          	lbu	a2,0(a3)
    80003444:	00f00693          	li	a3,15
    80003448:	0087d79b          	srliw	a5,a5,0x8
    8000344c:	f8c400a3          	sb	a2,-127(s0)
    80003450:	d8b6e4e3          	bltu	a3,a1,800031d8 <__printf+0x350>
    80003454:	00200793          	li	a5,2
    80003458:	e2dff06f          	j	80003284 <__printf+0x3fc>
    8000345c:	00002c97          	auipc	s9,0x2
    80003460:	e44c8c93          	addi	s9,s9,-444 # 800052a0 <kvmincrease+0xcb0>
    80003464:	02800513          	li	a0,40
    80003468:	ef1ff06f          	j	80003358 <__printf+0x4d0>
    8000346c:	00700793          	li	a5,7
    80003470:	00600c93          	li	s9,6
    80003474:	e0dff06f          	j	80003280 <__printf+0x3f8>
    80003478:	00700793          	li	a5,7
    8000347c:	00600c93          	li	s9,6
    80003480:	c69ff06f          	j	800030e8 <__printf+0x260>
    80003484:	00300793          	li	a5,3
    80003488:	00200c93          	li	s9,2
    8000348c:	c5dff06f          	j	800030e8 <__printf+0x260>
    80003490:	00300793          	li	a5,3
    80003494:	00200c93          	li	s9,2
    80003498:	de9ff06f          	j	80003280 <__printf+0x3f8>
    8000349c:	00400793          	li	a5,4
    800034a0:	00300c93          	li	s9,3
    800034a4:	dddff06f          	j	80003280 <__printf+0x3f8>
    800034a8:	00400793          	li	a5,4
    800034ac:	00300c93          	li	s9,3
    800034b0:	c39ff06f          	j	800030e8 <__printf+0x260>
    800034b4:	00500793          	li	a5,5
    800034b8:	00400c93          	li	s9,4
    800034bc:	c2dff06f          	j	800030e8 <__printf+0x260>
    800034c0:	00500793          	li	a5,5
    800034c4:	00400c93          	li	s9,4
    800034c8:	db9ff06f          	j	80003280 <__printf+0x3f8>
    800034cc:	00600793          	li	a5,6
    800034d0:	00500c93          	li	s9,5
    800034d4:	dadff06f          	j	80003280 <__printf+0x3f8>
    800034d8:	00600793          	li	a5,6
    800034dc:	00500c93          	li	s9,5
    800034e0:	c09ff06f          	j	800030e8 <__printf+0x260>
    800034e4:	00800793          	li	a5,8
    800034e8:	00700c93          	li	s9,7
    800034ec:	bfdff06f          	j	800030e8 <__printf+0x260>
    800034f0:	00100793          	li	a5,1
    800034f4:	d91ff06f          	j	80003284 <__printf+0x3fc>
    800034f8:	00100793          	li	a5,1
    800034fc:	bf1ff06f          	j	800030ec <__printf+0x264>
    80003500:	00900793          	li	a5,9
    80003504:	00800c93          	li	s9,8
    80003508:	be1ff06f          	j	800030e8 <__printf+0x260>
    8000350c:	00002517          	auipc	a0,0x2
    80003510:	d9c50513          	addi	a0,a0,-612 # 800052a8 <kvmincrease+0xcb8>
    80003514:	00000097          	auipc	ra,0x0
    80003518:	918080e7          	jalr	-1768(ra) # 80002e2c <panic>

000000008000351c <printfinit>:
    8000351c:	fe010113          	addi	sp,sp,-32
    80003520:	00813823          	sd	s0,16(sp)
    80003524:	00913423          	sd	s1,8(sp)
    80003528:	00113c23          	sd	ra,24(sp)
    8000352c:	02010413          	addi	s0,sp,32
    80003530:	00003497          	auipc	s1,0x3
    80003534:	6d048493          	addi	s1,s1,1744 # 80006c00 <pr>
    80003538:	00048513          	mv	a0,s1
    8000353c:	00002597          	auipc	a1,0x2
    80003540:	d7c58593          	addi	a1,a1,-644 # 800052b8 <kvmincrease+0xcc8>
    80003544:	00000097          	auipc	ra,0x0
    80003548:	5f4080e7          	jalr	1524(ra) # 80003b38 <initlock>
    8000354c:	01813083          	ld	ra,24(sp)
    80003550:	01013403          	ld	s0,16(sp)
    80003554:	0004ac23          	sw	zero,24(s1)
    80003558:	00813483          	ld	s1,8(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret

0000000080003564 <uartinit>:
    80003564:	ff010113          	addi	sp,sp,-16
    80003568:	00813423          	sd	s0,8(sp)
    8000356c:	01010413          	addi	s0,sp,16
    80003570:	100007b7          	lui	a5,0x10000
    80003574:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003578:	f8000713          	li	a4,-128
    8000357c:	00e781a3          	sb	a4,3(a5)
    80003580:	00300713          	li	a4,3
    80003584:	00e78023          	sb	a4,0(a5)
    80003588:	000780a3          	sb	zero,1(a5)
    8000358c:	00e781a3          	sb	a4,3(a5)
    80003590:	00700693          	li	a3,7
    80003594:	00d78123          	sb	a3,2(a5)
    80003598:	00e780a3          	sb	a4,1(a5)
    8000359c:	00813403          	ld	s0,8(sp)
    800035a0:	01010113          	addi	sp,sp,16
    800035a4:	00008067          	ret

00000000800035a8 <uartputc>:
    800035a8:	00002797          	auipc	a5,0x2
    800035ac:	3d07a783          	lw	a5,976(a5) # 80005978 <panicked>
    800035b0:	00078463          	beqz	a5,800035b8 <uartputc+0x10>
    800035b4:	0000006f          	j	800035b4 <uartputc+0xc>
    800035b8:	fd010113          	addi	sp,sp,-48
    800035bc:	02813023          	sd	s0,32(sp)
    800035c0:	00913c23          	sd	s1,24(sp)
    800035c4:	01213823          	sd	s2,16(sp)
    800035c8:	01313423          	sd	s3,8(sp)
    800035cc:	02113423          	sd	ra,40(sp)
    800035d0:	03010413          	addi	s0,sp,48
    800035d4:	00002917          	auipc	s2,0x2
    800035d8:	3ac90913          	addi	s2,s2,940 # 80005980 <uart_tx_r>
    800035dc:	00093783          	ld	a5,0(s2)
    800035e0:	00002497          	auipc	s1,0x2
    800035e4:	3a848493          	addi	s1,s1,936 # 80005988 <uart_tx_w>
    800035e8:	0004b703          	ld	a4,0(s1)
    800035ec:	02078693          	addi	a3,a5,32
    800035f0:	00050993          	mv	s3,a0
    800035f4:	02e69c63          	bne	a3,a4,8000362c <uartputc+0x84>
    800035f8:	00001097          	auipc	ra,0x1
    800035fc:	834080e7          	jalr	-1996(ra) # 80003e2c <push_on>
    80003600:	00093783          	ld	a5,0(s2)
    80003604:	0004b703          	ld	a4,0(s1)
    80003608:	02078793          	addi	a5,a5,32
    8000360c:	00e79463          	bne	a5,a4,80003614 <uartputc+0x6c>
    80003610:	0000006f          	j	80003610 <uartputc+0x68>
    80003614:	00001097          	auipc	ra,0x1
    80003618:	88c080e7          	jalr	-1908(ra) # 80003ea0 <pop_on>
    8000361c:	00093783          	ld	a5,0(s2)
    80003620:	0004b703          	ld	a4,0(s1)
    80003624:	02078693          	addi	a3,a5,32
    80003628:	fce688e3          	beq	a3,a4,800035f8 <uartputc+0x50>
    8000362c:	01f77693          	andi	a3,a4,31
    80003630:	00003597          	auipc	a1,0x3
    80003634:	5f058593          	addi	a1,a1,1520 # 80006c20 <uart_tx_buf>
    80003638:	00d586b3          	add	a3,a1,a3
    8000363c:	00170713          	addi	a4,a4,1
    80003640:	01368023          	sb	s3,0(a3)
    80003644:	00e4b023          	sd	a4,0(s1)
    80003648:	10000637          	lui	a2,0x10000
    8000364c:	02f71063          	bne	a4,a5,8000366c <uartputc+0xc4>
    80003650:	0340006f          	j	80003684 <uartputc+0xdc>
    80003654:	00074703          	lbu	a4,0(a4)
    80003658:	00f93023          	sd	a5,0(s2)
    8000365c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003660:	00093783          	ld	a5,0(s2)
    80003664:	0004b703          	ld	a4,0(s1)
    80003668:	00f70e63          	beq	a4,a5,80003684 <uartputc+0xdc>
    8000366c:	00564683          	lbu	a3,5(a2)
    80003670:	01f7f713          	andi	a4,a5,31
    80003674:	00e58733          	add	a4,a1,a4
    80003678:	0206f693          	andi	a3,a3,32
    8000367c:	00178793          	addi	a5,a5,1
    80003680:	fc069ae3          	bnez	a3,80003654 <uartputc+0xac>
    80003684:	02813083          	ld	ra,40(sp)
    80003688:	02013403          	ld	s0,32(sp)
    8000368c:	01813483          	ld	s1,24(sp)
    80003690:	01013903          	ld	s2,16(sp)
    80003694:	00813983          	ld	s3,8(sp)
    80003698:	03010113          	addi	sp,sp,48
    8000369c:	00008067          	ret

00000000800036a0 <uartputc_sync>:
    800036a0:	ff010113          	addi	sp,sp,-16
    800036a4:	00813423          	sd	s0,8(sp)
    800036a8:	01010413          	addi	s0,sp,16
    800036ac:	00002717          	auipc	a4,0x2
    800036b0:	2cc72703          	lw	a4,716(a4) # 80005978 <panicked>
    800036b4:	02071663          	bnez	a4,800036e0 <uartputc_sync+0x40>
    800036b8:	00050793          	mv	a5,a0
    800036bc:	100006b7          	lui	a3,0x10000
    800036c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800036c4:	02077713          	andi	a4,a4,32
    800036c8:	fe070ce3          	beqz	a4,800036c0 <uartputc_sync+0x20>
    800036cc:	0ff7f793          	andi	a5,a5,255
    800036d0:	00f68023          	sb	a5,0(a3)
    800036d4:	00813403          	ld	s0,8(sp)
    800036d8:	01010113          	addi	sp,sp,16
    800036dc:	00008067          	ret
    800036e0:	0000006f          	j	800036e0 <uartputc_sync+0x40>

00000000800036e4 <uartstart>:
    800036e4:	ff010113          	addi	sp,sp,-16
    800036e8:	00813423          	sd	s0,8(sp)
    800036ec:	01010413          	addi	s0,sp,16
    800036f0:	00002617          	auipc	a2,0x2
    800036f4:	29060613          	addi	a2,a2,656 # 80005980 <uart_tx_r>
    800036f8:	00002517          	auipc	a0,0x2
    800036fc:	29050513          	addi	a0,a0,656 # 80005988 <uart_tx_w>
    80003700:	00063783          	ld	a5,0(a2)
    80003704:	00053703          	ld	a4,0(a0)
    80003708:	04f70263          	beq	a4,a5,8000374c <uartstart+0x68>
    8000370c:	100005b7          	lui	a1,0x10000
    80003710:	00003817          	auipc	a6,0x3
    80003714:	51080813          	addi	a6,a6,1296 # 80006c20 <uart_tx_buf>
    80003718:	01c0006f          	j	80003734 <uartstart+0x50>
    8000371c:	0006c703          	lbu	a4,0(a3)
    80003720:	00f63023          	sd	a5,0(a2)
    80003724:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003728:	00063783          	ld	a5,0(a2)
    8000372c:	00053703          	ld	a4,0(a0)
    80003730:	00f70e63          	beq	a4,a5,8000374c <uartstart+0x68>
    80003734:	01f7f713          	andi	a4,a5,31
    80003738:	00e806b3          	add	a3,a6,a4
    8000373c:	0055c703          	lbu	a4,5(a1)
    80003740:	00178793          	addi	a5,a5,1
    80003744:	02077713          	andi	a4,a4,32
    80003748:	fc071ae3          	bnez	a4,8000371c <uartstart+0x38>
    8000374c:	00813403          	ld	s0,8(sp)
    80003750:	01010113          	addi	sp,sp,16
    80003754:	00008067          	ret

0000000080003758 <uartgetc>:
    80003758:	ff010113          	addi	sp,sp,-16
    8000375c:	00813423          	sd	s0,8(sp)
    80003760:	01010413          	addi	s0,sp,16
    80003764:	10000737          	lui	a4,0x10000
    80003768:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000376c:	0017f793          	andi	a5,a5,1
    80003770:	00078c63          	beqz	a5,80003788 <uartgetc+0x30>
    80003774:	00074503          	lbu	a0,0(a4)
    80003778:	0ff57513          	andi	a0,a0,255
    8000377c:	00813403          	ld	s0,8(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret
    80003788:	fff00513          	li	a0,-1
    8000378c:	ff1ff06f          	j	8000377c <uartgetc+0x24>

0000000080003790 <uartintr>:
    80003790:	100007b7          	lui	a5,0x10000
    80003794:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003798:	0017f793          	andi	a5,a5,1
    8000379c:	0a078463          	beqz	a5,80003844 <uartintr+0xb4>
    800037a0:	fe010113          	addi	sp,sp,-32
    800037a4:	00813823          	sd	s0,16(sp)
    800037a8:	00913423          	sd	s1,8(sp)
    800037ac:	00113c23          	sd	ra,24(sp)
    800037b0:	02010413          	addi	s0,sp,32
    800037b4:	100004b7          	lui	s1,0x10000
    800037b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800037bc:	0ff57513          	andi	a0,a0,255
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	534080e7          	jalr	1332(ra) # 80002cf4 <consoleintr>
    800037c8:	0054c783          	lbu	a5,5(s1)
    800037cc:	0017f793          	andi	a5,a5,1
    800037d0:	fe0794e3          	bnez	a5,800037b8 <uartintr+0x28>
    800037d4:	00002617          	auipc	a2,0x2
    800037d8:	1ac60613          	addi	a2,a2,428 # 80005980 <uart_tx_r>
    800037dc:	00002517          	auipc	a0,0x2
    800037e0:	1ac50513          	addi	a0,a0,428 # 80005988 <uart_tx_w>
    800037e4:	00063783          	ld	a5,0(a2)
    800037e8:	00053703          	ld	a4,0(a0)
    800037ec:	04f70263          	beq	a4,a5,80003830 <uartintr+0xa0>
    800037f0:	100005b7          	lui	a1,0x10000
    800037f4:	00003817          	auipc	a6,0x3
    800037f8:	42c80813          	addi	a6,a6,1068 # 80006c20 <uart_tx_buf>
    800037fc:	01c0006f          	j	80003818 <uartintr+0x88>
    80003800:	0006c703          	lbu	a4,0(a3)
    80003804:	00f63023          	sd	a5,0(a2)
    80003808:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000380c:	00063783          	ld	a5,0(a2)
    80003810:	00053703          	ld	a4,0(a0)
    80003814:	00f70e63          	beq	a4,a5,80003830 <uartintr+0xa0>
    80003818:	01f7f713          	andi	a4,a5,31
    8000381c:	00e806b3          	add	a3,a6,a4
    80003820:	0055c703          	lbu	a4,5(a1)
    80003824:	00178793          	addi	a5,a5,1
    80003828:	02077713          	andi	a4,a4,32
    8000382c:	fc071ae3          	bnez	a4,80003800 <uartintr+0x70>
    80003830:	01813083          	ld	ra,24(sp)
    80003834:	01013403          	ld	s0,16(sp)
    80003838:	00813483          	ld	s1,8(sp)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00008067          	ret
    80003844:	00002617          	auipc	a2,0x2
    80003848:	13c60613          	addi	a2,a2,316 # 80005980 <uart_tx_r>
    8000384c:	00002517          	auipc	a0,0x2
    80003850:	13c50513          	addi	a0,a0,316 # 80005988 <uart_tx_w>
    80003854:	00063783          	ld	a5,0(a2)
    80003858:	00053703          	ld	a4,0(a0)
    8000385c:	04f70263          	beq	a4,a5,800038a0 <uartintr+0x110>
    80003860:	100005b7          	lui	a1,0x10000
    80003864:	00003817          	auipc	a6,0x3
    80003868:	3bc80813          	addi	a6,a6,956 # 80006c20 <uart_tx_buf>
    8000386c:	01c0006f          	j	80003888 <uartintr+0xf8>
    80003870:	0006c703          	lbu	a4,0(a3)
    80003874:	00f63023          	sd	a5,0(a2)
    80003878:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000387c:	00063783          	ld	a5,0(a2)
    80003880:	00053703          	ld	a4,0(a0)
    80003884:	02f70063          	beq	a4,a5,800038a4 <uartintr+0x114>
    80003888:	01f7f713          	andi	a4,a5,31
    8000388c:	00e806b3          	add	a3,a6,a4
    80003890:	0055c703          	lbu	a4,5(a1)
    80003894:	00178793          	addi	a5,a5,1
    80003898:	02077713          	andi	a4,a4,32
    8000389c:	fc071ae3          	bnez	a4,80003870 <uartintr+0xe0>
    800038a0:	00008067          	ret
    800038a4:	00008067          	ret

00000000800038a8 <kinit>:
    800038a8:	fc010113          	addi	sp,sp,-64
    800038ac:	02913423          	sd	s1,40(sp)
    800038b0:	fffff7b7          	lui	a5,0xfffff
    800038b4:	00004497          	auipc	s1,0x4
    800038b8:	39b48493          	addi	s1,s1,923 # 80007c4f <end+0xfff>
    800038bc:	02813823          	sd	s0,48(sp)
    800038c0:	01313c23          	sd	s3,24(sp)
    800038c4:	00f4f4b3          	and	s1,s1,a5
    800038c8:	02113c23          	sd	ra,56(sp)
    800038cc:	03213023          	sd	s2,32(sp)
    800038d0:	01413823          	sd	s4,16(sp)
    800038d4:	01513423          	sd	s5,8(sp)
    800038d8:	04010413          	addi	s0,sp,64
    800038dc:	000017b7          	lui	a5,0x1
    800038e0:	01100993          	li	s3,17
    800038e4:	00f487b3          	add	a5,s1,a5
    800038e8:	01b99993          	slli	s3,s3,0x1b
    800038ec:	06f9e063          	bltu	s3,a5,8000394c <kinit+0xa4>
    800038f0:	00003a97          	auipc	s5,0x3
    800038f4:	360a8a93          	addi	s5,s5,864 # 80006c50 <end>
    800038f8:	0754ec63          	bltu	s1,s5,80003970 <kinit+0xc8>
    800038fc:	0734fa63          	bgeu	s1,s3,80003970 <kinit+0xc8>
    80003900:	00088a37          	lui	s4,0x88
    80003904:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003908:	00002917          	auipc	s2,0x2
    8000390c:	08890913          	addi	s2,s2,136 # 80005990 <kmem>
    80003910:	00ca1a13          	slli	s4,s4,0xc
    80003914:	0140006f          	j	80003928 <kinit+0x80>
    80003918:	000017b7          	lui	a5,0x1
    8000391c:	00f484b3          	add	s1,s1,a5
    80003920:	0554e863          	bltu	s1,s5,80003970 <kinit+0xc8>
    80003924:	0534f663          	bgeu	s1,s3,80003970 <kinit+0xc8>
    80003928:	00001637          	lui	a2,0x1
    8000392c:	00100593          	li	a1,1
    80003930:	00048513          	mv	a0,s1
    80003934:	00000097          	auipc	ra,0x0
    80003938:	5e4080e7          	jalr	1508(ra) # 80003f18 <__memset>
    8000393c:	00093783          	ld	a5,0(s2)
    80003940:	00f4b023          	sd	a5,0(s1)
    80003944:	00993023          	sd	s1,0(s2)
    80003948:	fd4498e3          	bne	s1,s4,80003918 <kinit+0x70>
    8000394c:	03813083          	ld	ra,56(sp)
    80003950:	03013403          	ld	s0,48(sp)
    80003954:	02813483          	ld	s1,40(sp)
    80003958:	02013903          	ld	s2,32(sp)
    8000395c:	01813983          	ld	s3,24(sp)
    80003960:	01013a03          	ld	s4,16(sp)
    80003964:	00813a83          	ld	s5,8(sp)
    80003968:	04010113          	addi	sp,sp,64
    8000396c:	00008067          	ret
    80003970:	00002517          	auipc	a0,0x2
    80003974:	96850513          	addi	a0,a0,-1688 # 800052d8 <digits+0x18>
    80003978:	fffff097          	auipc	ra,0xfffff
    8000397c:	4b4080e7          	jalr	1204(ra) # 80002e2c <panic>

0000000080003980 <freerange>:
    80003980:	fc010113          	addi	sp,sp,-64
    80003984:	000017b7          	lui	a5,0x1
    80003988:	02913423          	sd	s1,40(sp)
    8000398c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003990:	009504b3          	add	s1,a0,s1
    80003994:	fffff537          	lui	a0,0xfffff
    80003998:	02813823          	sd	s0,48(sp)
    8000399c:	02113c23          	sd	ra,56(sp)
    800039a0:	03213023          	sd	s2,32(sp)
    800039a4:	01313c23          	sd	s3,24(sp)
    800039a8:	01413823          	sd	s4,16(sp)
    800039ac:	01513423          	sd	s5,8(sp)
    800039b0:	01613023          	sd	s6,0(sp)
    800039b4:	04010413          	addi	s0,sp,64
    800039b8:	00a4f4b3          	and	s1,s1,a0
    800039bc:	00f487b3          	add	a5,s1,a5
    800039c0:	06f5e463          	bltu	a1,a5,80003a28 <freerange+0xa8>
    800039c4:	00003a97          	auipc	s5,0x3
    800039c8:	28ca8a93          	addi	s5,s5,652 # 80006c50 <end>
    800039cc:	0954e263          	bltu	s1,s5,80003a50 <freerange+0xd0>
    800039d0:	01100993          	li	s3,17
    800039d4:	01b99993          	slli	s3,s3,0x1b
    800039d8:	0734fc63          	bgeu	s1,s3,80003a50 <freerange+0xd0>
    800039dc:	00058a13          	mv	s4,a1
    800039e0:	00002917          	auipc	s2,0x2
    800039e4:	fb090913          	addi	s2,s2,-80 # 80005990 <kmem>
    800039e8:	00002b37          	lui	s6,0x2
    800039ec:	0140006f          	j	80003a00 <freerange+0x80>
    800039f0:	000017b7          	lui	a5,0x1
    800039f4:	00f484b3          	add	s1,s1,a5
    800039f8:	0554ec63          	bltu	s1,s5,80003a50 <freerange+0xd0>
    800039fc:	0534fa63          	bgeu	s1,s3,80003a50 <freerange+0xd0>
    80003a00:	00001637          	lui	a2,0x1
    80003a04:	00100593          	li	a1,1
    80003a08:	00048513          	mv	a0,s1
    80003a0c:	00000097          	auipc	ra,0x0
    80003a10:	50c080e7          	jalr	1292(ra) # 80003f18 <__memset>
    80003a14:	00093703          	ld	a4,0(s2)
    80003a18:	016487b3          	add	a5,s1,s6
    80003a1c:	00e4b023          	sd	a4,0(s1)
    80003a20:	00993023          	sd	s1,0(s2)
    80003a24:	fcfa76e3          	bgeu	s4,a5,800039f0 <freerange+0x70>
    80003a28:	03813083          	ld	ra,56(sp)
    80003a2c:	03013403          	ld	s0,48(sp)
    80003a30:	02813483          	ld	s1,40(sp)
    80003a34:	02013903          	ld	s2,32(sp)
    80003a38:	01813983          	ld	s3,24(sp)
    80003a3c:	01013a03          	ld	s4,16(sp)
    80003a40:	00813a83          	ld	s5,8(sp)
    80003a44:	00013b03          	ld	s6,0(sp)
    80003a48:	04010113          	addi	sp,sp,64
    80003a4c:	00008067          	ret
    80003a50:	00002517          	auipc	a0,0x2
    80003a54:	88850513          	addi	a0,a0,-1912 # 800052d8 <digits+0x18>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	3d4080e7          	jalr	980(ra) # 80002e2c <panic>

0000000080003a60 <kfree>:
    80003a60:	fe010113          	addi	sp,sp,-32
    80003a64:	00813823          	sd	s0,16(sp)
    80003a68:	00113c23          	sd	ra,24(sp)
    80003a6c:	00913423          	sd	s1,8(sp)
    80003a70:	02010413          	addi	s0,sp,32
    80003a74:	03451793          	slli	a5,a0,0x34
    80003a78:	04079c63          	bnez	a5,80003ad0 <kfree+0x70>
    80003a7c:	00003797          	auipc	a5,0x3
    80003a80:	1d478793          	addi	a5,a5,468 # 80006c50 <end>
    80003a84:	00050493          	mv	s1,a0
    80003a88:	04f56463          	bltu	a0,a5,80003ad0 <kfree+0x70>
    80003a8c:	01100793          	li	a5,17
    80003a90:	01b79793          	slli	a5,a5,0x1b
    80003a94:	02f57e63          	bgeu	a0,a5,80003ad0 <kfree+0x70>
    80003a98:	00001637          	lui	a2,0x1
    80003a9c:	00100593          	li	a1,1
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	478080e7          	jalr	1144(ra) # 80003f18 <__memset>
    80003aa8:	00002797          	auipc	a5,0x2
    80003aac:	ee878793          	addi	a5,a5,-280 # 80005990 <kmem>
    80003ab0:	0007b703          	ld	a4,0(a5)
    80003ab4:	01813083          	ld	ra,24(sp)
    80003ab8:	01013403          	ld	s0,16(sp)
    80003abc:	00e4b023          	sd	a4,0(s1)
    80003ac0:	0097b023          	sd	s1,0(a5)
    80003ac4:	00813483          	ld	s1,8(sp)
    80003ac8:	02010113          	addi	sp,sp,32
    80003acc:	00008067          	ret
    80003ad0:	00002517          	auipc	a0,0x2
    80003ad4:	80850513          	addi	a0,a0,-2040 # 800052d8 <digits+0x18>
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	354080e7          	jalr	852(ra) # 80002e2c <panic>

0000000080003ae0 <kalloc>:
    80003ae0:	fe010113          	addi	sp,sp,-32
    80003ae4:	00813823          	sd	s0,16(sp)
    80003ae8:	00913423          	sd	s1,8(sp)
    80003aec:	00113c23          	sd	ra,24(sp)
    80003af0:	02010413          	addi	s0,sp,32
    80003af4:	00002797          	auipc	a5,0x2
    80003af8:	e9c78793          	addi	a5,a5,-356 # 80005990 <kmem>
    80003afc:	0007b483          	ld	s1,0(a5)
    80003b00:	02048063          	beqz	s1,80003b20 <kalloc+0x40>
    80003b04:	0004b703          	ld	a4,0(s1)
    80003b08:	00001637          	lui	a2,0x1
    80003b0c:	00500593          	li	a1,5
    80003b10:	00048513          	mv	a0,s1
    80003b14:	00e7b023          	sd	a4,0(a5)
    80003b18:	00000097          	auipc	ra,0x0
    80003b1c:	400080e7          	jalr	1024(ra) # 80003f18 <__memset>
    80003b20:	01813083          	ld	ra,24(sp)
    80003b24:	01013403          	ld	s0,16(sp)
    80003b28:	00048513          	mv	a0,s1
    80003b2c:	00813483          	ld	s1,8(sp)
    80003b30:	02010113          	addi	sp,sp,32
    80003b34:	00008067          	ret

0000000080003b38 <initlock>:
    80003b38:	ff010113          	addi	sp,sp,-16
    80003b3c:	00813423          	sd	s0,8(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	00813403          	ld	s0,8(sp)
    80003b48:	00b53423          	sd	a1,8(a0)
    80003b4c:	00052023          	sw	zero,0(a0)
    80003b50:	00053823          	sd	zero,16(a0)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret

0000000080003b5c <acquire>:
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00913423          	sd	s1,8(sp)
    80003b68:	00113c23          	sd	ra,24(sp)
    80003b6c:	01213023          	sd	s2,0(sp)
    80003b70:	02010413          	addi	s0,sp,32
    80003b74:	00050493          	mv	s1,a0
    80003b78:	10002973          	csrr	s2,sstatus
    80003b7c:	100027f3          	csrr	a5,sstatus
    80003b80:	ffd7f793          	andi	a5,a5,-3
    80003b84:	10079073          	csrw	sstatus,a5
    80003b88:	fffff097          	auipc	ra,0xfffff
    80003b8c:	8e4080e7          	jalr	-1820(ra) # 8000246c <mycpu>
    80003b90:	07852783          	lw	a5,120(a0)
    80003b94:	06078e63          	beqz	a5,80003c10 <acquire+0xb4>
    80003b98:	fffff097          	auipc	ra,0xfffff
    80003b9c:	8d4080e7          	jalr	-1836(ra) # 8000246c <mycpu>
    80003ba0:	07852783          	lw	a5,120(a0)
    80003ba4:	0004a703          	lw	a4,0(s1)
    80003ba8:	0017879b          	addiw	a5,a5,1
    80003bac:	06f52c23          	sw	a5,120(a0)
    80003bb0:	04071063          	bnez	a4,80003bf0 <acquire+0x94>
    80003bb4:	00100713          	li	a4,1
    80003bb8:	00070793          	mv	a5,a4
    80003bbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003bc0:	0007879b          	sext.w	a5,a5
    80003bc4:	fe079ae3          	bnez	a5,80003bb8 <acquire+0x5c>
    80003bc8:	0ff0000f          	fence
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	8a0080e7          	jalr	-1888(ra) # 8000246c <mycpu>
    80003bd4:	01813083          	ld	ra,24(sp)
    80003bd8:	01013403          	ld	s0,16(sp)
    80003bdc:	00a4b823          	sd	a0,16(s1)
    80003be0:	00013903          	ld	s2,0(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	02010113          	addi	sp,sp,32
    80003bec:	00008067          	ret
    80003bf0:	0104b903          	ld	s2,16(s1)
    80003bf4:	fffff097          	auipc	ra,0xfffff
    80003bf8:	878080e7          	jalr	-1928(ra) # 8000246c <mycpu>
    80003bfc:	faa91ce3          	bne	s2,a0,80003bb4 <acquire+0x58>
    80003c00:	00001517          	auipc	a0,0x1
    80003c04:	6e050513          	addi	a0,a0,1760 # 800052e0 <digits+0x20>
    80003c08:	fffff097          	auipc	ra,0xfffff
    80003c0c:	224080e7          	jalr	548(ra) # 80002e2c <panic>
    80003c10:	00195913          	srli	s2,s2,0x1
    80003c14:	fffff097          	auipc	ra,0xfffff
    80003c18:	858080e7          	jalr	-1960(ra) # 8000246c <mycpu>
    80003c1c:	00197913          	andi	s2,s2,1
    80003c20:	07252e23          	sw	s2,124(a0)
    80003c24:	f75ff06f          	j	80003b98 <acquire+0x3c>

0000000080003c28 <release>:
    80003c28:	fe010113          	addi	sp,sp,-32
    80003c2c:	00813823          	sd	s0,16(sp)
    80003c30:	00113c23          	sd	ra,24(sp)
    80003c34:	00913423          	sd	s1,8(sp)
    80003c38:	01213023          	sd	s2,0(sp)
    80003c3c:	02010413          	addi	s0,sp,32
    80003c40:	00052783          	lw	a5,0(a0)
    80003c44:	00079a63          	bnez	a5,80003c58 <release+0x30>
    80003c48:	00001517          	auipc	a0,0x1
    80003c4c:	6a050513          	addi	a0,a0,1696 # 800052e8 <digits+0x28>
    80003c50:	fffff097          	auipc	ra,0xfffff
    80003c54:	1dc080e7          	jalr	476(ra) # 80002e2c <panic>
    80003c58:	01053903          	ld	s2,16(a0)
    80003c5c:	00050493          	mv	s1,a0
    80003c60:	fffff097          	auipc	ra,0xfffff
    80003c64:	80c080e7          	jalr	-2036(ra) # 8000246c <mycpu>
    80003c68:	fea910e3          	bne	s2,a0,80003c48 <release+0x20>
    80003c6c:	0004b823          	sd	zero,16(s1)
    80003c70:	0ff0000f          	fence
    80003c74:	0f50000f          	fence	iorw,ow
    80003c78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80003c7c:	ffffe097          	auipc	ra,0xffffe
    80003c80:	7f0080e7          	jalr	2032(ra) # 8000246c <mycpu>
    80003c84:	100027f3          	csrr	a5,sstatus
    80003c88:	0027f793          	andi	a5,a5,2
    80003c8c:	04079a63          	bnez	a5,80003ce0 <release+0xb8>
    80003c90:	07852783          	lw	a5,120(a0)
    80003c94:	02f05e63          	blez	a5,80003cd0 <release+0xa8>
    80003c98:	fff7871b          	addiw	a4,a5,-1
    80003c9c:	06e52c23          	sw	a4,120(a0)
    80003ca0:	00071c63          	bnez	a4,80003cb8 <release+0x90>
    80003ca4:	07c52783          	lw	a5,124(a0)
    80003ca8:	00078863          	beqz	a5,80003cb8 <release+0x90>
    80003cac:	100027f3          	csrr	a5,sstatus
    80003cb0:	0027e793          	ori	a5,a5,2
    80003cb4:	10079073          	csrw	sstatus,a5
    80003cb8:	01813083          	ld	ra,24(sp)
    80003cbc:	01013403          	ld	s0,16(sp)
    80003cc0:	00813483          	ld	s1,8(sp)
    80003cc4:	00013903          	ld	s2,0(sp)
    80003cc8:	02010113          	addi	sp,sp,32
    80003ccc:	00008067          	ret
    80003cd0:	00001517          	auipc	a0,0x1
    80003cd4:	63850513          	addi	a0,a0,1592 # 80005308 <digits+0x48>
    80003cd8:	fffff097          	auipc	ra,0xfffff
    80003cdc:	154080e7          	jalr	340(ra) # 80002e2c <panic>
    80003ce0:	00001517          	auipc	a0,0x1
    80003ce4:	61050513          	addi	a0,a0,1552 # 800052f0 <digits+0x30>
    80003ce8:	fffff097          	auipc	ra,0xfffff
    80003cec:	144080e7          	jalr	324(ra) # 80002e2c <panic>

0000000080003cf0 <holding>:
    80003cf0:	00052783          	lw	a5,0(a0)
    80003cf4:	00079663          	bnez	a5,80003d00 <holding+0x10>
    80003cf8:	00000513          	li	a0,0
    80003cfc:	00008067          	ret
    80003d00:	fe010113          	addi	sp,sp,-32
    80003d04:	00813823          	sd	s0,16(sp)
    80003d08:	00913423          	sd	s1,8(sp)
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	02010413          	addi	s0,sp,32
    80003d14:	01053483          	ld	s1,16(a0)
    80003d18:	ffffe097          	auipc	ra,0xffffe
    80003d1c:	754080e7          	jalr	1876(ra) # 8000246c <mycpu>
    80003d20:	01813083          	ld	ra,24(sp)
    80003d24:	01013403          	ld	s0,16(sp)
    80003d28:	40a48533          	sub	a0,s1,a0
    80003d2c:	00153513          	seqz	a0,a0
    80003d30:	00813483          	ld	s1,8(sp)
    80003d34:	02010113          	addi	sp,sp,32
    80003d38:	00008067          	ret

0000000080003d3c <push_off>:
    80003d3c:	fe010113          	addi	sp,sp,-32
    80003d40:	00813823          	sd	s0,16(sp)
    80003d44:	00113c23          	sd	ra,24(sp)
    80003d48:	00913423          	sd	s1,8(sp)
    80003d4c:	02010413          	addi	s0,sp,32
    80003d50:	100024f3          	csrr	s1,sstatus
    80003d54:	100027f3          	csrr	a5,sstatus
    80003d58:	ffd7f793          	andi	a5,a5,-3
    80003d5c:	10079073          	csrw	sstatus,a5
    80003d60:	ffffe097          	auipc	ra,0xffffe
    80003d64:	70c080e7          	jalr	1804(ra) # 8000246c <mycpu>
    80003d68:	07852783          	lw	a5,120(a0)
    80003d6c:	02078663          	beqz	a5,80003d98 <push_off+0x5c>
    80003d70:	ffffe097          	auipc	ra,0xffffe
    80003d74:	6fc080e7          	jalr	1788(ra) # 8000246c <mycpu>
    80003d78:	07852783          	lw	a5,120(a0)
    80003d7c:	01813083          	ld	ra,24(sp)
    80003d80:	01013403          	ld	s0,16(sp)
    80003d84:	0017879b          	addiw	a5,a5,1
    80003d88:	06f52c23          	sw	a5,120(a0)
    80003d8c:	00813483          	ld	s1,8(sp)
    80003d90:	02010113          	addi	sp,sp,32
    80003d94:	00008067          	ret
    80003d98:	0014d493          	srli	s1,s1,0x1
    80003d9c:	ffffe097          	auipc	ra,0xffffe
    80003da0:	6d0080e7          	jalr	1744(ra) # 8000246c <mycpu>
    80003da4:	0014f493          	andi	s1,s1,1
    80003da8:	06952e23          	sw	s1,124(a0)
    80003dac:	fc5ff06f          	j	80003d70 <push_off+0x34>

0000000080003db0 <pop_off>:
    80003db0:	ff010113          	addi	sp,sp,-16
    80003db4:	00813023          	sd	s0,0(sp)
    80003db8:	00113423          	sd	ra,8(sp)
    80003dbc:	01010413          	addi	s0,sp,16
    80003dc0:	ffffe097          	auipc	ra,0xffffe
    80003dc4:	6ac080e7          	jalr	1708(ra) # 8000246c <mycpu>
    80003dc8:	100027f3          	csrr	a5,sstatus
    80003dcc:	0027f793          	andi	a5,a5,2
    80003dd0:	04079663          	bnez	a5,80003e1c <pop_off+0x6c>
    80003dd4:	07852783          	lw	a5,120(a0)
    80003dd8:	02f05a63          	blez	a5,80003e0c <pop_off+0x5c>
    80003ddc:	fff7871b          	addiw	a4,a5,-1
    80003de0:	06e52c23          	sw	a4,120(a0)
    80003de4:	00071c63          	bnez	a4,80003dfc <pop_off+0x4c>
    80003de8:	07c52783          	lw	a5,124(a0)
    80003dec:	00078863          	beqz	a5,80003dfc <pop_off+0x4c>
    80003df0:	100027f3          	csrr	a5,sstatus
    80003df4:	0027e793          	ori	a5,a5,2
    80003df8:	10079073          	csrw	sstatus,a5
    80003dfc:	00813083          	ld	ra,8(sp)
    80003e00:	00013403          	ld	s0,0(sp)
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret
    80003e0c:	00001517          	auipc	a0,0x1
    80003e10:	4fc50513          	addi	a0,a0,1276 # 80005308 <digits+0x48>
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	018080e7          	jalr	24(ra) # 80002e2c <panic>
    80003e1c:	00001517          	auipc	a0,0x1
    80003e20:	4d450513          	addi	a0,a0,1236 # 800052f0 <digits+0x30>
    80003e24:	fffff097          	auipc	ra,0xfffff
    80003e28:	008080e7          	jalr	8(ra) # 80002e2c <panic>

0000000080003e2c <push_on>:
    80003e2c:	fe010113          	addi	sp,sp,-32
    80003e30:	00813823          	sd	s0,16(sp)
    80003e34:	00113c23          	sd	ra,24(sp)
    80003e38:	00913423          	sd	s1,8(sp)
    80003e3c:	02010413          	addi	s0,sp,32
    80003e40:	100024f3          	csrr	s1,sstatus
    80003e44:	100027f3          	csrr	a5,sstatus
    80003e48:	0027e793          	ori	a5,a5,2
    80003e4c:	10079073          	csrw	sstatus,a5
    80003e50:	ffffe097          	auipc	ra,0xffffe
    80003e54:	61c080e7          	jalr	1564(ra) # 8000246c <mycpu>
    80003e58:	07852783          	lw	a5,120(a0)
    80003e5c:	02078663          	beqz	a5,80003e88 <push_on+0x5c>
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	60c080e7          	jalr	1548(ra) # 8000246c <mycpu>
    80003e68:	07852783          	lw	a5,120(a0)
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	0017879b          	addiw	a5,a5,1
    80003e78:	06f52c23          	sw	a5,120(a0)
    80003e7c:	00813483          	ld	s1,8(sp)
    80003e80:	02010113          	addi	sp,sp,32
    80003e84:	00008067          	ret
    80003e88:	0014d493          	srli	s1,s1,0x1
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	5e0080e7          	jalr	1504(ra) # 8000246c <mycpu>
    80003e94:	0014f493          	andi	s1,s1,1
    80003e98:	06952e23          	sw	s1,124(a0)
    80003e9c:	fc5ff06f          	j	80003e60 <push_on+0x34>

0000000080003ea0 <pop_on>:
    80003ea0:	ff010113          	addi	sp,sp,-16
    80003ea4:	00813023          	sd	s0,0(sp)
    80003ea8:	00113423          	sd	ra,8(sp)
    80003eac:	01010413          	addi	s0,sp,16
    80003eb0:	ffffe097          	auipc	ra,0xffffe
    80003eb4:	5bc080e7          	jalr	1468(ra) # 8000246c <mycpu>
    80003eb8:	100027f3          	csrr	a5,sstatus
    80003ebc:	0027f793          	andi	a5,a5,2
    80003ec0:	04078463          	beqz	a5,80003f08 <pop_on+0x68>
    80003ec4:	07852783          	lw	a5,120(a0)
    80003ec8:	02f05863          	blez	a5,80003ef8 <pop_on+0x58>
    80003ecc:	fff7879b          	addiw	a5,a5,-1
    80003ed0:	06f52c23          	sw	a5,120(a0)
    80003ed4:	07853783          	ld	a5,120(a0)
    80003ed8:	00079863          	bnez	a5,80003ee8 <pop_on+0x48>
    80003edc:	100027f3          	csrr	a5,sstatus
    80003ee0:	ffd7f793          	andi	a5,a5,-3
    80003ee4:	10079073          	csrw	sstatus,a5
    80003ee8:	00813083          	ld	ra,8(sp)
    80003eec:	00013403          	ld	s0,0(sp)
    80003ef0:	01010113          	addi	sp,sp,16
    80003ef4:	00008067          	ret
    80003ef8:	00001517          	auipc	a0,0x1
    80003efc:	43850513          	addi	a0,a0,1080 # 80005330 <digits+0x70>
    80003f00:	fffff097          	auipc	ra,0xfffff
    80003f04:	f2c080e7          	jalr	-212(ra) # 80002e2c <panic>
    80003f08:	00001517          	auipc	a0,0x1
    80003f0c:	40850513          	addi	a0,a0,1032 # 80005310 <digits+0x50>
    80003f10:	fffff097          	auipc	ra,0xfffff
    80003f14:	f1c080e7          	jalr	-228(ra) # 80002e2c <panic>

0000000080003f18 <__memset>:
    80003f18:	ff010113          	addi	sp,sp,-16
    80003f1c:	00813423          	sd	s0,8(sp)
    80003f20:	01010413          	addi	s0,sp,16
    80003f24:	1a060e63          	beqz	a2,800040e0 <__memset+0x1c8>
    80003f28:	40a007b3          	neg	a5,a0
    80003f2c:	0077f793          	andi	a5,a5,7
    80003f30:	00778693          	addi	a3,a5,7
    80003f34:	00b00813          	li	a6,11
    80003f38:	0ff5f593          	andi	a1,a1,255
    80003f3c:	fff6071b          	addiw	a4,a2,-1
    80003f40:	1b06e663          	bltu	a3,a6,800040ec <__memset+0x1d4>
    80003f44:	1cd76463          	bltu	a4,a3,8000410c <__memset+0x1f4>
    80003f48:	1a078e63          	beqz	a5,80004104 <__memset+0x1ec>
    80003f4c:	00b50023          	sb	a1,0(a0)
    80003f50:	00100713          	li	a4,1
    80003f54:	1ae78463          	beq	a5,a4,800040fc <__memset+0x1e4>
    80003f58:	00b500a3          	sb	a1,1(a0)
    80003f5c:	00200713          	li	a4,2
    80003f60:	1ae78a63          	beq	a5,a4,80004114 <__memset+0x1fc>
    80003f64:	00b50123          	sb	a1,2(a0)
    80003f68:	00300713          	li	a4,3
    80003f6c:	18e78463          	beq	a5,a4,800040f4 <__memset+0x1dc>
    80003f70:	00b501a3          	sb	a1,3(a0)
    80003f74:	00400713          	li	a4,4
    80003f78:	1ae78263          	beq	a5,a4,8000411c <__memset+0x204>
    80003f7c:	00b50223          	sb	a1,4(a0)
    80003f80:	00500713          	li	a4,5
    80003f84:	1ae78063          	beq	a5,a4,80004124 <__memset+0x20c>
    80003f88:	00b502a3          	sb	a1,5(a0)
    80003f8c:	00700713          	li	a4,7
    80003f90:	18e79e63          	bne	a5,a4,8000412c <__memset+0x214>
    80003f94:	00b50323          	sb	a1,6(a0)
    80003f98:	00700e93          	li	t4,7
    80003f9c:	00859713          	slli	a4,a1,0x8
    80003fa0:	00e5e733          	or	a4,a1,a4
    80003fa4:	01059e13          	slli	t3,a1,0x10
    80003fa8:	01c76e33          	or	t3,a4,t3
    80003fac:	01859313          	slli	t1,a1,0x18
    80003fb0:	006e6333          	or	t1,t3,t1
    80003fb4:	02059893          	slli	a7,a1,0x20
    80003fb8:	40f60e3b          	subw	t3,a2,a5
    80003fbc:	011368b3          	or	a7,t1,a7
    80003fc0:	02859813          	slli	a6,a1,0x28
    80003fc4:	0108e833          	or	a6,a7,a6
    80003fc8:	03059693          	slli	a3,a1,0x30
    80003fcc:	003e589b          	srliw	a7,t3,0x3
    80003fd0:	00d866b3          	or	a3,a6,a3
    80003fd4:	03859713          	slli	a4,a1,0x38
    80003fd8:	00389813          	slli	a6,a7,0x3
    80003fdc:	00f507b3          	add	a5,a0,a5
    80003fe0:	00e6e733          	or	a4,a3,a4
    80003fe4:	000e089b          	sext.w	a7,t3
    80003fe8:	00f806b3          	add	a3,a6,a5
    80003fec:	00e7b023          	sd	a4,0(a5)
    80003ff0:	00878793          	addi	a5,a5,8
    80003ff4:	fed79ce3          	bne	a5,a3,80003fec <__memset+0xd4>
    80003ff8:	ff8e7793          	andi	a5,t3,-8
    80003ffc:	0007871b          	sext.w	a4,a5
    80004000:	01d787bb          	addw	a5,a5,t4
    80004004:	0ce88e63          	beq	a7,a4,800040e0 <__memset+0x1c8>
    80004008:	00f50733          	add	a4,a0,a5
    8000400c:	00b70023          	sb	a1,0(a4)
    80004010:	0017871b          	addiw	a4,a5,1
    80004014:	0cc77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004018:	00e50733          	add	a4,a0,a4
    8000401c:	00b70023          	sb	a1,0(a4)
    80004020:	0027871b          	addiw	a4,a5,2
    80004024:	0ac77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004028:	00e50733          	add	a4,a0,a4
    8000402c:	00b70023          	sb	a1,0(a4)
    80004030:	0037871b          	addiw	a4,a5,3
    80004034:	0ac77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004038:	00e50733          	add	a4,a0,a4
    8000403c:	00b70023          	sb	a1,0(a4)
    80004040:	0047871b          	addiw	a4,a5,4
    80004044:	08c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004048:	00e50733          	add	a4,a0,a4
    8000404c:	00b70023          	sb	a1,0(a4)
    80004050:	0057871b          	addiw	a4,a5,5
    80004054:	08c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004058:	00e50733          	add	a4,a0,a4
    8000405c:	00b70023          	sb	a1,0(a4)
    80004060:	0067871b          	addiw	a4,a5,6
    80004064:	06c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004068:	00e50733          	add	a4,a0,a4
    8000406c:	00b70023          	sb	a1,0(a4)
    80004070:	0077871b          	addiw	a4,a5,7
    80004074:	06c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004078:	00e50733          	add	a4,a0,a4
    8000407c:	00b70023          	sb	a1,0(a4)
    80004080:	0087871b          	addiw	a4,a5,8
    80004084:	04c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004088:	00e50733          	add	a4,a0,a4
    8000408c:	00b70023          	sb	a1,0(a4)
    80004090:	0097871b          	addiw	a4,a5,9
    80004094:	04c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    80004098:	00e50733          	add	a4,a0,a4
    8000409c:	00b70023          	sb	a1,0(a4)
    800040a0:	00a7871b          	addiw	a4,a5,10
    800040a4:	02c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040a8:	00e50733          	add	a4,a0,a4
    800040ac:	00b70023          	sb	a1,0(a4)
    800040b0:	00b7871b          	addiw	a4,a5,11
    800040b4:	02c77663          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040b8:	00e50733          	add	a4,a0,a4
    800040bc:	00b70023          	sb	a1,0(a4)
    800040c0:	00c7871b          	addiw	a4,a5,12
    800040c4:	00c77e63          	bgeu	a4,a2,800040e0 <__memset+0x1c8>
    800040c8:	00e50733          	add	a4,a0,a4
    800040cc:	00b70023          	sb	a1,0(a4)
    800040d0:	00d7879b          	addiw	a5,a5,13
    800040d4:	00c7f663          	bgeu	a5,a2,800040e0 <__memset+0x1c8>
    800040d8:	00f507b3          	add	a5,a0,a5
    800040dc:	00b78023          	sb	a1,0(a5)
    800040e0:	00813403          	ld	s0,8(sp)
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret
    800040ec:	00b00693          	li	a3,11
    800040f0:	e55ff06f          	j	80003f44 <__memset+0x2c>
    800040f4:	00300e93          	li	t4,3
    800040f8:	ea5ff06f          	j	80003f9c <__memset+0x84>
    800040fc:	00100e93          	li	t4,1
    80004100:	e9dff06f          	j	80003f9c <__memset+0x84>
    80004104:	00000e93          	li	t4,0
    80004108:	e95ff06f          	j	80003f9c <__memset+0x84>
    8000410c:	00000793          	li	a5,0
    80004110:	ef9ff06f          	j	80004008 <__memset+0xf0>
    80004114:	00200e93          	li	t4,2
    80004118:	e85ff06f          	j	80003f9c <__memset+0x84>
    8000411c:	00400e93          	li	t4,4
    80004120:	e7dff06f          	j	80003f9c <__memset+0x84>
    80004124:	00500e93          	li	t4,5
    80004128:	e75ff06f          	j	80003f9c <__memset+0x84>
    8000412c:	00600e93          	li	t4,6
    80004130:	e6dff06f          	j	80003f9c <__memset+0x84>

0000000080004134 <__memmove>:
    80004134:	ff010113          	addi	sp,sp,-16
    80004138:	00813423          	sd	s0,8(sp)
    8000413c:	01010413          	addi	s0,sp,16
    80004140:	0e060863          	beqz	a2,80004230 <__memmove+0xfc>
    80004144:	fff6069b          	addiw	a3,a2,-1
    80004148:	0006881b          	sext.w	a6,a3
    8000414c:	0ea5e863          	bltu	a1,a0,8000423c <__memmove+0x108>
    80004150:	00758713          	addi	a4,a1,7
    80004154:	00a5e7b3          	or	a5,a1,a0
    80004158:	40a70733          	sub	a4,a4,a0
    8000415c:	0077f793          	andi	a5,a5,7
    80004160:	00f73713          	sltiu	a4,a4,15
    80004164:	00174713          	xori	a4,a4,1
    80004168:	0017b793          	seqz	a5,a5
    8000416c:	00e7f7b3          	and	a5,a5,a4
    80004170:	10078863          	beqz	a5,80004280 <__memmove+0x14c>
    80004174:	00900793          	li	a5,9
    80004178:	1107f463          	bgeu	a5,a6,80004280 <__memmove+0x14c>
    8000417c:	0036581b          	srliw	a6,a2,0x3
    80004180:	fff8081b          	addiw	a6,a6,-1
    80004184:	02081813          	slli	a6,a6,0x20
    80004188:	01d85893          	srli	a7,a6,0x1d
    8000418c:	00858813          	addi	a6,a1,8
    80004190:	00058793          	mv	a5,a1
    80004194:	00050713          	mv	a4,a0
    80004198:	01088833          	add	a6,a7,a6
    8000419c:	0007b883          	ld	a7,0(a5)
    800041a0:	00878793          	addi	a5,a5,8
    800041a4:	00870713          	addi	a4,a4,8
    800041a8:	ff173c23          	sd	a7,-8(a4)
    800041ac:	ff0798e3          	bne	a5,a6,8000419c <__memmove+0x68>
    800041b0:	ff867713          	andi	a4,a2,-8
    800041b4:	02071793          	slli	a5,a4,0x20
    800041b8:	0207d793          	srli	a5,a5,0x20
    800041bc:	00f585b3          	add	a1,a1,a5
    800041c0:	40e686bb          	subw	a3,a3,a4
    800041c4:	00f507b3          	add	a5,a0,a5
    800041c8:	06e60463          	beq	a2,a4,80004230 <__memmove+0xfc>
    800041cc:	0005c703          	lbu	a4,0(a1)
    800041d0:	00e78023          	sb	a4,0(a5)
    800041d4:	04068e63          	beqz	a3,80004230 <__memmove+0xfc>
    800041d8:	0015c603          	lbu	a2,1(a1)
    800041dc:	00100713          	li	a4,1
    800041e0:	00c780a3          	sb	a2,1(a5)
    800041e4:	04e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    800041e8:	0025c603          	lbu	a2,2(a1)
    800041ec:	00200713          	li	a4,2
    800041f0:	00c78123          	sb	a2,2(a5)
    800041f4:	02e68e63          	beq	a3,a4,80004230 <__memmove+0xfc>
    800041f8:	0035c603          	lbu	a2,3(a1)
    800041fc:	00300713          	li	a4,3
    80004200:	00c781a3          	sb	a2,3(a5)
    80004204:	02e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004208:	0045c603          	lbu	a2,4(a1)
    8000420c:	00400713          	li	a4,4
    80004210:	00c78223          	sb	a2,4(a5)
    80004214:	00e68e63          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004218:	0055c603          	lbu	a2,5(a1)
    8000421c:	00500713          	li	a4,5
    80004220:	00c782a3          	sb	a2,5(a5)
    80004224:	00e68663          	beq	a3,a4,80004230 <__memmove+0xfc>
    80004228:	0065c703          	lbu	a4,6(a1)
    8000422c:	00e78323          	sb	a4,6(a5)
    80004230:	00813403          	ld	s0,8(sp)
    80004234:	01010113          	addi	sp,sp,16
    80004238:	00008067          	ret
    8000423c:	02061713          	slli	a4,a2,0x20
    80004240:	02075713          	srli	a4,a4,0x20
    80004244:	00e587b3          	add	a5,a1,a4
    80004248:	f0f574e3          	bgeu	a0,a5,80004150 <__memmove+0x1c>
    8000424c:	02069613          	slli	a2,a3,0x20
    80004250:	02065613          	srli	a2,a2,0x20
    80004254:	fff64613          	not	a2,a2
    80004258:	00e50733          	add	a4,a0,a4
    8000425c:	00c78633          	add	a2,a5,a2
    80004260:	fff7c683          	lbu	a3,-1(a5)
    80004264:	fff78793          	addi	a5,a5,-1
    80004268:	fff70713          	addi	a4,a4,-1
    8000426c:	00d70023          	sb	a3,0(a4)
    80004270:	fec798e3          	bne	a5,a2,80004260 <__memmove+0x12c>
    80004274:	00813403          	ld	s0,8(sp)
    80004278:	01010113          	addi	sp,sp,16
    8000427c:	00008067          	ret
    80004280:	02069713          	slli	a4,a3,0x20
    80004284:	02075713          	srli	a4,a4,0x20
    80004288:	00170713          	addi	a4,a4,1
    8000428c:	00e50733          	add	a4,a0,a4
    80004290:	00050793          	mv	a5,a0
    80004294:	0005c683          	lbu	a3,0(a1)
    80004298:	00178793          	addi	a5,a5,1
    8000429c:	00158593          	addi	a1,a1,1
    800042a0:	fed78fa3          	sb	a3,-1(a5)
    800042a4:	fee798e3          	bne	a5,a4,80004294 <__memmove+0x160>
    800042a8:	f89ff06f          	j	80004230 <__memmove+0xfc>

00000000800042ac <__mem_free>:
    800042ac:	ff010113          	addi	sp,sp,-16
    800042b0:	00813423          	sd	s0,8(sp)
    800042b4:	01010413          	addi	s0,sp,16
    800042b8:	00001597          	auipc	a1,0x1
    800042bc:	6e058593          	addi	a1,a1,1760 # 80005998 <freep>
    800042c0:	0005b783          	ld	a5,0(a1)
    800042c4:	ff050693          	addi	a3,a0,-16
    800042c8:	0007b703          	ld	a4,0(a5)
    800042cc:	00d7fc63          	bgeu	a5,a3,800042e4 <__mem_free+0x38>
    800042d0:	00e6ee63          	bltu	a3,a4,800042ec <__mem_free+0x40>
    800042d4:	00e7fc63          	bgeu	a5,a4,800042ec <__mem_free+0x40>
    800042d8:	00070793          	mv	a5,a4
    800042dc:	0007b703          	ld	a4,0(a5)
    800042e0:	fed7e8e3          	bltu	a5,a3,800042d0 <__mem_free+0x24>
    800042e4:	fee7eae3          	bltu	a5,a4,800042d8 <__mem_free+0x2c>
    800042e8:	fee6f8e3          	bgeu	a3,a4,800042d8 <__mem_free+0x2c>
    800042ec:	ff852803          	lw	a6,-8(a0)
    800042f0:	02081613          	slli	a2,a6,0x20
    800042f4:	01c65613          	srli	a2,a2,0x1c
    800042f8:	00c68633          	add	a2,a3,a2
    800042fc:	02c70a63          	beq	a4,a2,80004330 <__mem_free+0x84>
    80004300:	fee53823          	sd	a4,-16(a0)
    80004304:	0087a503          	lw	a0,8(a5)
    80004308:	02051613          	slli	a2,a0,0x20
    8000430c:	01c65613          	srli	a2,a2,0x1c
    80004310:	00c78633          	add	a2,a5,a2
    80004314:	04c68263          	beq	a3,a2,80004358 <__mem_free+0xac>
    80004318:	00813403          	ld	s0,8(sp)
    8000431c:	00d7b023          	sd	a3,0(a5)
    80004320:	00f5b023          	sd	a5,0(a1)
    80004324:	00000513          	li	a0,0
    80004328:	01010113          	addi	sp,sp,16
    8000432c:	00008067          	ret
    80004330:	00872603          	lw	a2,8(a4)
    80004334:	00073703          	ld	a4,0(a4)
    80004338:	0106083b          	addw	a6,a2,a6
    8000433c:	ff052c23          	sw	a6,-8(a0)
    80004340:	fee53823          	sd	a4,-16(a0)
    80004344:	0087a503          	lw	a0,8(a5)
    80004348:	02051613          	slli	a2,a0,0x20
    8000434c:	01c65613          	srli	a2,a2,0x1c
    80004350:	00c78633          	add	a2,a5,a2
    80004354:	fcc692e3          	bne	a3,a2,80004318 <__mem_free+0x6c>
    80004358:	00813403          	ld	s0,8(sp)
    8000435c:	0105053b          	addw	a0,a0,a6
    80004360:	00a7a423          	sw	a0,8(a5)
    80004364:	00e7b023          	sd	a4,0(a5)
    80004368:	00f5b023          	sd	a5,0(a1)
    8000436c:	00000513          	li	a0,0
    80004370:	01010113          	addi	sp,sp,16
    80004374:	00008067          	ret

0000000080004378 <__mem_alloc>:
    80004378:	fc010113          	addi	sp,sp,-64
    8000437c:	02813823          	sd	s0,48(sp)
    80004380:	02913423          	sd	s1,40(sp)
    80004384:	03213023          	sd	s2,32(sp)
    80004388:	01513423          	sd	s5,8(sp)
    8000438c:	02113c23          	sd	ra,56(sp)
    80004390:	01313c23          	sd	s3,24(sp)
    80004394:	01413823          	sd	s4,16(sp)
    80004398:	01613023          	sd	s6,0(sp)
    8000439c:	04010413          	addi	s0,sp,64
    800043a0:	00001a97          	auipc	s5,0x1
    800043a4:	5f8a8a93          	addi	s5,s5,1528 # 80005998 <freep>
    800043a8:	00f50913          	addi	s2,a0,15
    800043ac:	000ab683          	ld	a3,0(s5)
    800043b0:	00495913          	srli	s2,s2,0x4
    800043b4:	0019049b          	addiw	s1,s2,1
    800043b8:	00048913          	mv	s2,s1
    800043bc:	0c068c63          	beqz	a3,80004494 <__mem_alloc+0x11c>
    800043c0:	0006b503          	ld	a0,0(a3)
    800043c4:	00852703          	lw	a4,8(a0)
    800043c8:	10977063          	bgeu	a4,s1,800044c8 <__mem_alloc+0x150>
    800043cc:	000017b7          	lui	a5,0x1
    800043d0:	0009099b          	sext.w	s3,s2
    800043d4:	0af4e863          	bltu	s1,a5,80004484 <__mem_alloc+0x10c>
    800043d8:	02099a13          	slli	s4,s3,0x20
    800043dc:	01ca5a13          	srli	s4,s4,0x1c
    800043e0:	fff00b13          	li	s6,-1
    800043e4:	0100006f          	j	800043f4 <__mem_alloc+0x7c>
    800043e8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800043ec:	00852703          	lw	a4,8(a0)
    800043f0:	04977463          	bgeu	a4,s1,80004438 <__mem_alloc+0xc0>
    800043f4:	00050793          	mv	a5,a0
    800043f8:	fea698e3          	bne	a3,a0,800043e8 <__mem_alloc+0x70>
    800043fc:	000a0513          	mv	a0,s4
    80004400:	00000097          	auipc	ra,0x0
    80004404:	1f0080e7          	jalr	496(ra) # 800045f0 <kvmincrease>
    80004408:	00050793          	mv	a5,a0
    8000440c:	01050513          	addi	a0,a0,16
    80004410:	07678e63          	beq	a5,s6,8000448c <__mem_alloc+0x114>
    80004414:	0137a423          	sw	s3,8(a5)
    80004418:	00000097          	auipc	ra,0x0
    8000441c:	e94080e7          	jalr	-364(ra) # 800042ac <__mem_free>
    80004420:	000ab783          	ld	a5,0(s5)
    80004424:	06078463          	beqz	a5,8000448c <__mem_alloc+0x114>
    80004428:	0007b503          	ld	a0,0(a5)
    8000442c:	00078693          	mv	a3,a5
    80004430:	00852703          	lw	a4,8(a0)
    80004434:	fc9760e3          	bltu	a4,s1,800043f4 <__mem_alloc+0x7c>
    80004438:	08e48263          	beq	s1,a4,800044bc <__mem_alloc+0x144>
    8000443c:	4127073b          	subw	a4,a4,s2
    80004440:	02071693          	slli	a3,a4,0x20
    80004444:	01c6d693          	srli	a3,a3,0x1c
    80004448:	00e52423          	sw	a4,8(a0)
    8000444c:	00d50533          	add	a0,a0,a3
    80004450:	01252423          	sw	s2,8(a0)
    80004454:	00fab023          	sd	a5,0(s5)
    80004458:	01050513          	addi	a0,a0,16
    8000445c:	03813083          	ld	ra,56(sp)
    80004460:	03013403          	ld	s0,48(sp)
    80004464:	02813483          	ld	s1,40(sp)
    80004468:	02013903          	ld	s2,32(sp)
    8000446c:	01813983          	ld	s3,24(sp)
    80004470:	01013a03          	ld	s4,16(sp)
    80004474:	00813a83          	ld	s5,8(sp)
    80004478:	00013b03          	ld	s6,0(sp)
    8000447c:	04010113          	addi	sp,sp,64
    80004480:	00008067          	ret
    80004484:	000019b7          	lui	s3,0x1
    80004488:	f51ff06f          	j	800043d8 <__mem_alloc+0x60>
    8000448c:	00000513          	li	a0,0
    80004490:	fcdff06f          	j	8000445c <__mem_alloc+0xe4>
    80004494:	00002797          	auipc	a5,0x2
    80004498:	7ac78793          	addi	a5,a5,1964 # 80006c40 <base>
    8000449c:	00078513          	mv	a0,a5
    800044a0:	00fab023          	sd	a5,0(s5)
    800044a4:	00f7b023          	sd	a5,0(a5)
    800044a8:	00000713          	li	a4,0
    800044ac:	00002797          	auipc	a5,0x2
    800044b0:	7807ae23          	sw	zero,1948(a5) # 80006c48 <base+0x8>
    800044b4:	00050693          	mv	a3,a0
    800044b8:	f11ff06f          	j	800043c8 <__mem_alloc+0x50>
    800044bc:	00053703          	ld	a4,0(a0)
    800044c0:	00e7b023          	sd	a4,0(a5)
    800044c4:	f91ff06f          	j	80004454 <__mem_alloc+0xdc>
    800044c8:	00068793          	mv	a5,a3
    800044cc:	f6dff06f          	j	80004438 <__mem_alloc+0xc0>

00000000800044d0 <__putc>:
    800044d0:	fe010113          	addi	sp,sp,-32
    800044d4:	00813823          	sd	s0,16(sp)
    800044d8:	00113c23          	sd	ra,24(sp)
    800044dc:	02010413          	addi	s0,sp,32
    800044e0:	00050793          	mv	a5,a0
    800044e4:	fef40593          	addi	a1,s0,-17
    800044e8:	00100613          	li	a2,1
    800044ec:	00000513          	li	a0,0
    800044f0:	fef407a3          	sb	a5,-17(s0)
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	918080e7          	jalr	-1768(ra) # 80002e0c <console_write>
    800044fc:	01813083          	ld	ra,24(sp)
    80004500:	01013403          	ld	s0,16(sp)
    80004504:	02010113          	addi	sp,sp,32
    80004508:	00008067          	ret

000000008000450c <__getc>:
    8000450c:	fe010113          	addi	sp,sp,-32
    80004510:	00813823          	sd	s0,16(sp)
    80004514:	00113c23          	sd	ra,24(sp)
    80004518:	02010413          	addi	s0,sp,32
    8000451c:	fe840593          	addi	a1,s0,-24
    80004520:	00100613          	li	a2,1
    80004524:	00000513          	li	a0,0
    80004528:	fffff097          	auipc	ra,0xfffff
    8000452c:	8c4080e7          	jalr	-1852(ra) # 80002dec <console_read>
    80004530:	fe844503          	lbu	a0,-24(s0)
    80004534:	01813083          	ld	ra,24(sp)
    80004538:	01013403          	ld	s0,16(sp)
    8000453c:	02010113          	addi	sp,sp,32
    80004540:	00008067          	ret

0000000080004544 <console_handler>:
    80004544:	fe010113          	addi	sp,sp,-32
    80004548:	00813823          	sd	s0,16(sp)
    8000454c:	00113c23          	sd	ra,24(sp)
    80004550:	00913423          	sd	s1,8(sp)
    80004554:	02010413          	addi	s0,sp,32
    80004558:	14202773          	csrr	a4,scause
    8000455c:	100027f3          	csrr	a5,sstatus
    80004560:	0027f793          	andi	a5,a5,2
    80004564:	06079e63          	bnez	a5,800045e0 <console_handler+0x9c>
    80004568:	00074c63          	bltz	a4,80004580 <console_handler+0x3c>
    8000456c:	01813083          	ld	ra,24(sp)
    80004570:	01013403          	ld	s0,16(sp)
    80004574:	00813483          	ld	s1,8(sp)
    80004578:	02010113          	addi	sp,sp,32
    8000457c:	00008067          	ret
    80004580:	0ff77713          	andi	a4,a4,255
    80004584:	00900793          	li	a5,9
    80004588:	fef712e3          	bne	a4,a5,8000456c <console_handler+0x28>
    8000458c:	ffffe097          	auipc	ra,0xffffe
    80004590:	4b8080e7          	jalr	1208(ra) # 80002a44 <plic_claim>
    80004594:	00a00793          	li	a5,10
    80004598:	00050493          	mv	s1,a0
    8000459c:	02f50c63          	beq	a0,a5,800045d4 <console_handler+0x90>
    800045a0:	fc0506e3          	beqz	a0,8000456c <console_handler+0x28>
    800045a4:	00050593          	mv	a1,a0
    800045a8:	00001517          	auipc	a0,0x1
    800045ac:	c9050513          	addi	a0,a0,-880 # 80005238 <kvmincrease+0xc48>
    800045b0:	fffff097          	auipc	ra,0xfffff
    800045b4:	8d8080e7          	jalr	-1832(ra) # 80002e88 <__printf>
    800045b8:	01013403          	ld	s0,16(sp)
    800045bc:	01813083          	ld	ra,24(sp)
    800045c0:	00048513          	mv	a0,s1
    800045c4:	00813483          	ld	s1,8(sp)
    800045c8:	02010113          	addi	sp,sp,32
    800045cc:	ffffe317          	auipc	t1,0xffffe
    800045d0:	4b030067          	jr	1200(t1) # 80002a7c <plic_complete>
    800045d4:	fffff097          	auipc	ra,0xfffff
    800045d8:	1bc080e7          	jalr	444(ra) # 80003790 <uartintr>
    800045dc:	fddff06f          	j	800045b8 <console_handler+0x74>
    800045e0:	00001517          	auipc	a0,0x1
    800045e4:	d5850513          	addi	a0,a0,-680 # 80005338 <digits+0x78>
    800045e8:	fffff097          	auipc	ra,0xfffff
    800045ec:	844080e7          	jalr	-1980(ra) # 80002e2c <panic>

00000000800045f0 <kvmincrease>:
    800045f0:	fe010113          	addi	sp,sp,-32
    800045f4:	01213023          	sd	s2,0(sp)
    800045f8:	00001937          	lui	s2,0x1
    800045fc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004600:	00813823          	sd	s0,16(sp)
    80004604:	00113c23          	sd	ra,24(sp)
    80004608:	00913423          	sd	s1,8(sp)
    8000460c:	02010413          	addi	s0,sp,32
    80004610:	01250933          	add	s2,a0,s2
    80004614:	00c95913          	srli	s2,s2,0xc
    80004618:	02090863          	beqz	s2,80004648 <kvmincrease+0x58>
    8000461c:	00000493          	li	s1,0
    80004620:	00148493          	addi	s1,s1,1
    80004624:	fffff097          	auipc	ra,0xfffff
    80004628:	4bc080e7          	jalr	1212(ra) # 80003ae0 <kalloc>
    8000462c:	fe991ae3          	bne	s2,s1,80004620 <kvmincrease+0x30>
    80004630:	01813083          	ld	ra,24(sp)
    80004634:	01013403          	ld	s0,16(sp)
    80004638:	00813483          	ld	s1,8(sp)
    8000463c:	00013903          	ld	s2,0(sp)
    80004640:	02010113          	addi	sp,sp,32
    80004644:	00008067          	ret
    80004648:	01813083          	ld	ra,24(sp)
    8000464c:	01013403          	ld	s0,16(sp)
    80004650:	00813483          	ld	s1,8(sp)
    80004654:	00013903          	ld	s2,0(sp)
    80004658:	00000513          	li	a0,0
    8000465c:	02010113          	addi	sp,sp,32
    80004660:	00008067          	ret
	...
