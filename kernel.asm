
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	e0013103          	ld	sp,-512(sp) # 80005e00 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	7d4020ef          	jal	ra,800027f0 <start>

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
    80001084:	15c010ef          	jal	ra,800021e0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001178:	804080e7          	jalr	-2044(ra) # 80004978 <__mem_alloc>
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

0000000080001268 <_ZN6Thread7wrapperEPv>:
#include "../h/syscall_cpp.hpp"

void Thread::wrapper(void* thread) {
    if(thread) {
    80001268:	02050863          	beqz	a0,80001298 <_ZN6Thread7wrapperEPv+0x30>
void Thread::wrapper(void* thread) {
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00113423          	sd	ra,8(sp)
    80001274:	00813023          	sd	s0,0(sp)
    80001278:	01010413          	addi	s0,sp,16
        ((Thread*)thread)->run();
    8000127c:	00053783          	ld	a5,0(a0) # 8000 <_entry-0x7fff8000>
    80001280:	0107b783          	ld	a5,16(a5)
    80001284:	000780e7          	jalr	a5
    }
}
    80001288:	00813083          	ld	ra,8(sp)
    8000128c:	00013403          	ld	s0,0(sp)
    80001290:	01010113          	addi	sp,sp,16
    80001294:	00008067          	ret
    80001298:	00008067          	ret

000000008000129c <_ZN6ThreadD1Ev>:

void Thread::dispatch() {
    thread_dispatch();
}

Thread::~Thread() {
    8000129c:	fe010113          	addi	sp,sp,-32
    800012a0:	00113c23          	sd	ra,24(sp)
    800012a4:	00813823          	sd	s0,16(sp)
    800012a8:	00913423          	sd	s1,8(sp)
    800012ac:	02010413          	addi	s0,sp,32
    800012b0:	00005797          	auipc	a5,0x5
    800012b4:	a6078793          	addi	a5,a5,-1440 # 80005d10 <_ZTV6Thread+0x10>
    800012b8:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    800012bc:	00853483          	ld	s1,8(a0)
    800012c0:	02048063          	beqz	s1,800012e0 <_ZN6ThreadD1Ev+0x44>
class TCB
{
public:
    enum State {CREATED, READY, RUNNING, FINISHED};

    ~TCB() { delete[] stack; }
    800012c4:	0184b503          	ld	a0,24(s1)
    800012c8:	00050663          	beqz	a0,800012d4 <_ZN6ThreadD1Ev+0x38>
    800012cc:	00001097          	auipc	ra,0x1
    800012d0:	ecc080e7          	jalr	-308(ra) # 80002198 <_ZdaPv>
    800012d4:	00048513          	mv	a0,s1
    800012d8:	00001097          	auipc	ra,0x1
    800012dc:	e98080e7          	jalr	-360(ra) # 80002170 <_ZdlPv>
    800012e0:	01813083          	ld	ra,24(sp)
    800012e4:	01013403          	ld	s0,16(sp)
    800012e8:	00813483          	ld	s1,8(sp)
    800012ec:	02010113          	addi	sp,sp,32
    800012f0:	00008067          	ret

00000000800012f4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800012f4:	fe010113          	addi	sp,sp,-32
    800012f8:	00113c23          	sd	ra,24(sp)
    800012fc:	00813823          	sd	s0,16(sp)
    80001300:	00913423          	sd	s1,8(sp)
    80001304:	02010413          	addi	s0,sp,32
    80001308:	00050493          	mv	s1,a0
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	f90080e7          	jalr	-112(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001314:	00048513          	mv	a0,s1
    80001318:	00001097          	auipc	ra,0x1
    8000131c:	e58080e7          	jalr	-424(ra) # 80002170 <_ZdlPv>
    80001320:	01813083          	ld	ra,24(sp)
    80001324:	01013403          	ld	s0,16(sp)
    80001328:	00813483          	ld	s1,8(sp)
    8000132c:	02010113          	addi	sp,sp,32
    80001330:	00008067          	ret

0000000080001334 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001334:	fe010113          	addi	sp,sp,-32
    80001338:	00113c23          	sd	ra,24(sp)
    8000133c:	00813823          	sd	s0,16(sp)
    80001340:	00913423          	sd	s1,8(sp)
    80001344:	02010413          	addi	s0,sp,32
    80001348:	00050493          	mv	s1,a0
    8000134c:	00005797          	auipc	a5,0x5
    80001350:	9c478793          	addi	a5,a5,-1596 # 80005d10 <_ZTV6Thread+0x10>
    80001354:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, body, arg);
    80001358:	00850513          	addi	a0,a0,8
    8000135c:	00000097          	auipc	ra,0x0
    80001360:	de8080e7          	jalr	-536(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_start(this->myHandle);
    80001364:	0084b503          	ld	a0,8(s1)
    80001368:	00000097          	auipc	ra,0x0
    8000136c:	ec8080e7          	jalr	-312(ra) # 80001230 <_Z12thread_startP3TCB>
}
    80001370:	01813083          	ld	ra,24(sp)
    80001374:	01013403          	ld	s0,16(sp)
    80001378:	00813483          	ld	s1,8(sp)
    8000137c:	02010113          	addi	sp,sp,32
    80001380:	00008067          	ret

0000000080001384 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001384:	ff010113          	addi	sp,sp,-16
    80001388:	00113423          	sd	ra,8(sp)
    8000138c:	00813023          	sd	s0,0(sp)
    80001390:	01010413          	addi	s0,sp,16
    80001394:	00005797          	auipc	a5,0x5
    80001398:	97c78793          	addi	a5,a5,-1668 # 80005d10 <_ZTV6Thread+0x10>
    8000139c:	00f53023          	sd	a5,0(a0)
    thread_create(&this->myHandle, Thread::wrapper, this);
    800013a0:	00050613          	mv	a2,a0
    800013a4:	00000597          	auipc	a1,0x0
    800013a8:	ec458593          	addi	a1,a1,-316 # 80001268 <_ZN6Thread7wrapperEPv>
    800013ac:	00850513          	addi	a0,a0,8
    800013b0:	00000097          	auipc	ra,0x0
    800013b4:	d94080e7          	jalr	-620(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800013b8:	00813083          	ld	ra,8(sp)
    800013bc:	00013403          	ld	s0,0(sp)
    800013c0:	01010113          	addi	sp,sp,16
    800013c4:	00008067          	ret

00000000800013c8 <_ZN6Thread5startEv>:
int Thread::start() {
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00113423          	sd	ra,8(sp)
    800013d0:	00813023          	sd	s0,0(sp)
    800013d4:	01010413          	addi	s0,sp,16
    return thread_start(this->myHandle);
    800013d8:	00853503          	ld	a0,8(a0)
    800013dc:	00000097          	auipc	ra,0x0
    800013e0:	e54080e7          	jalr	-428(ra) # 80001230 <_Z12thread_startP3TCB>
}
    800013e4:	00813083          	ld	ra,8(sp)
    800013e8:	00013403          	ld	s0,0(sp)
    800013ec:	01010113          	addi	sp,sp,16
    800013f0:	00008067          	ret

00000000800013f4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800013f4:	ff010113          	addi	sp,sp,-16
    800013f8:	00113423          	sd	ra,8(sp)
    800013fc:	00813023          	sd	s0,0(sp)
    80001400:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001404:	00000097          	auipc	ra,0x0
    80001408:	e08080e7          	jalr	-504(ra) # 8000120c <_Z15thread_dispatchv>
}
    8000140c:	00813083          	ld	ra,8(sp)
    80001410:	00013403          	ld	s0,0(sp)
    80001414:	01010113          	addi	sp,sp,16
    80001418:	00008067          	ret

000000008000141c <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    8000141c:	ff010113          	addi	sp,sp,-16
    80001420:	00813423          	sd	s0,8(sp)
    80001424:	01010413          	addi	s0,sp,16
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80001434:	fe010113          	addi	sp,sp,-32
    80001438:	00113c23          	sd	ra,24(sp)
    8000143c:	00813823          	sd	s0,16(sp)
    80001440:	00913423          	sd	s1,8(sp)
    80001444:	01213023          	sd	s2,0(sp)
    80001448:	02010413          	addi	s0,sp,32
    8000144c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001450:	00100793          	li	a5,1
    80001454:	02a7f863          	bgeu	a5,a0,80001484 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001458:	00a00793          	li	a5,10
    8000145c:	02f577b3          	remu	a5,a0,a5
    80001460:	02078e63          	beqz	a5,8000149c <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001464:	fff48513          	addi	a0,s1,-1
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	fcc080e7          	jalr	-52(ra) # 80001434 <_Z9fibonaccim>
    80001470:	00050913          	mv	s2,a0
    80001474:	ffe48513          	addi	a0,s1,-2
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	fbc080e7          	jalr	-68(ra) # 80001434 <_Z9fibonaccim>
    80001480:	00a90533          	add	a0,s2,a0
}
    80001484:	01813083          	ld	ra,24(sp)
    80001488:	01013403          	ld	s0,16(sp)
    8000148c:	00813483          	ld	s1,8(sp)
    80001490:	00013903          	ld	s2,0(sp)
    80001494:	02010113          	addi	sp,sp,32
    80001498:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	d70080e7          	jalr	-656(ra) # 8000120c <_Z15thread_dispatchv>
    800014a4:	fc1ff06f          	j	80001464 <_Z9fibonaccim+0x30>

00000000800014a8 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800014a8:	fe010113          	addi	sp,sp,-32
    800014ac:	00113c23          	sd	ra,24(sp)
    800014b0:	00813823          	sd	s0,16(sp)
    800014b4:	00913423          	sd	s1,8(sp)
    800014b8:	01213023          	sd	s2,0(sp)
    800014bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800014c0:	00000913          	li	s2,0
    800014c4:	0380006f          	j	800014fc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800014c8:	00000097          	auipc	ra,0x0
    800014cc:	d44080e7          	jalr	-700(ra) # 8000120c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800014d0:	00148493          	addi	s1,s1,1
    800014d4:	000027b7          	lui	a5,0x2
    800014d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014dc:	0097ee63          	bltu	a5,s1,800014f8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800014e0:	00000713          	li	a4,0
    800014e4:	000077b7          	lui	a5,0x7
    800014e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014ec:	fce7eee3          	bltu	a5,a4,800014c8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800014f0:	00170713          	addi	a4,a4,1
    800014f4:	ff1ff06f          	j	800014e4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800014f8:	00190913          	addi	s2,s2,1
    800014fc:	00900793          	li	a5,9
    80001500:	0527e063          	bltu	a5,s2,80001540 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80001504:	00004517          	auipc	a0,0x4
    80001508:	afc50513          	addi	a0,a0,-1284 # 80005000 <kvmincrease+0x410>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	038080e7          	jalr	56(ra) # 80002544 <_Z11printStringPKc>
    80001514:	00000613          	li	a2,0
    80001518:	00a00593          	li	a1,10
    8000151c:	0009051b          	sext.w	a0,s2
    80001520:	00001097          	auipc	ra,0x1
    80001524:	1bc080e7          	jalr	444(ra) # 800026dc <_Z8printIntiii>
    80001528:	00004517          	auipc	a0,0x4
    8000152c:	c2850513          	addi	a0,a0,-984 # 80005150 <kvmincrease+0x560>
    80001530:	00001097          	auipc	ra,0x1
    80001534:	014080e7          	jalr	20(ra) # 80002544 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001538:	00000493          	li	s1,0
    8000153c:	f99ff06f          	j	800014d4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001540:	00004517          	auipc	a0,0x4
    80001544:	ac850513          	addi	a0,a0,-1336 # 80005008 <kvmincrease+0x418>
    80001548:	00001097          	auipc	ra,0x1
    8000154c:	ffc080e7          	jalr	-4(ra) # 80002544 <_Z11printStringPKc>
    finishedA = true;
    80001550:	00100793          	li	a5,1
    80001554:	00005717          	auipc	a4,0x5
    80001558:	90f70623          	sb	a5,-1780(a4) # 80005e60 <finishedA>
}
    8000155c:	01813083          	ld	ra,24(sp)
    80001560:	01013403          	ld	s0,16(sp)
    80001564:	00813483          	ld	s1,8(sp)
    80001568:	00013903          	ld	s2,0(sp)
    8000156c:	02010113          	addi	sp,sp,32
    80001570:	00008067          	ret

0000000080001574 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80001574:	fe010113          	addi	sp,sp,-32
    80001578:	00113c23          	sd	ra,24(sp)
    8000157c:	00813823          	sd	s0,16(sp)
    80001580:	00913423          	sd	s1,8(sp)
    80001584:	01213023          	sd	s2,0(sp)
    80001588:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000158c:	00000913          	li	s2,0
    80001590:	0380006f          	j	800015c8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001594:	00000097          	auipc	ra,0x0
    80001598:	c78080e7          	jalr	-904(ra) # 8000120c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000159c:	00148493          	addi	s1,s1,1
    800015a0:	000027b7          	lui	a5,0x2
    800015a4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015a8:	0097ee63          	bltu	a5,s1,800015c4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800015ac:	00000713          	li	a4,0
    800015b0:	000077b7          	lui	a5,0x7
    800015b4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800015b8:	fce7eee3          	bltu	a5,a4,80001594 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800015bc:	00170713          	addi	a4,a4,1
    800015c0:	ff1ff06f          	j	800015b0 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800015c4:	00190913          	addi	s2,s2,1
    800015c8:	00f00793          	li	a5,15
    800015cc:	0527e063          	bltu	a5,s2,8000160c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800015d0:	00004517          	auipc	a0,0x4
    800015d4:	a4850513          	addi	a0,a0,-1464 # 80005018 <kvmincrease+0x428>
    800015d8:	00001097          	auipc	ra,0x1
    800015dc:	f6c080e7          	jalr	-148(ra) # 80002544 <_Z11printStringPKc>
    800015e0:	00000613          	li	a2,0
    800015e4:	00a00593          	li	a1,10
    800015e8:	0009051b          	sext.w	a0,s2
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	0f0080e7          	jalr	240(ra) # 800026dc <_Z8printIntiii>
    800015f4:	00004517          	auipc	a0,0x4
    800015f8:	b5c50513          	addi	a0,a0,-1188 # 80005150 <kvmincrease+0x560>
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	f48080e7          	jalr	-184(ra) # 80002544 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001604:	00000493          	li	s1,0
    80001608:	f99ff06f          	j	800015a0 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000160c:	00004517          	auipc	a0,0x4
    80001610:	a1450513          	addi	a0,a0,-1516 # 80005020 <kvmincrease+0x430>
    80001614:	00001097          	auipc	ra,0x1
    80001618:	f30080e7          	jalr	-208(ra) # 80002544 <_Z11printStringPKc>
    finishedB = true;
    8000161c:	00100793          	li	a5,1
    80001620:	00005717          	auipc	a4,0x5
    80001624:	84f700a3          	sb	a5,-1983(a4) # 80005e61 <finishedB>
    thread_dispatch();
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	be4080e7          	jalr	-1052(ra) # 8000120c <_Z15thread_dispatchv>
}
    80001630:	01813083          	ld	ra,24(sp)
    80001634:	01013403          	ld	s0,16(sp)
    80001638:	00813483          	ld	s1,8(sp)
    8000163c:	00013903          	ld	s2,0(sp)
    80001640:	02010113          	addi	sp,sp,32
    80001644:	00008067          	ret

0000000080001648 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80001648:	fe010113          	addi	sp,sp,-32
    8000164c:	00113c23          	sd	ra,24(sp)
    80001650:	00813823          	sd	s0,16(sp)
    80001654:	00913423          	sd	s1,8(sp)
    80001658:	01213023          	sd	s2,0(sp)
    8000165c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001660:	00000493          	li	s1,0
    80001664:	0400006f          	j	800016a4 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001668:	00004517          	auipc	a0,0x4
    8000166c:	9c850513          	addi	a0,a0,-1592 # 80005030 <kvmincrease+0x440>
    80001670:	00001097          	auipc	ra,0x1
    80001674:	ed4080e7          	jalr	-300(ra) # 80002544 <_Z11printStringPKc>
    80001678:	00000613          	li	a2,0
    8000167c:	00a00593          	li	a1,10
    80001680:	00048513          	mv	a0,s1
    80001684:	00001097          	auipc	ra,0x1
    80001688:	058080e7          	jalr	88(ra) # 800026dc <_Z8printIntiii>
    8000168c:	00004517          	auipc	a0,0x4
    80001690:	ac450513          	addi	a0,a0,-1340 # 80005150 <kvmincrease+0x560>
    80001694:	00001097          	auipc	ra,0x1
    80001698:	eb0080e7          	jalr	-336(ra) # 80002544 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000169c:	0014849b          	addiw	s1,s1,1
    800016a0:	0ff4f493          	andi	s1,s1,255
    800016a4:	00200793          	li	a5,2
    800016a8:	fc97f0e3          	bgeu	a5,s1,80001668 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800016ac:	00004517          	auipc	a0,0x4
    800016b0:	98c50513          	addi	a0,a0,-1652 # 80005038 <kvmincrease+0x448>
    800016b4:	00001097          	auipc	ra,0x1
    800016b8:	e90080e7          	jalr	-368(ra) # 80002544 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800016bc:	00700313          	li	t1,7
    thread_dispatch();
    800016c0:	00000097          	auipc	ra,0x0
    800016c4:	b4c080e7          	jalr	-1204(ra) # 8000120c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800016c8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800016cc:	00004517          	auipc	a0,0x4
    800016d0:	97c50513          	addi	a0,a0,-1668 # 80005048 <kvmincrease+0x458>
    800016d4:	00001097          	auipc	ra,0x1
    800016d8:	e70080e7          	jalr	-400(ra) # 80002544 <_Z11printStringPKc>
    800016dc:	00000613          	li	a2,0
    800016e0:	00a00593          	li	a1,10
    800016e4:	0009051b          	sext.w	a0,s2
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	ff4080e7          	jalr	-12(ra) # 800026dc <_Z8printIntiii>
    800016f0:	00004517          	auipc	a0,0x4
    800016f4:	a6050513          	addi	a0,a0,-1440 # 80005150 <kvmincrease+0x560>
    800016f8:	00001097          	auipc	ra,0x1
    800016fc:	e4c080e7          	jalr	-436(ra) # 80002544 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001700:	00c00513          	li	a0,12
    80001704:	00000097          	auipc	ra,0x0
    80001708:	d30080e7          	jalr	-720(ra) # 80001434 <_Z9fibonaccim>
    8000170c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80001710:	00004517          	auipc	a0,0x4
    80001714:	94050513          	addi	a0,a0,-1728 # 80005050 <kvmincrease+0x460>
    80001718:	00001097          	auipc	ra,0x1
    8000171c:	e2c080e7          	jalr	-468(ra) # 80002544 <_Z11printStringPKc>
    80001720:	00000613          	li	a2,0
    80001724:	00a00593          	li	a1,10
    80001728:	0009051b          	sext.w	a0,s2
    8000172c:	00001097          	auipc	ra,0x1
    80001730:	fb0080e7          	jalr	-80(ra) # 800026dc <_Z8printIntiii>
    80001734:	00004517          	auipc	a0,0x4
    80001738:	a1c50513          	addi	a0,a0,-1508 # 80005150 <kvmincrease+0x560>
    8000173c:	00001097          	auipc	ra,0x1
    80001740:	e08080e7          	jalr	-504(ra) # 80002544 <_Z11printStringPKc>
    80001744:	0400006f          	j	80001784 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001748:	00004517          	auipc	a0,0x4
    8000174c:	8e850513          	addi	a0,a0,-1816 # 80005030 <kvmincrease+0x440>
    80001750:	00001097          	auipc	ra,0x1
    80001754:	df4080e7          	jalr	-524(ra) # 80002544 <_Z11printStringPKc>
    80001758:	00000613          	li	a2,0
    8000175c:	00a00593          	li	a1,10
    80001760:	00048513          	mv	a0,s1
    80001764:	00001097          	auipc	ra,0x1
    80001768:	f78080e7          	jalr	-136(ra) # 800026dc <_Z8printIntiii>
    8000176c:	00004517          	auipc	a0,0x4
    80001770:	9e450513          	addi	a0,a0,-1564 # 80005150 <kvmincrease+0x560>
    80001774:	00001097          	auipc	ra,0x1
    80001778:	dd0080e7          	jalr	-560(ra) # 80002544 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000177c:	0014849b          	addiw	s1,s1,1
    80001780:	0ff4f493          	andi	s1,s1,255
    80001784:	00500793          	li	a5,5
    80001788:	fc97f0e3          	bgeu	a5,s1,80001748 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    8000178c:	00004517          	auipc	a0,0x4
    80001790:	8d450513          	addi	a0,a0,-1836 # 80005060 <kvmincrease+0x470>
    80001794:	00001097          	auipc	ra,0x1
    80001798:	db0080e7          	jalr	-592(ra) # 80002544 <_Z11printStringPKc>
    finishedC = true;
    8000179c:	00100793          	li	a5,1
    800017a0:	00004717          	auipc	a4,0x4
    800017a4:	6cf70123          	sb	a5,1730(a4) # 80005e62 <finishedC>
    thread_dispatch();
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	a64080e7          	jalr	-1436(ra) # 8000120c <_Z15thread_dispatchv>
}
    800017b0:	01813083          	ld	ra,24(sp)
    800017b4:	01013403          	ld	s0,16(sp)
    800017b8:	00813483          	ld	s1,8(sp)
    800017bc:	00013903          	ld	s2,0(sp)
    800017c0:	02010113          	addi	sp,sp,32
    800017c4:	00008067          	ret

00000000800017c8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800017c8:	fe010113          	addi	sp,sp,-32
    800017cc:	00113c23          	sd	ra,24(sp)
    800017d0:	00813823          	sd	s0,16(sp)
    800017d4:	00913423          	sd	s1,8(sp)
    800017d8:	01213023          	sd	s2,0(sp)
    800017dc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800017e0:	00a00493          	li	s1,10
    800017e4:	0400006f          	j	80001824 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800017e8:	00004517          	auipc	a0,0x4
    800017ec:	88850513          	addi	a0,a0,-1912 # 80005070 <kvmincrease+0x480>
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	d54080e7          	jalr	-684(ra) # 80002544 <_Z11printStringPKc>
    800017f8:	00000613          	li	a2,0
    800017fc:	00a00593          	li	a1,10
    80001800:	00048513          	mv	a0,s1
    80001804:	00001097          	auipc	ra,0x1
    80001808:	ed8080e7          	jalr	-296(ra) # 800026dc <_Z8printIntiii>
    8000180c:	00004517          	auipc	a0,0x4
    80001810:	94450513          	addi	a0,a0,-1724 # 80005150 <kvmincrease+0x560>
    80001814:	00001097          	auipc	ra,0x1
    80001818:	d30080e7          	jalr	-720(ra) # 80002544 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000181c:	0014849b          	addiw	s1,s1,1
    80001820:	0ff4f493          	andi	s1,s1,255
    80001824:	00c00793          	li	a5,12
    80001828:	fc97f0e3          	bgeu	a5,s1,800017e8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000182c:	00004517          	auipc	a0,0x4
    80001830:	84c50513          	addi	a0,a0,-1972 # 80005078 <kvmincrease+0x488>
    80001834:	00001097          	auipc	ra,0x1
    80001838:	d10080e7          	jalr	-752(ra) # 80002544 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000183c:	00500313          	li	t1,5
    thread_dispatch();
    80001840:	00000097          	auipc	ra,0x0
    80001844:	9cc080e7          	jalr	-1588(ra) # 8000120c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001848:	01000513          	li	a0,16
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	be8080e7          	jalr	-1048(ra) # 80001434 <_Z9fibonaccim>
    80001854:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001858:	00004517          	auipc	a0,0x4
    8000185c:	83050513          	addi	a0,a0,-2000 # 80005088 <kvmincrease+0x498>
    80001860:	00001097          	auipc	ra,0x1
    80001864:	ce4080e7          	jalr	-796(ra) # 80002544 <_Z11printStringPKc>
    80001868:	00000613          	li	a2,0
    8000186c:	00a00593          	li	a1,10
    80001870:	0009051b          	sext.w	a0,s2
    80001874:	00001097          	auipc	ra,0x1
    80001878:	e68080e7          	jalr	-408(ra) # 800026dc <_Z8printIntiii>
    8000187c:	00004517          	auipc	a0,0x4
    80001880:	8d450513          	addi	a0,a0,-1836 # 80005150 <kvmincrease+0x560>
    80001884:	00001097          	auipc	ra,0x1
    80001888:	cc0080e7          	jalr	-832(ra) # 80002544 <_Z11printStringPKc>
    8000188c:	0400006f          	j	800018cc <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001890:	00003517          	auipc	a0,0x3
    80001894:	7e050513          	addi	a0,a0,2016 # 80005070 <kvmincrease+0x480>
    80001898:	00001097          	auipc	ra,0x1
    8000189c:	cac080e7          	jalr	-852(ra) # 80002544 <_Z11printStringPKc>
    800018a0:	00000613          	li	a2,0
    800018a4:	00a00593          	li	a1,10
    800018a8:	00048513          	mv	a0,s1
    800018ac:	00001097          	auipc	ra,0x1
    800018b0:	e30080e7          	jalr	-464(ra) # 800026dc <_Z8printIntiii>
    800018b4:	00004517          	auipc	a0,0x4
    800018b8:	89c50513          	addi	a0,a0,-1892 # 80005150 <kvmincrease+0x560>
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	c88080e7          	jalr	-888(ra) # 80002544 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800018c4:	0014849b          	addiw	s1,s1,1
    800018c8:	0ff4f493          	andi	s1,s1,255
    800018cc:	00f00793          	li	a5,15
    800018d0:	fc97f0e3          	bgeu	a5,s1,80001890 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800018d4:	00003517          	auipc	a0,0x3
    800018d8:	7c450513          	addi	a0,a0,1988 # 80005098 <kvmincrease+0x4a8>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	c68080e7          	jalr	-920(ra) # 80002544 <_Z11printStringPKc>
    finishedD = true;
    800018e4:	00100793          	li	a5,1
    800018e8:	00004717          	auipc	a4,0x4
    800018ec:	56f70da3          	sb	a5,1403(a4) # 80005e63 <finishedD>
    thread_dispatch();
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	91c080e7          	jalr	-1764(ra) # 8000120c <_Z15thread_dispatchv>
}
    800018f8:	01813083          	ld	ra,24(sp)
    800018fc:	01013403          	ld	s0,16(sp)
    80001900:	00813483          	ld	s1,8(sp)
    80001904:	00013903          	ld	s2,0(sp)
    80001908:	02010113          	addi	sp,sp,32
    8000190c:	00008067          	ret

0000000080001910 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80001910:	fc010113          	addi	sp,sp,-64
    80001914:	02113c23          	sd	ra,56(sp)
    80001918:	02813823          	sd	s0,48(sp)
    8000191c:	02913423          	sd	s1,40(sp)
    80001920:	03213023          	sd	s2,32(sp)
    80001924:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80001928:	01000513          	li	a0,16
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	7f4080e7          	jalr	2036(ra) # 80002120 <_Znwm>
    80001934:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80001938:	00000097          	auipc	ra,0x0
    8000193c:	a4c080e7          	jalr	-1460(ra) # 80001384 <_ZN6ThreadC1Ev>
    80001940:	00004797          	auipc	a5,0x4
    80001944:	40078793          	addi	a5,a5,1024 # 80005d40 <_ZTV7WorkerA+0x10>
    80001948:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    8000194c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80001950:	00003517          	auipc	a0,0x3
    80001954:	75850513          	addi	a0,a0,1880 # 800050a8 <kvmincrease+0x4b8>
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	bec080e7          	jalr	-1044(ra) # 80002544 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80001960:	01000513          	li	a0,16
    80001964:	00000097          	auipc	ra,0x0
    80001968:	7bc080e7          	jalr	1980(ra) # 80002120 <_Znwm>
    8000196c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80001970:	00000097          	auipc	ra,0x0
    80001974:	a14080e7          	jalr	-1516(ra) # 80001384 <_ZN6ThreadC1Ev>
    80001978:	00004797          	auipc	a5,0x4
    8000197c:	3f078793          	addi	a5,a5,1008 # 80005d68 <_ZTV7WorkerB+0x10>
    80001980:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80001984:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80001988:	00003517          	auipc	a0,0x3
    8000198c:	73850513          	addi	a0,a0,1848 # 800050c0 <kvmincrease+0x4d0>
    80001990:	00001097          	auipc	ra,0x1
    80001994:	bb4080e7          	jalr	-1100(ra) # 80002544 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80001998:	01000513          	li	a0,16
    8000199c:	00000097          	auipc	ra,0x0
    800019a0:	784080e7          	jalr	1924(ra) # 80002120 <_Znwm>
    800019a4:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	9dc080e7          	jalr	-1572(ra) # 80001384 <_ZN6ThreadC1Ev>
    800019b0:	00004797          	auipc	a5,0x4
    800019b4:	3e078793          	addi	a5,a5,992 # 80005d90 <_ZTV7WorkerC+0x10>
    800019b8:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800019bc:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800019c0:	00003517          	auipc	a0,0x3
    800019c4:	71850513          	addi	a0,a0,1816 # 800050d8 <kvmincrease+0x4e8>
    800019c8:	00001097          	auipc	ra,0x1
    800019cc:	b7c080e7          	jalr	-1156(ra) # 80002544 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800019d0:	01000513          	li	a0,16
    800019d4:	00000097          	auipc	ra,0x0
    800019d8:	74c080e7          	jalr	1868(ra) # 80002120 <_Znwm>
    800019dc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	9a4080e7          	jalr	-1628(ra) # 80001384 <_ZN6ThreadC1Ev>
    800019e8:	00004797          	auipc	a5,0x4
    800019ec:	3d078793          	addi	a5,a5,976 # 80005db8 <_ZTV7WorkerD+0x10>
    800019f0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800019f4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800019f8:	00003517          	auipc	a0,0x3
    800019fc:	6f850513          	addi	a0,a0,1784 # 800050f0 <kvmincrease+0x500>
    80001a00:	00001097          	auipc	ra,0x1
    80001a04:	b44080e7          	jalr	-1212(ra) # 80002544 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80001a08:	00000493          	li	s1,0
    80001a0c:	00300793          	li	a5,3
    80001a10:	0297c663          	blt	a5,s1,80001a3c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80001a14:	00349793          	slli	a5,s1,0x3
    80001a18:	fe040713          	addi	a4,s0,-32
    80001a1c:	00f707b3          	add	a5,a4,a5
    80001a20:	fe07b503          	ld	a0,-32(a5)
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	9a4080e7          	jalr	-1628(ra) # 800013c8 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80001a2c:	0014849b          	addiw	s1,s1,1
    80001a30:	fddff06f          	j	80001a0c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80001a34:	00000097          	auipc	ra,0x0
    80001a38:	9c0080e7          	jalr	-1600(ra) # 800013f4 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001a3c:	00004797          	auipc	a5,0x4
    80001a40:	4247c783          	lbu	a5,1060(a5) # 80005e60 <finishedA>
    80001a44:	fe0788e3          	beqz	a5,80001a34 <_Z20Threads_CPP_API_testv+0x124>
    80001a48:	00004797          	auipc	a5,0x4
    80001a4c:	4197c783          	lbu	a5,1049(a5) # 80005e61 <finishedB>
    80001a50:	fe0782e3          	beqz	a5,80001a34 <_Z20Threads_CPP_API_testv+0x124>
    80001a54:	00004797          	auipc	a5,0x4
    80001a58:	40e7c783          	lbu	a5,1038(a5) # 80005e62 <finishedC>
    80001a5c:	fc078ce3          	beqz	a5,80001a34 <_Z20Threads_CPP_API_testv+0x124>
    80001a60:	00004797          	auipc	a5,0x4
    80001a64:	4037c783          	lbu	a5,1027(a5) # 80005e63 <finishedD>
    80001a68:	fc0786e3          	beqz	a5,80001a34 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80001a6c:	fc040493          	addi	s1,s0,-64
    80001a70:	0080006f          	j	80001a78 <_Z20Threads_CPP_API_testv+0x168>
    80001a74:	00848493          	addi	s1,s1,8
    80001a78:	fe040793          	addi	a5,s0,-32
    80001a7c:	08f48663          	beq	s1,a5,80001b08 <_Z20Threads_CPP_API_testv+0x1f8>
    80001a80:	0004b503          	ld	a0,0(s1)
    80001a84:	fe0508e3          	beqz	a0,80001a74 <_Z20Threads_CPP_API_testv+0x164>
    80001a88:	00053783          	ld	a5,0(a0)
    80001a8c:	0087b783          	ld	a5,8(a5)
    80001a90:	000780e7          	jalr	a5
    80001a94:	fe1ff06f          	j	80001a74 <_Z20Threads_CPP_API_testv+0x164>
    80001a98:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	6d0080e7          	jalr	1744(ra) # 80002170 <_ZdlPv>
    80001aa8:	00090513          	mv	a0,s2
    80001aac:	00005097          	auipc	ra,0x5
    80001ab0:	4bc080e7          	jalr	1212(ra) # 80006f68 <_Unwind_Resume>
    80001ab4:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80001ab8:	00048513          	mv	a0,s1
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	6b4080e7          	jalr	1716(ra) # 80002170 <_ZdlPv>
    80001ac4:	00090513          	mv	a0,s2
    80001ac8:	00005097          	auipc	ra,0x5
    80001acc:	4a0080e7          	jalr	1184(ra) # 80006f68 <_Unwind_Resume>
    80001ad0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80001ad4:	00048513          	mv	a0,s1
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	698080e7          	jalr	1688(ra) # 80002170 <_ZdlPv>
    80001ae0:	00090513          	mv	a0,s2
    80001ae4:	00005097          	auipc	ra,0x5
    80001ae8:	484080e7          	jalr	1156(ra) # 80006f68 <_Unwind_Resume>
    80001aec:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80001af0:	00048513          	mv	a0,s1
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	67c080e7          	jalr	1660(ra) # 80002170 <_ZdlPv>
    80001afc:	00090513          	mv	a0,s2
    80001b00:	00005097          	auipc	ra,0x5
    80001b04:	468080e7          	jalr	1128(ra) # 80006f68 <_Unwind_Resume>
}
    80001b08:	03813083          	ld	ra,56(sp)
    80001b0c:	03013403          	ld	s0,48(sp)
    80001b10:	02813483          	ld	s1,40(sp)
    80001b14:	02013903          	ld	s2,32(sp)
    80001b18:	04010113          	addi	sp,sp,64
    80001b1c:	00008067          	ret

0000000080001b20 <_Z8userMainPv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain(void* arg) {
    80001b20:	ff010113          	addi	sp,sp,-16
    80001b24:	00113423          	sd	ra,8(sp)
    80001b28:	00813023          	sd	s0,0(sp)
    80001b2c:	01010413          	addi	s0,sp,16
    printString("usao u userMain\n");
    80001b30:	00003517          	auipc	a0,0x3
    80001b34:	5d850513          	addi	a0,a0,1496 # 80005108 <kvmincrease+0x518>
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	a0c080e7          	jalr	-1524(ra) # 80002544 <_Z11printStringPKc>
    //Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80001b40:	00000097          	auipc	ra,0x0
    80001b44:	dd0080e7          	jalr	-560(ra) # 80001910 <_Z20Threads_CPP_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    printString("zavrsio userMain\n");
    80001b48:	00003517          	auipc	a0,0x3
    80001b4c:	5d850513          	addi	a0,a0,1496 # 80005120 <kvmincrease+0x530>
    80001b50:	00001097          	auipc	ra,0x1
    80001b54:	9f4080e7          	jalr	-1548(ra) # 80002544 <_Z11printStringPKc>
    80001b58:	00813083          	ld	ra,8(sp)
    80001b5c:	00013403          	ld	s0,0(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00113423          	sd	ra,8(sp)
    80001b70:	00813023          	sd	s0,0(sp)
    80001b74:	01010413          	addi	s0,sp,16
    80001b78:	00004797          	auipc	a5,0x4
    80001b7c:	1c878793          	addi	a5,a5,456 # 80005d40 <_ZTV7WorkerA+0x10>
    80001b80:	00f53023          	sd	a5,0(a0)
    80001b84:	fffff097          	auipc	ra,0xfffff
    80001b88:	718080e7          	jalr	1816(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_ZN7WorkerAD0Ev>:
    80001b9c:	fe010113          	addi	sp,sp,-32
    80001ba0:	00113c23          	sd	ra,24(sp)
    80001ba4:	00813823          	sd	s0,16(sp)
    80001ba8:	00913423          	sd	s1,8(sp)
    80001bac:	02010413          	addi	s0,sp,32
    80001bb0:	00050493          	mv	s1,a0
    80001bb4:	00004797          	auipc	a5,0x4
    80001bb8:	18c78793          	addi	a5,a5,396 # 80005d40 <_ZTV7WorkerA+0x10>
    80001bbc:	00f53023          	sd	a5,0(a0)
    80001bc0:	fffff097          	auipc	ra,0xfffff
    80001bc4:	6dc080e7          	jalr	1756(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001bc8:	00048513          	mv	a0,s1
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	5a4080e7          	jalr	1444(ra) # 80002170 <_ZdlPv>
    80001bd4:	01813083          	ld	ra,24(sp)
    80001bd8:	01013403          	ld	s0,16(sp)
    80001bdc:	00813483          	ld	s1,8(sp)
    80001be0:	02010113          	addi	sp,sp,32
    80001be4:	00008067          	ret

0000000080001be8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    80001bf8:	00004797          	auipc	a5,0x4
    80001bfc:	17078793          	addi	a5,a5,368 # 80005d68 <_ZTV7WorkerB+0x10>
    80001c00:	00f53023          	sd	a5,0(a0)
    80001c04:	fffff097          	auipc	ra,0xfffff
    80001c08:	698080e7          	jalr	1688(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001c0c:	00813083          	ld	ra,8(sp)
    80001c10:	00013403          	ld	s0,0(sp)
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret

0000000080001c1c <_ZN7WorkerBD0Ev>:
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
    80001c30:	00050493          	mv	s1,a0
    80001c34:	00004797          	auipc	a5,0x4
    80001c38:	13478793          	addi	a5,a5,308 # 80005d68 <_ZTV7WorkerB+0x10>
    80001c3c:	00f53023          	sd	a5,0(a0)
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	65c080e7          	jalr	1628(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001c48:	00048513          	mv	a0,s1
    80001c4c:	00000097          	auipc	ra,0x0
    80001c50:	524080e7          	jalr	1316(ra) # 80002170 <_ZdlPv>
    80001c54:	01813083          	ld	ra,24(sp)
    80001c58:	01013403          	ld	s0,16(sp)
    80001c5c:	00813483          	ld	s1,8(sp)
    80001c60:	02010113          	addi	sp,sp,32
    80001c64:	00008067          	ret

0000000080001c68 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80001c68:	ff010113          	addi	sp,sp,-16
    80001c6c:	00113423          	sd	ra,8(sp)
    80001c70:	00813023          	sd	s0,0(sp)
    80001c74:	01010413          	addi	s0,sp,16
    80001c78:	00004797          	auipc	a5,0x4
    80001c7c:	11878793          	addi	a5,a5,280 # 80005d90 <_ZTV7WorkerC+0x10>
    80001c80:	00f53023          	sd	a5,0(a0)
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	618080e7          	jalr	1560(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001c8c:	00813083          	ld	ra,8(sp)
    80001c90:	00013403          	ld	s0,0(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_ZN7WorkerCD0Ev>:
    80001c9c:	fe010113          	addi	sp,sp,-32
    80001ca0:	00113c23          	sd	ra,24(sp)
    80001ca4:	00813823          	sd	s0,16(sp)
    80001ca8:	00913423          	sd	s1,8(sp)
    80001cac:	02010413          	addi	s0,sp,32
    80001cb0:	00050493          	mv	s1,a0
    80001cb4:	00004797          	auipc	a5,0x4
    80001cb8:	0dc78793          	addi	a5,a5,220 # 80005d90 <_ZTV7WorkerC+0x10>
    80001cbc:	00f53023          	sd	a5,0(a0)
    80001cc0:	fffff097          	auipc	ra,0xfffff
    80001cc4:	5dc080e7          	jalr	1500(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001cc8:	00048513          	mv	a0,s1
    80001ccc:	00000097          	auipc	ra,0x0
    80001cd0:	4a4080e7          	jalr	1188(ra) # 80002170 <_ZdlPv>
    80001cd4:	01813083          	ld	ra,24(sp)
    80001cd8:	01013403          	ld	s0,16(sp)
    80001cdc:	00813483          	ld	s1,8(sp)
    80001ce0:	02010113          	addi	sp,sp,32
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00113423          	sd	ra,8(sp)
    80001cf0:	00813023          	sd	s0,0(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    80001cf8:	00004797          	auipc	a5,0x4
    80001cfc:	0c078793          	addi	a5,a5,192 # 80005db8 <_ZTV7WorkerD+0x10>
    80001d00:	00f53023          	sd	a5,0(a0)
    80001d04:	fffff097          	auipc	ra,0xfffff
    80001d08:	598080e7          	jalr	1432(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001d0c:	00813083          	ld	ra,8(sp)
    80001d10:	00013403          	ld	s0,0(sp)
    80001d14:	01010113          	addi	sp,sp,16
    80001d18:	00008067          	ret

0000000080001d1c <_ZN7WorkerDD0Ev>:
    80001d1c:	fe010113          	addi	sp,sp,-32
    80001d20:	00113c23          	sd	ra,24(sp)
    80001d24:	00813823          	sd	s0,16(sp)
    80001d28:	00913423          	sd	s1,8(sp)
    80001d2c:	02010413          	addi	s0,sp,32
    80001d30:	00050493          	mv	s1,a0
    80001d34:	00004797          	auipc	a5,0x4
    80001d38:	08478793          	addi	a5,a5,132 # 80005db8 <_ZTV7WorkerD+0x10>
    80001d3c:	00f53023          	sd	a5,0(a0)
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	55c080e7          	jalr	1372(ra) # 8000129c <_ZN6ThreadD1Ev>
    80001d48:	00048513          	mv	a0,s1
    80001d4c:	00000097          	auipc	ra,0x0
    80001d50:	424080e7          	jalr	1060(ra) # 80002170 <_ZdlPv>
    80001d54:	01813083          	ld	ra,24(sp)
    80001d58:	01013403          	ld	s0,16(sp)
    80001d5c:	00813483          	ld	s1,8(sp)
    80001d60:	02010113          	addi	sp,sp,32
    80001d64:	00008067          	ret

0000000080001d68 <_ZN7WorkerA3runEv>:
    void run() override {
    80001d68:	ff010113          	addi	sp,sp,-16
    80001d6c:	00113423          	sd	ra,8(sp)
    80001d70:	00813023          	sd	s0,0(sp)
    80001d74:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80001d78:	00000593          	li	a1,0
    80001d7c:	fffff097          	auipc	ra,0xfffff
    80001d80:	72c080e7          	jalr	1836(ra) # 800014a8 <_ZN7WorkerA11workerBodyAEPv>
    }
    80001d84:	00813083          	ld	ra,8(sp)
    80001d88:	00013403          	ld	s0,0(sp)
    80001d8c:	01010113          	addi	sp,sp,16
    80001d90:	00008067          	ret

0000000080001d94 <_ZN7WorkerB3runEv>:
    void run() override {
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00113423          	sd	ra,8(sp)
    80001d9c:	00813023          	sd	s0,0(sp)
    80001da0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80001da4:	00000593          	li	a1,0
    80001da8:	fffff097          	auipc	ra,0xfffff
    80001dac:	7cc080e7          	jalr	1996(ra) # 80001574 <_ZN7WorkerB11workerBodyBEPv>
    }
    80001db0:	00813083          	ld	ra,8(sp)
    80001db4:	00013403          	ld	s0,0(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN7WorkerC3runEv>:
    void run() override {
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80001dd0:	00000593          	li	a1,0
    80001dd4:	00000097          	auipc	ra,0x0
    80001dd8:	874080e7          	jalr	-1932(ra) # 80001648 <_ZN7WorkerC11workerBodyCEPv>
    }
    80001ddc:	00813083          	ld	ra,8(sp)
    80001de0:	00013403          	ld	s0,0(sp)
    80001de4:	01010113          	addi	sp,sp,16
    80001de8:	00008067          	ret

0000000080001dec <_ZN7WorkerD3runEv>:
    void run() override {
    80001dec:	ff010113          	addi	sp,sp,-16
    80001df0:	00113423          	sd	ra,8(sp)
    80001df4:	00813023          	sd	s0,0(sp)
    80001df8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80001dfc:	00000593          	li	a1,0
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	9c8080e7          	jalr	-1592(ra) # 800017c8 <_ZN7WorkerD11workerBodyDEPv>
    }
    80001e08:	00813083          	ld	ra,8(sp)
    80001e0c:	00013403          	ld	s0,0(sp)
    80001e10:	01010113          	addi	sp,sp,16
    80001e14:	00008067          	ret

0000000080001e18 <main>:
#include "../h/syscall_c.hpp"
#include "../test/printing.hpp"

extern void userMain(void* arg);

int main() {
    80001e18:	fd010113          	addi	sp,sp,-48
    80001e1c:	02113423          	sd	ra,40(sp)
    80001e20:	02813023          	sd	s0,32(sp)
    80001e24:	00913c23          	sd	s1,24(sp)
    80001e28:	03010413          	addi	s0,sp,48

    printString("MAIN START\n");
    80001e2c:	00003517          	auipc	a0,0x3
    80001e30:	30c50513          	addi	a0,a0,780 # 80005138 <kvmincrease+0x548>
    80001e34:	00000097          	auipc	ra,0x0
    80001e38:	710080e7          	jalr	1808(ra) # 80002544 <_Z11printStringPKc>
    TCB::running = TCB::createThread(nullptr, nullptr, nullptr);
    80001e3c:	00000613          	li	a2,0
    80001e40:	00000593          	li	a1,0
    80001e44:	00000513          	li	a0,0
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	0fc080e7          	jalr	252(ra) # 80001f44 <_ZN3TCB12createThreadEPFvPvES0_Pm>
    80001e50:	00004797          	auipc	a5,0x4
    80001e54:	fc07b783          	ld	a5,-64(a5) # 80005e10 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e58:	00a7b023          	sd	a0,0(a5)
    TCB::running->start();
    80001e5c:	00000097          	auipc	ra,0x0
    80001e60:	270080e7          	jalr	624(ra) # 800020cc <_ZN3TCB5startEv>

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001e64:	00004797          	auipc	a5,0x4
    80001e68:	f8c7b783          	ld	a5,-116(a5) # 80005df0 <_GLOBAL_OFFSET_TABLE_+0x8>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001e6c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e70:	00200793          	li	a5,2
    80001e74:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t handle;
    thread_create(&handle, userMain, nullptr);
    80001e78:	00000613          	li	a2,0
    80001e7c:	00004597          	auipc	a1,0x4
    80001e80:	f8c5b583          	ld	a1,-116(a1) # 80005e08 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001e84:	fd840513          	addi	a0,s0,-40
    80001e88:	fffff097          	auipc	ra,0xfffff
    80001e8c:	2bc080e7          	jalr	700(ra) # 80001144 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_start(handle);
    80001e90:	fd843503          	ld	a0,-40(s0)
    80001e94:	fffff097          	auipc	ra,0xfffff
    80001e98:	39c080e7          	jalr	924(ra) # 80001230 <_Z12thread_startP3TCB>

    while(!handle->isFinished()) {
    80001e9c:	fd843483          	ld	s1,-40(s0)

    bool isFinished() const { return this->state == FINISHED; }
    80001ea0:	0384a703          	lw	a4,56(s1)
    80001ea4:	00300793          	li	a5,3
    80001ea8:	00f70863          	beq	a4,a5,80001eb8 <main+0xa0>
        thread_dispatch();
    80001eac:	fffff097          	auipc	ra,0xfffff
    80001eb0:	360080e7          	jalr	864(ra) # 8000120c <_Z15thread_dispatchv>
    80001eb4:	fe9ff06f          	j	80001e9c <main+0x84>
    } // join user main

    delete handle;
    80001eb8:	02048063          	beqz	s1,80001ed8 <main+0xc0>
    ~TCB() { delete[] stack; }
    80001ebc:	0184b503          	ld	a0,24(s1)
    80001ec0:	00050663          	beqz	a0,80001ecc <main+0xb4>
    80001ec4:	00000097          	auipc	ra,0x0
    80001ec8:	2d4080e7          	jalr	724(ra) # 80002198 <_ZdaPv>
    80001ecc:	00048513          	mv	a0,s1
    80001ed0:	00000097          	auipc	ra,0x0
    80001ed4:	2a0080e7          	jalr	672(ra) # 80002170 <_ZdlPv>

    printString("Finished\n");
    80001ed8:	00003517          	auipc	a0,0x3
    80001edc:	27050513          	addi	a0,a0,624 # 80005148 <kvmincrease+0x558>
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	664080e7          	jalr	1636(ra) # 80002544 <_Z11printStringPKc>

    return 0;
}
    80001ee8:	00000513          	li	a0,0
    80001eec:	02813083          	ld	ra,40(sp)
    80001ef0:	02013403          	ld	s0,32(sp)
    80001ef4:	01813483          	ld	s1,24(sp)
    80001ef8:	03010113          	addi	sp,sp,48
    80001efc:	00008067          	ret

0000000080001f00 <_ZN3TCB13threadWrapperEv>:
    running->state = RUNNING;

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00113423          	sd	ra,8(sp)
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    80001f10:	00000097          	auipc	ra,0x0
    80001f14:	2b0080e7          	jalr	688(ra) # 800021c0 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80001f18:	00004797          	auipc	a5,0x4
    80001f1c:	f507b783          	ld	a5,-176(a5) # 80005e68 <_ZN3TCB7runningE>
    80001f20:	0087b703          	ld	a4,8(a5)
    80001f24:	0107b503          	ld	a0,16(a5)
    80001f28:	000700e7          	jalr	a4
    thread_exit();
    80001f2c:	fffff097          	auipc	ra,0xfffff
    80001f30:	2ac080e7          	jalr	684(ra) # 800011d8 <_Z11thread_exitv>
}
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	01010113          	addi	sp,sp,16
    80001f40:	00008067          	ret

0000000080001f44 <_ZN3TCB12createThreadEPFvPvES0_Pm>:
TCB *TCB::createThread(Body body, Arg arg, uint64* stack) {
    80001f44:	fd010113          	addi	sp,sp,-48
    80001f48:	02113423          	sd	ra,40(sp)
    80001f4c:	02813023          	sd	s0,32(sp)
    80001f50:	00913c23          	sd	s1,24(sp)
    80001f54:	01213823          	sd	s2,16(sp)
    80001f58:	01313423          	sd	s3,8(sp)
    80001f5c:	03010413          	addi	s0,sp,48
    80001f60:	00050913          	mv	s2,a0
    80001f64:	00058993          	mv	s3,a1
    80001f68:	00060493          	mv	s1,a2
    return new TCB(body, arg, stack, DEFAULT_TIME_SLICE);
    80001f6c:	04000513          	li	a0,64
    80001f70:	00000097          	auipc	ra,0x0
    80001f74:	1b0080e7          	jalr	432(ra) # 80002120 <_Znwm>
            arg(arg),
            stack(body != nullptr ? stack : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice)
    80001f78:	01253423          	sd	s2,8(a0)
    80001f7c:	01353823          	sd	s3,16(a0)
            stack(body != nullptr ? stack : nullptr),
    80001f80:	06090463          	beqz	s2,80001fe8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa4>
    80001f84:	00048793          	mv	a5,s1
            timeSlice(timeSlice)
    80001f88:	00f53c23          	sd	a5,24(a0)
    80001f8c:	00000797          	auipc	a5,0x0
    80001f90:	f7478793          	addi	a5,a5,-140 # 80001f00 <_ZN3TCB13threadWrapperEv>
    80001f94:	02f53023          	sd	a5,32(a0)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001f98:	04048c63          	beqz	s1,80001ff0 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xac>
    80001f9c:	00008637          	lui	a2,0x8
    80001fa0:	00c484b3          	add	s1,s1,a2
            timeSlice(timeSlice)
    80001fa4:	02953423          	sd	s1,40(a0)
    80001fa8:	00200793          	li	a5,2
    80001fac:	02f53823          	sd	a5,48(a0)
    {
        this->id = this->ID++;
    80001fb0:	00004717          	auipc	a4,0x4
    80001fb4:	eb870713          	addi	a4,a4,-328 # 80005e68 <_ZN3TCB7runningE>
    80001fb8:	00873783          	ld	a5,8(a4)
    80001fbc:	00178693          	addi	a3,a5,1
    80001fc0:	00d73423          	sd	a3,8(a4)
    80001fc4:	00f53023          	sd	a5,0(a0)
        this->state = CREATED;
    80001fc8:	02052c23          	sw	zero,56(a0)
}
    80001fcc:	02813083          	ld	ra,40(sp)
    80001fd0:	02013403          	ld	s0,32(sp)
    80001fd4:	01813483          	ld	s1,24(sp)
    80001fd8:	01013903          	ld	s2,16(sp)
    80001fdc:	00813983          	ld	s3,8(sp)
    80001fe0:	03010113          	addi	sp,sp,48
    80001fe4:	00008067          	ret
            stack(body != nullptr ? stack : nullptr),
    80001fe8:	00000793          	li	a5,0
    80001fec:	f9dff06f          	j	80001f88 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x44>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80001ff0:	00000493          	li	s1,0
    80001ff4:	fb1ff06f          	j	80001fa4 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x60>

0000000080001ff8 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80001ff8:	fe010113          	addi	sp,sp,-32
    80001ffc:	00113c23          	sd	ra,24(sp)
    80002000:	00813823          	sd	s0,16(sp)
    80002004:	00913423          	sd	s1,8(sp)
    80002008:	02010413          	addi	s0,sp,32
    TCB::timeSliceCounter = 0;
    8000200c:	00004797          	auipc	a5,0x4
    80002010:	e5c78793          	addi	a5,a5,-420 # 80005e68 <_ZN3TCB7runningE>
    80002014:	0007b823          	sd	zero,16(a5)
    TCB *old = running;
    80002018:	0007b483          	ld	s1,0(a5)
    bool isFinished() const { return this->state == FINISHED; }
    8000201c:	0384a703          	lw	a4,56(s1)
    if (!old->isFinished()) {
    80002020:	00300793          	li	a5,3
    80002024:	04f71063          	bne	a4,a5,80002064 <_ZN3TCB8dispatchEv+0x6c>
    running = Scheduler::get();
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	414080e7          	jalr	1044(ra) # 8000243c <_ZN9Scheduler3getEv>
    80002030:	00004797          	auipc	a5,0x4
    80002034:	e2a7bc23          	sd	a0,-456(a5) # 80005e68 <_ZN3TCB7runningE>
    running->state = RUNNING;
    80002038:	00200793          	li	a5,2
    8000203c:	02f52c23          	sw	a5,56(a0)
    TCB::contextSwitch(&old->context, &running->context);
    80002040:	02050593          	addi	a1,a0,32
    80002044:	02048513          	addi	a0,s1,32
    80002048:	fffff097          	auipc	ra,0xfffff
    8000204c:	0c8080e7          	jalr	200(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002050:	01813083          	ld	ra,24(sp)
    80002054:	01013403          	ld	s0,16(sp)
    80002058:	00813483          	ld	s1,8(sp)
    8000205c:	02010113          	addi	sp,sp,32
    80002060:	00008067          	ret
        old->state = READY;
    80002064:	00100793          	li	a5,1
    80002068:	02f4ac23          	sw	a5,56(s1)
        Scheduler::put(old);
    8000206c:	00048513          	mv	a0,s1
    80002070:	00000097          	auipc	ra,0x0
    80002074:	434080e7          	jalr	1076(ra) # 800024a4 <_ZN9Scheduler3putEP3TCB>
    80002078:	fb1ff06f          	j	80002028 <_ZN3TCB8dispatchEv+0x30>

000000008000207c <_ZN3TCB4exitEv>:

int TCB::exit() {
    if(running->state == RUNNING){
    8000207c:	00004797          	auipc	a5,0x4
    80002080:	dec7b783          	ld	a5,-532(a5) # 80005e68 <_ZN3TCB7runningE>
    80002084:	0387a683          	lw	a3,56(a5)
    80002088:	00200713          	li	a4,2
    8000208c:	02e69c63          	bne	a3,a4,800020c4 <_ZN3TCB4exitEv+0x48>
int TCB::exit() {
    80002090:	ff010113          	addi	sp,sp,-16
    80002094:	00113423          	sd	ra,8(sp)
    80002098:	00813023          	sd	s0,0(sp)
    8000209c:	01010413          	addi	s0,sp,16
        running->state = FINISHED;
    800020a0:	00300713          	li	a4,3
    800020a4:	02e7ac23          	sw	a4,56(a5)
        dispatch();
    800020a8:	00000097          	auipc	ra,0x0
    800020ac:	f50080e7          	jalr	-176(ra) # 80001ff8 <_ZN3TCB8dispatchEv>
        return 0;
    800020b0:	00000513          	li	a0,0
    }
    return -1;
}
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret
    return -1;
    800020c4:	fff00513          	li	a0,-1
}
    800020c8:	00008067          	ret

00000000800020cc <_ZN3TCB5startEv>:

int TCB::start() {
    if(this->state != CREATED) return -1;
    800020cc:	03852783          	lw	a5,56(a0)
    800020d0:	04079463          	bnez	a5,80002118 <_ZN3TCB5startEv+0x4c>
    this->state = READY;
    800020d4:	00100793          	li	a5,1
    800020d8:	02f52c23          	sw	a5,56(a0)
    if (this->id != 0) { Scheduler::put(this); }
    800020dc:	00053783          	ld	a5,0(a0)
    800020e0:	00079663          	bnez	a5,800020ec <_ZN3TCB5startEv+0x20>
    return 0;
    800020e4:	00000513          	li	a0,0
}
    800020e8:	00008067          	ret
int TCB::start() {
    800020ec:	ff010113          	addi	sp,sp,-16
    800020f0:	00113423          	sd	ra,8(sp)
    800020f4:	00813023          	sd	s0,0(sp)
    800020f8:	01010413          	addi	s0,sp,16
    if (this->id != 0) { Scheduler::put(this); }
    800020fc:	00000097          	auipc	ra,0x0
    80002100:	3a8080e7          	jalr	936(ra) # 800024a4 <_ZN9Scheduler3putEP3TCB>
    return 0;
    80002104:	00000513          	li	a0,0
}
    80002108:	00813083          	ld	ra,8(sp)
    8000210c:	00013403          	ld	s0,0(sp)
    80002110:	01010113          	addi	sp,sp,16
    80002114:	00008067          	ret
    if(this->state != CREATED) return -1;
    80002118:	fff00513          	li	a0,-1
    8000211c:	00008067          	ret

0000000080002120 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00113423          	sd	ra,8(sp)
    80002128:	00813023          	sd	s0,0(sp)
    8000212c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002130:	00003097          	auipc	ra,0x3
    80002134:	848080e7          	jalr	-1976(ra) # 80004978 <__mem_alloc>
}
    80002138:	00813083          	ld	ra,8(sp)
    8000213c:	00013403          	ld	s0,0(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <_Znam>:

void *operator new[](size_t n)
{
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00113423          	sd	ra,8(sp)
    80002150:	00813023          	sd	s0,0(sp)
    80002154:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80002158:	00003097          	auipc	ra,0x3
    8000215c:	820080e7          	jalr	-2016(ra) # 80004978 <__mem_alloc>
}
    80002160:	00813083          	ld	ra,8(sp)
    80002164:	00013403          	ld	s0,0(sp)
    80002168:	01010113          	addi	sp,sp,16
    8000216c:	00008067          	ret

0000000080002170 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80002170:	ff010113          	addi	sp,sp,-16
    80002174:	00113423          	sd	ra,8(sp)
    80002178:	00813023          	sd	s0,0(sp)
    8000217c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80002180:	00002097          	auipc	ra,0x2
    80002184:	72c080e7          	jalr	1836(ra) # 800048ac <__mem_free>
}
    80002188:	00813083          	ld	ra,8(sp)
    8000218c:	00013403          	ld	s0,0(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    800021a8:	00002097          	auipc	ra,0x2
    800021ac:	704080e7          	jalr	1796(ra) # 800048ac <__mem_free>
    800021b0:	00813083          	ld	ra,8(sp)
    800021b4:	00013403          	ld	s0,0(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00813423          	sd	s0,8(sp)
    800021c8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800021cc:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800021d0:	10200073          	sret
}
    800021d4:	00813403          	ld	s0,8(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret

00000000800021e0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap() {
    800021e0:	f7010113          	addi	sp,sp,-144
    800021e4:	08113423          	sd	ra,136(sp)
    800021e8:	08813023          	sd	s0,128(sp)
    800021ec:	06913c23          	sd	s1,120(sp)
    800021f0:	07213823          	sd	s2,112(sp)
    800021f4:	07313423          	sd	s3,104(sp)
    800021f8:	09010413          	addi	s0,sp,144
    __asm__ volatile ("ld %0, 11*8(fp)" : "=r"(a1));
    800021fc:	05843783          	ld	a5,88(s0)
    80002200:	faf43023          	sd	a5,-96(s0)
    return a1;
    80002204:	fa043603          	ld	a2,-96(s0)
    __asm__ volatile ("ld %0, 12*8(fp)" : "=r"(a2));
    80002208:	06043783          	ld	a5,96(s0)
    8000220c:	f8f43c23          	sd	a5,-104(s0)
    return a2;
    80002210:	f9843583          	ld	a1,-104(s0)
    __asm__ volatile ("ld %0, 13*8(fp)" : "=r"(a3));
    80002214:	06843783          	ld	a5,104(s0)
    80002218:	f8f43823          	sd	a5,-112(s0)
    return a3;
    8000221c:	f9043503          	ld	a0,-112(s0)
}

inline uint64 Riscv::r_a4() {
    uint64 volatile a4;
    __asm__ volatile ("ld %0, 14*8(fp)" : "=r"(a4));
    80002220:	07043783          	ld	a5,112(s0)
    80002224:	f8f43423          	sd	a5,-120(s0)
    return a4;
    80002228:	f8843903          	ld	s2,-120(s0)
    __asm__ volatile ("ld %0, 10*8(fp)" : "=r"(a0));
    8000222c:	05043783          	ld	a5,80(s0)
    80002230:	f8f43023          	sd	a5,-128(s0)
    return a0;
    80002234:	f8043783          	ld	a5,-128(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002238:	14202773          	csrr	a4,scause
    8000223c:	f6e43c23          	sd	a4,-136(s0)
    return scause;
    80002240:	f7843703          	ld	a4,-136(s0)
    uint64 a4 = r_a4();
    long a0 = r_a0();

    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80002244:	ff870813          	addi	a6,a4,-8
    80002248:	00100693          	li	a3,1
    8000224c:	0706fe63          	bgeu	a3,a6,800022c8 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
        }

        w_sstatus(sstatus); // restauracija statusnog registra
        w_sepc(sepc); // restauracija pc registra

    } else if (scause == 0x8000000000000001UL) {
    80002250:	fff00793          	li	a5,-1
    80002254:	03f79793          	slli	a5,a5,0x3f
    80002258:	00178793          	addi	a5,a5,1
    8000225c:	12f70a63          	beq	a4,a5,80002390 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL) {
    80002260:	fff00793          	li	a5,-1
    80002264:	03f79793          	slli	a5,a5,0x3f
    80002268:	00978793          	addi	a5,a5,9
    8000226c:	18f70263          	beq	a4,a5,800023f0 <_ZN5Riscv20handleSupervisorTrapEv+0x210>
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    } else {
        // unexpected trap cause
        printInt(scause);
    80002270:	00000613          	li	a2,0
    80002274:	00a00593          	li	a1,10
    80002278:	0007051b          	sext.w	a0,a4
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	460080e7          	jalr	1120(ra) # 800026dc <_Z8printIntiii>
        printString("\n");
    80002284:	00003517          	auipc	a0,0x3
    80002288:	ecc50513          	addi	a0,a0,-308 # 80005150 <kvmincrease+0x560>
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	2b8080e7          	jalr	696(ra) # 80002544 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002294:	141027f3          	csrr	a5,sepc
    80002298:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    8000229c:	fc843503          	ld	a0,-56(s0)
        printInt(r_sepc());
    800022a0:	00000613          	li	a2,0
    800022a4:	00a00593          	li	a1,10
    800022a8:	0005051b          	sext.w	a0,a0
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	430080e7          	jalr	1072(ra) # 800026dc <_Z8printIntiii>
        printString("\n");
    800022b4:	00003517          	auipc	a0,0x3
    800022b8:	e9c50513          	addi	a0,a0,-356 # 80005150 <kvmincrease+0x560>
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	288080e7          	jalr	648(ra) # 80002544 <_Z11printStringPKc>
    }
    800022c4:	0480006f          	j	8000230c <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800022c8:	14102773          	csrr	a4,sepc
    800022cc:	fae43823          	sd	a4,-80(s0)
    return sepc;
    800022d0:	fb043483          	ld	s1,-80(s0)
        uint64 sepc = r_sepc() + 4; // jer pc pokazuje na trenutnu instrukciju tj ecall a treba na sledecu
    800022d4:	00448493          	addi	s1,s1,4
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800022d8:	10002773          	csrr	a4,sstatus
    800022dc:	fae43423          	sd	a4,-88(s0)
    return sstatus;
    800022e0:	fa843983          	ld	s3,-88(s0)
        if(a0 == 0x11) { //thread_create
    800022e4:	01100713          	li	a4,17
    800022e8:	04e78063          	beq	a5,a4,80002328 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
        else if(a0 == 0x12) { // thread_exit
    800022ec:	01200713          	li	a4,18
    800022f0:	06e78063          	beq	a5,a4,80002350 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
        else if(a0 == 0x13) { // thread_dispatch
    800022f4:	01300713          	li	a4,19
    800022f8:	06e78463          	beq	a5,a4,80002360 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
        else if(a0 == 0x14) {
    800022fc:	01400713          	li	a4,20
    80002300:	06e78663          	beq	a5,a4,8000236c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002304:	10099073          	csrw	sstatus,s3
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002308:	14149073          	csrw	sepc,s1
    8000230c:	08813083          	ld	ra,136(sp)
    80002310:	08013403          	ld	s0,128(sp)
    80002314:	07813483          	ld	s1,120(sp)
    80002318:	07013903          	ld	s2,112(sp)
    8000231c:	06813983          	ld	s3,104(sp)
    80002320:	09010113          	addi	sp,sp,144
    80002324:	00008067          	ret
            TCB *handle = TCB::createThread((void (*)(void*))(a3), (void*)a2, (uint64*)a1);
    80002328:	00000097          	auipc	ra,0x0
    8000232c:	c1c080e7          	jalr	-996(ra) # 80001f44 <_ZN3TCB12createThreadEPFvPvES0_Pm>
            if(!handle) w_a0(-1);
    80002330:	00050a63          	beqz	a0,80002344 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
                *(h) = handle;
    80002334:	00a93023          	sd	a0,0(s2)
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80002338:	00000793          	li	a5,0
    8000233c:	00078513          	mv	a0,a5
}
    80002340:	fc5ff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80002344:	fff00793          	li	a5,-1
    80002348:	00078513          	mv	a0,a5
}
    8000234c:	fb9ff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
            a0 = TCB::exit();
    80002350:	00000097          	auipc	ra,0x0
    80002354:	d2c080e7          	jalr	-724(ra) # 8000207c <_ZN3TCB4exitEv>
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80002358:	00050513          	mv	a0,a0
}
    8000235c:	fa9ff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
            TCB::dispatch();
    80002360:	00000097          	auipc	ra,0x0
    80002364:	c98080e7          	jalr	-872(ra) # 80001ff8 <_ZN3TCB8dispatchEv>
    80002368:	f9dff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
            if(!thread) w_a0(-1);
    8000236c:	00061863          	bnez	a2,8000237c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80002370:	fff00793          	li	a5,-1
    80002374:	00078513          	mv	a0,a5
}
    80002378:	f8dff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
                a0 = thread->start();
    8000237c:	00060513          	mv	a0,a2
    80002380:	00000097          	auipc	ra,0x0
    80002384:	d4c080e7          	jalr	-692(ra) # 800020cc <_ZN3TCB5startEv>
    __asm__ volatile ("mv a0, %0" : : "r"(a0));
    80002388:	00050513          	mv	a0,a0
}
    8000238c:	f79ff06f          	j	80002304 <_ZN5Riscv20handleSupervisorTrapEv+0x124>
        TCB::timeSliceCounter++;
    80002390:	00004717          	auipc	a4,0x4
    80002394:	a6873703          	ld	a4,-1432(a4) # 80005df8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002398:	00073783          	ld	a5,0(a4)
    8000239c:	00178793          	addi	a5,a5,1
    800023a0:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800023a4:	00004717          	auipc	a4,0x4
    800023a8:	a6c73703          	ld	a4,-1428(a4) # 80005e10 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023ac:	00073703          	ld	a4,0(a4)
    uint64 getTimeSlice() const { return timeSlice; }
    800023b0:	03073703          	ld	a4,48(a4)
    800023b4:	00e7f863          	bgeu	a5,a4,800023c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800023b8:	00200793          	li	a5,2
    800023bc:	1447b073          	csrc	sip,a5
}
    800023c0:	f4dff06f          	j	8000230c <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800023c4:	141027f3          	csrr	a5,sepc
    800023c8:	fcf43023          	sd	a5,-64(s0)
    return sepc;
    800023cc:	fc043483          	ld	s1,-64(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800023d0:	100027f3          	csrr	a5,sstatus
    800023d4:	faf43c23          	sd	a5,-72(s0)
    return sstatus;
    800023d8:	fb843903          	ld	s2,-72(s0)
            TCB::dispatch();
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	c1c080e7          	jalr	-996(ra) # 80001ff8 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800023e4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800023e8:	14149073          	csrw	sepc,s1
}
    800023ec:	fcdff06f          	j	800023b8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        console_handler();
    800023f0:	00002097          	auipc	ra,0x2
    800023f4:	754080e7          	jalr	1876(ra) # 80004b44 <console_handler>
    800023f8:	f15ff06f          	j	8000230c <_ZN5Riscv20handleSupervisorTrapEv+0x12c>

00000000800023fc <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800023fc:	ff010113          	addi	sp,sp,-16
    80002400:	00813423          	sd	s0,8(sp)
    80002404:	01010413          	addi	s0,sp,16
    80002408:	00100793          	li	a5,1
    8000240c:	00f50863          	beq	a0,a5,8000241c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002410:	00813403          	ld	s0,8(sp)
    80002414:	01010113          	addi	sp,sp,16
    80002418:	00008067          	ret
    8000241c:	000107b7          	lui	a5,0x10
    80002420:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002424:	fef596e3          	bne	a1,a5,80002410 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002428:	00004797          	auipc	a5,0x4
    8000242c:	a5878793          	addi	a5,a5,-1448 # 80005e80 <_ZN9Scheduler16readyThreadQueueE>
    80002430:	0007b023          	sd	zero,0(a5)
    80002434:	0007b423          	sd	zero,8(a5)
    80002438:	fd9ff06f          	j	80002410 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000243c <_ZN9Scheduler3getEv>:
{
    8000243c:	fe010113          	addi	sp,sp,-32
    80002440:	00113c23          	sd	ra,24(sp)
    80002444:	00813823          	sd	s0,16(sp)
    80002448:	00913423          	sd	s1,8(sp)
    8000244c:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80002450:	00004517          	auipc	a0,0x4
    80002454:	a3053503          	ld	a0,-1488(a0) # 80005e80 <_ZN9Scheduler16readyThreadQueueE>
    80002458:	04050263          	beqz	a0,8000249c <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    8000245c:	00853783          	ld	a5,8(a0)
    80002460:	00004717          	auipc	a4,0x4
    80002464:	a2f73023          	sd	a5,-1504(a4) # 80005e80 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002468:	02078463          	beqz	a5,80002490 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    8000246c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002470:	00000097          	auipc	ra,0x0
    80002474:	d00080e7          	jalr	-768(ra) # 80002170 <_ZdlPv>
}
    80002478:	00048513          	mv	a0,s1
    8000247c:	01813083          	ld	ra,24(sp)
    80002480:	01013403          	ld	s0,16(sp)
    80002484:	00813483          	ld	s1,8(sp)
    80002488:	02010113          	addi	sp,sp,32
    8000248c:	00008067          	ret
        if (!head) { tail = 0; }
    80002490:	00004797          	auipc	a5,0x4
    80002494:	9e07bc23          	sd	zero,-1544(a5) # 80005e88 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002498:	fd5ff06f          	j	8000246c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000249c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800024a0:	fd9ff06f          	j	80002478 <_ZN9Scheduler3getEv+0x3c>

00000000800024a4 <_ZN9Scheduler3putEP3TCB>:
{
    800024a4:	fe010113          	addi	sp,sp,-32
    800024a8:	00113c23          	sd	ra,24(sp)
    800024ac:	00813823          	sd	s0,16(sp)
    800024b0:	00913423          	sd	s1,8(sp)
    800024b4:	02010413          	addi	s0,sp,32
    800024b8:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800024bc:	01000513          	li	a0,16
    800024c0:	00000097          	auipc	ra,0x0
    800024c4:	c60080e7          	jalr	-928(ra) # 80002120 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800024c8:	00953023          	sd	s1,0(a0)
    800024cc:	00053423          	sd	zero,8(a0)
        if (tail)
    800024d0:	00004797          	auipc	a5,0x4
    800024d4:	9b87b783          	ld	a5,-1608(a5) # 80005e88 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024d8:	02078263          	beqz	a5,800024fc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800024dc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800024e0:	00004797          	auipc	a5,0x4
    800024e4:	9aa7b423          	sd	a0,-1624(a5) # 80005e88 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024e8:	01813083          	ld	ra,24(sp)
    800024ec:	01013403          	ld	s0,16(sp)
    800024f0:	00813483          	ld	s1,8(sp)
    800024f4:	02010113          	addi	sp,sp,32
    800024f8:	00008067          	ret
            head = tail = elem;
    800024fc:	00004797          	auipc	a5,0x4
    80002500:	98478793          	addi	a5,a5,-1660 # 80005e80 <_ZN9Scheduler16readyThreadQueueE>
    80002504:	00a7b423          	sd	a0,8(a5)
    80002508:	00a7b023          	sd	a0,0(a5)
    8000250c:	fddff06f          	j	800024e8 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002510 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002510:	ff010113          	addi	sp,sp,-16
    80002514:	00113423          	sd	ra,8(sp)
    80002518:	00813023          	sd	s0,0(sp)
    8000251c:	01010413          	addi	s0,sp,16
    80002520:	000105b7          	lui	a1,0x10
    80002524:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002528:	00100513          	li	a0,1
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	ed0080e7          	jalr	-304(ra) # 800023fc <_Z41__static_initialization_and_destruction_0ii>
    80002534:	00813083          	ld	ra,8(sp)
    80002538:	00013403          	ld	s0,0(sp)
    8000253c:	01010113          	addi	sp,sp,16
    80002540:	00008067          	ret

0000000080002544 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002544:	fe010113          	addi	sp,sp,-32
    80002548:	00113c23          	sd	ra,24(sp)
    8000254c:	00813823          	sd	s0,16(sp)
    80002550:	00913423          	sd	s1,8(sp)
    80002554:	02010413          	addi	s0,sp,32
    80002558:	00050493          	mv	s1,a0
    LOCK();
    8000255c:	00100613          	li	a2,1
    80002560:	00000593          	li	a1,0
    80002564:	00004517          	auipc	a0,0x4
    80002568:	92c50513          	addi	a0,a0,-1748 # 80005e90 <lockPrint>
    8000256c:	fffff097          	auipc	ra,0xfffff
    80002570:	bb8080e7          	jalr	-1096(ra) # 80001124 <copy_and_swap>
    80002574:	fe0514e3          	bnez	a0,8000255c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002578:	0004c503          	lbu	a0,0(s1)
    8000257c:	00050a63          	beqz	a0,80002590 <_Z11printStringPKc+0x4c>
    {
        __putc(*string);
    80002580:	00002097          	auipc	ra,0x2
    80002584:	550080e7          	jalr	1360(ra) # 80004ad0 <__putc>
        string++;
    80002588:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000258c:	fedff06f          	j	80002578 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002590:	00000613          	li	a2,0
    80002594:	00100593          	li	a1,1
    80002598:	00004517          	auipc	a0,0x4
    8000259c:	8f850513          	addi	a0,a0,-1800 # 80005e90 <lockPrint>
    800025a0:	fffff097          	auipc	ra,0xfffff
    800025a4:	b84080e7          	jalr	-1148(ra) # 80001124 <copy_and_swap>
    800025a8:	fe0514e3          	bnez	a0,80002590 <_Z11printStringPKc+0x4c>
}
    800025ac:	01813083          	ld	ra,24(sp)
    800025b0:	01013403          	ld	s0,16(sp)
    800025b4:	00813483          	ld	s1,8(sp)
    800025b8:	02010113          	addi	sp,sp,32
    800025bc:	00008067          	ret

00000000800025c0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800025c0:	fd010113          	addi	sp,sp,-48
    800025c4:	02113423          	sd	ra,40(sp)
    800025c8:	02813023          	sd	s0,32(sp)
    800025cc:	00913c23          	sd	s1,24(sp)
    800025d0:	01213823          	sd	s2,16(sp)
    800025d4:	01313423          	sd	s3,8(sp)
    800025d8:	01413023          	sd	s4,0(sp)
    800025dc:	03010413          	addi	s0,sp,48
    800025e0:	00050993          	mv	s3,a0
    800025e4:	00058a13          	mv	s4,a1
    LOCK();
    800025e8:	00100613          	li	a2,1
    800025ec:	00000593          	li	a1,0
    800025f0:	00004517          	auipc	a0,0x4
    800025f4:	8a050513          	addi	a0,a0,-1888 # 80005e90 <lockPrint>
    800025f8:	fffff097          	auipc	ra,0xfffff
    800025fc:	b2c080e7          	jalr	-1236(ra) # 80001124 <copy_and_swap>
    80002600:	fe0514e3          	bnez	a0,800025e8 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002604:	00000913          	li	s2,0
    80002608:	00090493          	mv	s1,s2
    8000260c:	0019091b          	addiw	s2,s2,1
    80002610:	03495a63          	bge	s2,s4,80002644 <_Z9getStringPci+0x84>
        cc = __getc();
    80002614:	00002097          	auipc	ra,0x2
    80002618:	4f8080e7          	jalr	1272(ra) # 80004b0c <__getc>
        if(cc < 1)
    8000261c:	02050463          	beqz	a0,80002644 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002620:	009984b3          	add	s1,s3,s1
    80002624:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002628:	00a00793          	li	a5,10
    8000262c:	00f50a63          	beq	a0,a5,80002640 <_Z9getStringPci+0x80>
    80002630:	00d00793          	li	a5,13
    80002634:	fcf51ae3          	bne	a0,a5,80002608 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002638:	00090493          	mv	s1,s2
    8000263c:	0080006f          	j	80002644 <_Z9getStringPci+0x84>
    80002640:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002644:	009984b3          	add	s1,s3,s1
    80002648:	00048023          	sb	zero,0(s1)

    UNLOCK();
    8000264c:	00000613          	li	a2,0
    80002650:	00100593          	li	a1,1
    80002654:	00004517          	auipc	a0,0x4
    80002658:	83c50513          	addi	a0,a0,-1988 # 80005e90 <lockPrint>
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	ac8080e7          	jalr	-1336(ra) # 80001124 <copy_and_swap>
    80002664:	fe0514e3          	bnez	a0,8000264c <_Z9getStringPci+0x8c>
    return buf;
}
    80002668:	00098513          	mv	a0,s3
    8000266c:	02813083          	ld	ra,40(sp)
    80002670:	02013403          	ld	s0,32(sp)
    80002674:	01813483          	ld	s1,24(sp)
    80002678:	01013903          	ld	s2,16(sp)
    8000267c:	00813983          	ld	s3,8(sp)
    80002680:	00013a03          	ld	s4,0(sp)
    80002684:	03010113          	addi	sp,sp,48
    80002688:	00008067          	ret

000000008000268c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    8000268c:	ff010113          	addi	sp,sp,-16
    80002690:	00813423          	sd	s0,8(sp)
    80002694:	01010413          	addi	s0,sp,16
    80002698:	00050693          	mv	a3,a0
    int n;

    n = 0;
    8000269c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800026a0:	0006c603          	lbu	a2,0(a3)
    800026a4:	fd06071b          	addiw	a4,a2,-48
    800026a8:	0ff77713          	andi	a4,a4,255
    800026ac:	00900793          	li	a5,9
    800026b0:	02e7e063          	bltu	a5,a4,800026d0 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800026b4:	0025179b          	slliw	a5,a0,0x2
    800026b8:	00a787bb          	addw	a5,a5,a0
    800026bc:	0017979b          	slliw	a5,a5,0x1
    800026c0:	00168693          	addi	a3,a3,1
    800026c4:	00c787bb          	addw	a5,a5,a2
    800026c8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800026cc:	fd5ff06f          	j	800026a0 <_Z11stringToIntPKc+0x14>
    return n;
}
    800026d0:	00813403          	ld	s0,8(sp)
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00008067          	ret

00000000800026dc <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800026dc:	fc010113          	addi	sp,sp,-64
    800026e0:	02113c23          	sd	ra,56(sp)
    800026e4:	02813823          	sd	s0,48(sp)
    800026e8:	02913423          	sd	s1,40(sp)
    800026ec:	03213023          	sd	s2,32(sp)
    800026f0:	01313c23          	sd	s3,24(sp)
    800026f4:	04010413          	addi	s0,sp,64
    800026f8:	00050493          	mv	s1,a0
    800026fc:	00058913          	mv	s2,a1
    80002700:	00060993          	mv	s3,a2
    LOCK();
    80002704:	00100613          	li	a2,1
    80002708:	00000593          	li	a1,0
    8000270c:	00003517          	auipc	a0,0x3
    80002710:	78450513          	addi	a0,a0,1924 # 80005e90 <lockPrint>
    80002714:	fffff097          	auipc	ra,0xfffff
    80002718:	a10080e7          	jalr	-1520(ra) # 80001124 <copy_and_swap>
    8000271c:	fe0514e3          	bnez	a0,80002704 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002720:	00098463          	beqz	s3,80002728 <_Z8printIntiii+0x4c>
    80002724:	0804c463          	bltz	s1,800027ac <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002728:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000272c:	00000593          	li	a1,0
    }

    i = 0;
    80002730:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002734:	0009079b          	sext.w	a5,s2
    80002738:	0325773b          	remuw	a4,a0,s2
    8000273c:	00048613          	mv	a2,s1
    80002740:	0014849b          	addiw	s1,s1,1
    80002744:	02071693          	slli	a3,a4,0x20
    80002748:	0206d693          	srli	a3,a3,0x20
    8000274c:	00003717          	auipc	a4,0x3
    80002750:	68470713          	addi	a4,a4,1668 # 80005dd0 <digits>
    80002754:	00d70733          	add	a4,a4,a3
    80002758:	00074683          	lbu	a3,0(a4)
    8000275c:	fd040713          	addi	a4,s0,-48
    80002760:	00c70733          	add	a4,a4,a2
    80002764:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002768:	0005071b          	sext.w	a4,a0
    8000276c:	0325553b          	divuw	a0,a0,s2
    80002770:	fcf772e3          	bgeu	a4,a5,80002734 <_Z8printIntiii+0x58>
    if(neg)
    80002774:	00058c63          	beqz	a1,8000278c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002778:	fd040793          	addi	a5,s0,-48
    8000277c:	009784b3          	add	s1,a5,s1
    80002780:	02d00793          	li	a5,45
    80002784:	fef48823          	sb	a5,-16(s1)
    80002788:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000278c:	fff4849b          	addiw	s1,s1,-1
    80002790:	0204c463          	bltz	s1,800027b8 <_Z8printIntiii+0xdc>
        __putc(buf[i]);
    80002794:	fd040793          	addi	a5,s0,-48
    80002798:	009787b3          	add	a5,a5,s1
    8000279c:	ff07c503          	lbu	a0,-16(a5)
    800027a0:	00002097          	auipc	ra,0x2
    800027a4:	330080e7          	jalr	816(ra) # 80004ad0 <__putc>
    800027a8:	fe5ff06f          	j	8000278c <_Z8printIntiii+0xb0>
        x = -xx;
    800027ac:	4090053b          	negw	a0,s1
        neg = 1;
    800027b0:	00100593          	li	a1,1
        x = -xx;
    800027b4:	f7dff06f          	j	80002730 <_Z8printIntiii+0x54>

    UNLOCK();
    800027b8:	00000613          	li	a2,0
    800027bc:	00100593          	li	a1,1
    800027c0:	00003517          	auipc	a0,0x3
    800027c4:	6d050513          	addi	a0,a0,1744 # 80005e90 <lockPrint>
    800027c8:	fffff097          	auipc	ra,0xfffff
    800027cc:	95c080e7          	jalr	-1700(ra) # 80001124 <copy_and_swap>
    800027d0:	fe0514e3          	bnez	a0,800027b8 <_Z8printIntiii+0xdc>
    800027d4:	03813083          	ld	ra,56(sp)
    800027d8:	03013403          	ld	s0,48(sp)
    800027dc:	02813483          	ld	s1,40(sp)
    800027e0:	02013903          	ld	s2,32(sp)
    800027e4:	01813983          	ld	s3,24(sp)
    800027e8:	04010113          	addi	sp,sp,64
    800027ec:	00008067          	ret

00000000800027f0 <start>:
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00813423          	sd	s0,8(sp)
    800027f8:	01010413          	addi	s0,sp,16
    800027fc:	300027f3          	csrr	a5,mstatus
    80002800:	ffffe737          	lui	a4,0xffffe
    80002804:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff76ef>
    80002808:	00e7f7b3          	and	a5,a5,a4
    8000280c:	00001737          	lui	a4,0x1
    80002810:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80002814:	00e7e7b3          	or	a5,a5,a4
    80002818:	30079073          	csrw	mstatus,a5
    8000281c:	00000797          	auipc	a5,0x0
    80002820:	16078793          	addi	a5,a5,352 # 8000297c <system_main>
    80002824:	34179073          	csrw	mepc,a5
    80002828:	00000793          	li	a5,0
    8000282c:	18079073          	csrw	satp,a5
    80002830:	000107b7          	lui	a5,0x10
    80002834:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002838:	30279073          	csrw	medeleg,a5
    8000283c:	30379073          	csrw	mideleg,a5
    80002840:	104027f3          	csrr	a5,sie
    80002844:	2227e793          	ori	a5,a5,546
    80002848:	10479073          	csrw	sie,a5
    8000284c:	fff00793          	li	a5,-1
    80002850:	00a7d793          	srli	a5,a5,0xa
    80002854:	3b079073          	csrw	pmpaddr0,a5
    80002858:	00f00793          	li	a5,15
    8000285c:	3a079073          	csrw	pmpcfg0,a5
    80002860:	f14027f3          	csrr	a5,mhartid
    80002864:	0200c737          	lui	a4,0x200c
    80002868:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000286c:	0007869b          	sext.w	a3,a5
    80002870:	00269713          	slli	a4,a3,0x2
    80002874:	000f4637          	lui	a2,0xf4
    80002878:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000287c:	00d70733          	add	a4,a4,a3
    80002880:	0037979b          	slliw	a5,a5,0x3
    80002884:	020046b7          	lui	a3,0x2004
    80002888:	00d787b3          	add	a5,a5,a3
    8000288c:	00c585b3          	add	a1,a1,a2
    80002890:	00371693          	slli	a3,a4,0x3
    80002894:	00003717          	auipc	a4,0x3
    80002898:	60c70713          	addi	a4,a4,1548 # 80005ea0 <timer_scratch>
    8000289c:	00b7b023          	sd	a1,0(a5)
    800028a0:	00d70733          	add	a4,a4,a3
    800028a4:	00f73c23          	sd	a5,24(a4)
    800028a8:	02c73023          	sd	a2,32(a4)
    800028ac:	34071073          	csrw	mscratch,a4
    800028b0:	00000797          	auipc	a5,0x0
    800028b4:	6e078793          	addi	a5,a5,1760 # 80002f90 <timervec>
    800028b8:	30579073          	csrw	mtvec,a5
    800028bc:	300027f3          	csrr	a5,mstatus
    800028c0:	0087e793          	ori	a5,a5,8
    800028c4:	30079073          	csrw	mstatus,a5
    800028c8:	304027f3          	csrr	a5,mie
    800028cc:	0807e793          	ori	a5,a5,128
    800028d0:	30479073          	csrw	mie,a5
    800028d4:	f14027f3          	csrr	a5,mhartid
    800028d8:	0007879b          	sext.w	a5,a5
    800028dc:	00078213          	mv	tp,a5
    800028e0:	30200073          	mret
    800028e4:	00813403          	ld	s0,8(sp)
    800028e8:	01010113          	addi	sp,sp,16
    800028ec:	00008067          	ret

00000000800028f0 <timerinit>:
    800028f0:	ff010113          	addi	sp,sp,-16
    800028f4:	00813423          	sd	s0,8(sp)
    800028f8:	01010413          	addi	s0,sp,16
    800028fc:	f14027f3          	csrr	a5,mhartid
    80002900:	0200c737          	lui	a4,0x200c
    80002904:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002908:	0007869b          	sext.w	a3,a5
    8000290c:	00269713          	slli	a4,a3,0x2
    80002910:	000f4637          	lui	a2,0xf4
    80002914:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002918:	00d70733          	add	a4,a4,a3
    8000291c:	0037979b          	slliw	a5,a5,0x3
    80002920:	020046b7          	lui	a3,0x2004
    80002924:	00d787b3          	add	a5,a5,a3
    80002928:	00c585b3          	add	a1,a1,a2
    8000292c:	00371693          	slli	a3,a4,0x3
    80002930:	00003717          	auipc	a4,0x3
    80002934:	57070713          	addi	a4,a4,1392 # 80005ea0 <timer_scratch>
    80002938:	00b7b023          	sd	a1,0(a5)
    8000293c:	00d70733          	add	a4,a4,a3
    80002940:	00f73c23          	sd	a5,24(a4)
    80002944:	02c73023          	sd	a2,32(a4)
    80002948:	34071073          	csrw	mscratch,a4
    8000294c:	00000797          	auipc	a5,0x0
    80002950:	64478793          	addi	a5,a5,1604 # 80002f90 <timervec>
    80002954:	30579073          	csrw	mtvec,a5
    80002958:	300027f3          	csrr	a5,mstatus
    8000295c:	0087e793          	ori	a5,a5,8
    80002960:	30079073          	csrw	mstatus,a5
    80002964:	304027f3          	csrr	a5,mie
    80002968:	0807e793          	ori	a5,a5,128
    8000296c:	30479073          	csrw	mie,a5
    80002970:	00813403          	ld	s0,8(sp)
    80002974:	01010113          	addi	sp,sp,16
    80002978:	00008067          	ret

000000008000297c <system_main>:
    8000297c:	fe010113          	addi	sp,sp,-32
    80002980:	00813823          	sd	s0,16(sp)
    80002984:	00913423          	sd	s1,8(sp)
    80002988:	00113c23          	sd	ra,24(sp)
    8000298c:	02010413          	addi	s0,sp,32
    80002990:	00000097          	auipc	ra,0x0
    80002994:	0c4080e7          	jalr	196(ra) # 80002a54 <cpuid>
    80002998:	00003497          	auipc	s1,0x3
    8000299c:	49848493          	addi	s1,s1,1176 # 80005e30 <started>
    800029a0:	02050263          	beqz	a0,800029c4 <system_main+0x48>
    800029a4:	0004a783          	lw	a5,0(s1)
    800029a8:	0007879b          	sext.w	a5,a5
    800029ac:	fe078ce3          	beqz	a5,800029a4 <system_main+0x28>
    800029b0:	0ff0000f          	fence
    800029b4:	00002517          	auipc	a0,0x2
    800029b8:	7d450513          	addi	a0,a0,2004 # 80005188 <kvmincrease+0x598>
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	a70080e7          	jalr	-1424(ra) # 8000342c <panic>
    800029c4:	00001097          	auipc	ra,0x1
    800029c8:	9c4080e7          	jalr	-1596(ra) # 80003388 <consoleinit>
    800029cc:	00001097          	auipc	ra,0x1
    800029d0:	150080e7          	jalr	336(ra) # 80003b1c <printfinit>
    800029d4:	00002517          	auipc	a0,0x2
    800029d8:	77c50513          	addi	a0,a0,1916 # 80005150 <kvmincrease+0x560>
    800029dc:	00001097          	auipc	ra,0x1
    800029e0:	aac080e7          	jalr	-1364(ra) # 80003488 <__printf>
    800029e4:	00002517          	auipc	a0,0x2
    800029e8:	77450513          	addi	a0,a0,1908 # 80005158 <kvmincrease+0x568>
    800029ec:	00001097          	auipc	ra,0x1
    800029f0:	a9c080e7          	jalr	-1380(ra) # 80003488 <__printf>
    800029f4:	00002517          	auipc	a0,0x2
    800029f8:	75c50513          	addi	a0,a0,1884 # 80005150 <kvmincrease+0x560>
    800029fc:	00001097          	auipc	ra,0x1
    80002a00:	a8c080e7          	jalr	-1396(ra) # 80003488 <__printf>
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	4a4080e7          	jalr	1188(ra) # 80003ea8 <kinit>
    80002a0c:	00000097          	auipc	ra,0x0
    80002a10:	148080e7          	jalr	328(ra) # 80002b54 <trapinit>
    80002a14:	00000097          	auipc	ra,0x0
    80002a18:	16c080e7          	jalr	364(ra) # 80002b80 <trapinithart>
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	5b4080e7          	jalr	1460(ra) # 80002fd0 <plicinit>
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	5d4080e7          	jalr	1492(ra) # 80002ff8 <plicinithart>
    80002a2c:	00000097          	auipc	ra,0x0
    80002a30:	078080e7          	jalr	120(ra) # 80002aa4 <userinit>
    80002a34:	0ff0000f          	fence
    80002a38:	00100793          	li	a5,1
    80002a3c:	00002517          	auipc	a0,0x2
    80002a40:	73450513          	addi	a0,a0,1844 # 80005170 <kvmincrease+0x580>
    80002a44:	00f4a023          	sw	a5,0(s1)
    80002a48:	00001097          	auipc	ra,0x1
    80002a4c:	a40080e7          	jalr	-1472(ra) # 80003488 <__printf>
    80002a50:	0000006f          	j	80002a50 <system_main+0xd4>

0000000080002a54 <cpuid>:
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00813423          	sd	s0,8(sp)
    80002a5c:	01010413          	addi	s0,sp,16
    80002a60:	00020513          	mv	a0,tp
    80002a64:	00813403          	ld	s0,8(sp)
    80002a68:	0005051b          	sext.w	a0,a0
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <mycpu>:
    80002a74:	ff010113          	addi	sp,sp,-16
    80002a78:	00813423          	sd	s0,8(sp)
    80002a7c:	01010413          	addi	s0,sp,16
    80002a80:	00020793          	mv	a5,tp
    80002a84:	00813403          	ld	s0,8(sp)
    80002a88:	0007879b          	sext.w	a5,a5
    80002a8c:	00779793          	slli	a5,a5,0x7
    80002a90:	00004517          	auipc	a0,0x4
    80002a94:	44050513          	addi	a0,a0,1088 # 80006ed0 <cpus>
    80002a98:	00f50533          	add	a0,a0,a5
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <userinit>:
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	00813403          	ld	s0,8(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	fffff317          	auipc	t1,0xfffff
    80002abc:	36030067          	jr	864(t1) # 80001e18 <main>

0000000080002ac0 <either_copyout>:
    80002ac0:	ff010113          	addi	sp,sp,-16
    80002ac4:	00813023          	sd	s0,0(sp)
    80002ac8:	00113423          	sd	ra,8(sp)
    80002acc:	01010413          	addi	s0,sp,16
    80002ad0:	02051663          	bnez	a0,80002afc <either_copyout+0x3c>
    80002ad4:	00058513          	mv	a0,a1
    80002ad8:	00060593          	mv	a1,a2
    80002adc:	0006861b          	sext.w	a2,a3
    80002ae0:	00002097          	auipc	ra,0x2
    80002ae4:	c54080e7          	jalr	-940(ra) # 80004734 <__memmove>
    80002ae8:	00813083          	ld	ra,8(sp)
    80002aec:	00013403          	ld	s0,0(sp)
    80002af0:	00000513          	li	a0,0
    80002af4:	01010113          	addi	sp,sp,16
    80002af8:	00008067          	ret
    80002afc:	00002517          	auipc	a0,0x2
    80002b00:	6b450513          	addi	a0,a0,1716 # 800051b0 <kvmincrease+0x5c0>
    80002b04:	00001097          	auipc	ra,0x1
    80002b08:	928080e7          	jalr	-1752(ra) # 8000342c <panic>

0000000080002b0c <either_copyin>:
    80002b0c:	ff010113          	addi	sp,sp,-16
    80002b10:	00813023          	sd	s0,0(sp)
    80002b14:	00113423          	sd	ra,8(sp)
    80002b18:	01010413          	addi	s0,sp,16
    80002b1c:	02059463          	bnez	a1,80002b44 <either_copyin+0x38>
    80002b20:	00060593          	mv	a1,a2
    80002b24:	0006861b          	sext.w	a2,a3
    80002b28:	00002097          	auipc	ra,0x2
    80002b2c:	c0c080e7          	jalr	-1012(ra) # 80004734 <__memmove>
    80002b30:	00813083          	ld	ra,8(sp)
    80002b34:	00013403          	ld	s0,0(sp)
    80002b38:	00000513          	li	a0,0
    80002b3c:	01010113          	addi	sp,sp,16
    80002b40:	00008067          	ret
    80002b44:	00002517          	auipc	a0,0x2
    80002b48:	69450513          	addi	a0,a0,1684 # 800051d8 <kvmincrease+0x5e8>
    80002b4c:	00001097          	auipc	ra,0x1
    80002b50:	8e0080e7          	jalr	-1824(ra) # 8000342c <panic>

0000000080002b54 <trapinit>:
    80002b54:	ff010113          	addi	sp,sp,-16
    80002b58:	00813423          	sd	s0,8(sp)
    80002b5c:	01010413          	addi	s0,sp,16
    80002b60:	00813403          	ld	s0,8(sp)
    80002b64:	00002597          	auipc	a1,0x2
    80002b68:	69c58593          	addi	a1,a1,1692 # 80005200 <kvmincrease+0x610>
    80002b6c:	00004517          	auipc	a0,0x4
    80002b70:	3e450513          	addi	a0,a0,996 # 80006f50 <tickslock>
    80002b74:	01010113          	addi	sp,sp,16
    80002b78:	00001317          	auipc	t1,0x1
    80002b7c:	5c030067          	jr	1472(t1) # 80004138 <initlock>

0000000080002b80 <trapinithart>:
    80002b80:	ff010113          	addi	sp,sp,-16
    80002b84:	00813423          	sd	s0,8(sp)
    80002b88:	01010413          	addi	s0,sp,16
    80002b8c:	00000797          	auipc	a5,0x0
    80002b90:	2f478793          	addi	a5,a5,756 # 80002e80 <kernelvec>
    80002b94:	10579073          	csrw	stvec,a5
    80002b98:	00813403          	ld	s0,8(sp)
    80002b9c:	01010113          	addi	sp,sp,16
    80002ba0:	00008067          	ret

0000000080002ba4 <usertrap>:
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00813423          	sd	s0,8(sp)
    80002bac:	01010413          	addi	s0,sp,16
    80002bb0:	00813403          	ld	s0,8(sp)
    80002bb4:	01010113          	addi	sp,sp,16
    80002bb8:	00008067          	ret

0000000080002bbc <usertrapret>:
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00813423          	sd	s0,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00813403          	ld	s0,8(sp)
    80002bcc:	01010113          	addi	sp,sp,16
    80002bd0:	00008067          	ret

0000000080002bd4 <kerneltrap>:
    80002bd4:	fe010113          	addi	sp,sp,-32
    80002bd8:	00813823          	sd	s0,16(sp)
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	00913423          	sd	s1,8(sp)
    80002be4:	02010413          	addi	s0,sp,32
    80002be8:	142025f3          	csrr	a1,scause
    80002bec:	100027f3          	csrr	a5,sstatus
    80002bf0:	0027f793          	andi	a5,a5,2
    80002bf4:	10079c63          	bnez	a5,80002d0c <kerneltrap+0x138>
    80002bf8:	142027f3          	csrr	a5,scause
    80002bfc:	0207ce63          	bltz	a5,80002c38 <kerneltrap+0x64>
    80002c00:	00002517          	auipc	a0,0x2
    80002c04:	64850513          	addi	a0,a0,1608 # 80005248 <kvmincrease+0x658>
    80002c08:	00001097          	auipc	ra,0x1
    80002c0c:	880080e7          	jalr	-1920(ra) # 80003488 <__printf>
    80002c10:	141025f3          	csrr	a1,sepc
    80002c14:	14302673          	csrr	a2,stval
    80002c18:	00002517          	auipc	a0,0x2
    80002c1c:	64050513          	addi	a0,a0,1600 # 80005258 <kvmincrease+0x668>
    80002c20:	00001097          	auipc	ra,0x1
    80002c24:	868080e7          	jalr	-1944(ra) # 80003488 <__printf>
    80002c28:	00002517          	auipc	a0,0x2
    80002c2c:	64850513          	addi	a0,a0,1608 # 80005270 <kvmincrease+0x680>
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	7fc080e7          	jalr	2044(ra) # 8000342c <panic>
    80002c38:	0ff7f713          	andi	a4,a5,255
    80002c3c:	00900693          	li	a3,9
    80002c40:	04d70063          	beq	a4,a3,80002c80 <kerneltrap+0xac>
    80002c44:	fff00713          	li	a4,-1
    80002c48:	03f71713          	slli	a4,a4,0x3f
    80002c4c:	00170713          	addi	a4,a4,1
    80002c50:	fae798e3          	bne	a5,a4,80002c00 <kerneltrap+0x2c>
    80002c54:	00000097          	auipc	ra,0x0
    80002c58:	e00080e7          	jalr	-512(ra) # 80002a54 <cpuid>
    80002c5c:	06050663          	beqz	a0,80002cc8 <kerneltrap+0xf4>
    80002c60:	144027f3          	csrr	a5,sip
    80002c64:	ffd7f793          	andi	a5,a5,-3
    80002c68:	14479073          	csrw	sip,a5
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	00813483          	ld	s1,8(sp)
    80002c78:	02010113          	addi	sp,sp,32
    80002c7c:	00008067          	ret
    80002c80:	00000097          	auipc	ra,0x0
    80002c84:	3c4080e7          	jalr	964(ra) # 80003044 <plic_claim>
    80002c88:	00a00793          	li	a5,10
    80002c8c:	00050493          	mv	s1,a0
    80002c90:	06f50863          	beq	a0,a5,80002d00 <kerneltrap+0x12c>
    80002c94:	fc050ce3          	beqz	a0,80002c6c <kerneltrap+0x98>
    80002c98:	00050593          	mv	a1,a0
    80002c9c:	00002517          	auipc	a0,0x2
    80002ca0:	58c50513          	addi	a0,a0,1420 # 80005228 <kvmincrease+0x638>
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	7e4080e7          	jalr	2020(ra) # 80003488 <__printf>
    80002cac:	01013403          	ld	s0,16(sp)
    80002cb0:	01813083          	ld	ra,24(sp)
    80002cb4:	00048513          	mv	a0,s1
    80002cb8:	00813483          	ld	s1,8(sp)
    80002cbc:	02010113          	addi	sp,sp,32
    80002cc0:	00000317          	auipc	t1,0x0
    80002cc4:	3bc30067          	jr	956(t1) # 8000307c <plic_complete>
    80002cc8:	00004517          	auipc	a0,0x4
    80002ccc:	28850513          	addi	a0,a0,648 # 80006f50 <tickslock>
    80002cd0:	00001097          	auipc	ra,0x1
    80002cd4:	48c080e7          	jalr	1164(ra) # 8000415c <acquire>
    80002cd8:	00003717          	auipc	a4,0x3
    80002cdc:	15c70713          	addi	a4,a4,348 # 80005e34 <ticks>
    80002ce0:	00072783          	lw	a5,0(a4)
    80002ce4:	00004517          	auipc	a0,0x4
    80002ce8:	26c50513          	addi	a0,a0,620 # 80006f50 <tickslock>
    80002cec:	0017879b          	addiw	a5,a5,1
    80002cf0:	00f72023          	sw	a5,0(a4)
    80002cf4:	00001097          	auipc	ra,0x1
    80002cf8:	534080e7          	jalr	1332(ra) # 80004228 <release>
    80002cfc:	f65ff06f          	j	80002c60 <kerneltrap+0x8c>
    80002d00:	00001097          	auipc	ra,0x1
    80002d04:	090080e7          	jalr	144(ra) # 80003d90 <uartintr>
    80002d08:	fa5ff06f          	j	80002cac <kerneltrap+0xd8>
    80002d0c:	00002517          	auipc	a0,0x2
    80002d10:	4fc50513          	addi	a0,a0,1276 # 80005208 <kvmincrease+0x618>
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	718080e7          	jalr	1816(ra) # 8000342c <panic>

0000000080002d1c <clockintr>:
    80002d1c:	fe010113          	addi	sp,sp,-32
    80002d20:	00813823          	sd	s0,16(sp)
    80002d24:	00913423          	sd	s1,8(sp)
    80002d28:	00113c23          	sd	ra,24(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    80002d30:	00004497          	auipc	s1,0x4
    80002d34:	22048493          	addi	s1,s1,544 # 80006f50 <tickslock>
    80002d38:	00048513          	mv	a0,s1
    80002d3c:	00001097          	auipc	ra,0x1
    80002d40:	420080e7          	jalr	1056(ra) # 8000415c <acquire>
    80002d44:	00003717          	auipc	a4,0x3
    80002d48:	0f070713          	addi	a4,a4,240 # 80005e34 <ticks>
    80002d4c:	00072783          	lw	a5,0(a4)
    80002d50:	01013403          	ld	s0,16(sp)
    80002d54:	01813083          	ld	ra,24(sp)
    80002d58:	00048513          	mv	a0,s1
    80002d5c:	0017879b          	addiw	a5,a5,1
    80002d60:	00813483          	ld	s1,8(sp)
    80002d64:	00f72023          	sw	a5,0(a4)
    80002d68:	02010113          	addi	sp,sp,32
    80002d6c:	00001317          	auipc	t1,0x1
    80002d70:	4bc30067          	jr	1212(t1) # 80004228 <release>

0000000080002d74 <devintr>:
    80002d74:	142027f3          	csrr	a5,scause
    80002d78:	00000513          	li	a0,0
    80002d7c:	0007c463          	bltz	a5,80002d84 <devintr+0x10>
    80002d80:	00008067          	ret
    80002d84:	fe010113          	addi	sp,sp,-32
    80002d88:	00813823          	sd	s0,16(sp)
    80002d8c:	00113c23          	sd	ra,24(sp)
    80002d90:	00913423          	sd	s1,8(sp)
    80002d94:	02010413          	addi	s0,sp,32
    80002d98:	0ff7f713          	andi	a4,a5,255
    80002d9c:	00900693          	li	a3,9
    80002da0:	04d70c63          	beq	a4,a3,80002df8 <devintr+0x84>
    80002da4:	fff00713          	li	a4,-1
    80002da8:	03f71713          	slli	a4,a4,0x3f
    80002dac:	00170713          	addi	a4,a4,1
    80002db0:	00e78c63          	beq	a5,a4,80002dc8 <devintr+0x54>
    80002db4:	01813083          	ld	ra,24(sp)
    80002db8:	01013403          	ld	s0,16(sp)
    80002dbc:	00813483          	ld	s1,8(sp)
    80002dc0:	02010113          	addi	sp,sp,32
    80002dc4:	00008067          	ret
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	c8c080e7          	jalr	-884(ra) # 80002a54 <cpuid>
    80002dd0:	06050663          	beqz	a0,80002e3c <devintr+0xc8>
    80002dd4:	144027f3          	csrr	a5,sip
    80002dd8:	ffd7f793          	andi	a5,a5,-3
    80002ddc:	14479073          	csrw	sip,a5
    80002de0:	01813083          	ld	ra,24(sp)
    80002de4:	01013403          	ld	s0,16(sp)
    80002de8:	00813483          	ld	s1,8(sp)
    80002dec:	00200513          	li	a0,2
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret
    80002df8:	00000097          	auipc	ra,0x0
    80002dfc:	24c080e7          	jalr	588(ra) # 80003044 <plic_claim>
    80002e00:	00a00793          	li	a5,10
    80002e04:	00050493          	mv	s1,a0
    80002e08:	06f50663          	beq	a0,a5,80002e74 <devintr+0x100>
    80002e0c:	00100513          	li	a0,1
    80002e10:	fa0482e3          	beqz	s1,80002db4 <devintr+0x40>
    80002e14:	00048593          	mv	a1,s1
    80002e18:	00002517          	auipc	a0,0x2
    80002e1c:	41050513          	addi	a0,a0,1040 # 80005228 <kvmincrease+0x638>
    80002e20:	00000097          	auipc	ra,0x0
    80002e24:	668080e7          	jalr	1640(ra) # 80003488 <__printf>
    80002e28:	00048513          	mv	a0,s1
    80002e2c:	00000097          	auipc	ra,0x0
    80002e30:	250080e7          	jalr	592(ra) # 8000307c <plic_complete>
    80002e34:	00100513          	li	a0,1
    80002e38:	f7dff06f          	j	80002db4 <devintr+0x40>
    80002e3c:	00004517          	auipc	a0,0x4
    80002e40:	11450513          	addi	a0,a0,276 # 80006f50 <tickslock>
    80002e44:	00001097          	auipc	ra,0x1
    80002e48:	318080e7          	jalr	792(ra) # 8000415c <acquire>
    80002e4c:	00003717          	auipc	a4,0x3
    80002e50:	fe870713          	addi	a4,a4,-24 # 80005e34 <ticks>
    80002e54:	00072783          	lw	a5,0(a4)
    80002e58:	00004517          	auipc	a0,0x4
    80002e5c:	0f850513          	addi	a0,a0,248 # 80006f50 <tickslock>
    80002e60:	0017879b          	addiw	a5,a5,1
    80002e64:	00f72023          	sw	a5,0(a4)
    80002e68:	00001097          	auipc	ra,0x1
    80002e6c:	3c0080e7          	jalr	960(ra) # 80004228 <release>
    80002e70:	f65ff06f          	j	80002dd4 <devintr+0x60>
    80002e74:	00001097          	auipc	ra,0x1
    80002e78:	f1c080e7          	jalr	-228(ra) # 80003d90 <uartintr>
    80002e7c:	fadff06f          	j	80002e28 <devintr+0xb4>

0000000080002e80 <kernelvec>:
    80002e80:	f0010113          	addi	sp,sp,-256
    80002e84:	00113023          	sd	ra,0(sp)
    80002e88:	00213423          	sd	sp,8(sp)
    80002e8c:	00313823          	sd	gp,16(sp)
    80002e90:	00413c23          	sd	tp,24(sp)
    80002e94:	02513023          	sd	t0,32(sp)
    80002e98:	02613423          	sd	t1,40(sp)
    80002e9c:	02713823          	sd	t2,48(sp)
    80002ea0:	02813c23          	sd	s0,56(sp)
    80002ea4:	04913023          	sd	s1,64(sp)
    80002ea8:	04a13423          	sd	a0,72(sp)
    80002eac:	04b13823          	sd	a1,80(sp)
    80002eb0:	04c13c23          	sd	a2,88(sp)
    80002eb4:	06d13023          	sd	a3,96(sp)
    80002eb8:	06e13423          	sd	a4,104(sp)
    80002ebc:	06f13823          	sd	a5,112(sp)
    80002ec0:	07013c23          	sd	a6,120(sp)
    80002ec4:	09113023          	sd	a7,128(sp)
    80002ec8:	09213423          	sd	s2,136(sp)
    80002ecc:	09313823          	sd	s3,144(sp)
    80002ed0:	09413c23          	sd	s4,152(sp)
    80002ed4:	0b513023          	sd	s5,160(sp)
    80002ed8:	0b613423          	sd	s6,168(sp)
    80002edc:	0b713823          	sd	s7,176(sp)
    80002ee0:	0b813c23          	sd	s8,184(sp)
    80002ee4:	0d913023          	sd	s9,192(sp)
    80002ee8:	0da13423          	sd	s10,200(sp)
    80002eec:	0db13823          	sd	s11,208(sp)
    80002ef0:	0dc13c23          	sd	t3,216(sp)
    80002ef4:	0fd13023          	sd	t4,224(sp)
    80002ef8:	0fe13423          	sd	t5,232(sp)
    80002efc:	0ff13823          	sd	t6,240(sp)
    80002f00:	cd5ff0ef          	jal	ra,80002bd4 <kerneltrap>
    80002f04:	00013083          	ld	ra,0(sp)
    80002f08:	00813103          	ld	sp,8(sp)
    80002f0c:	01013183          	ld	gp,16(sp)
    80002f10:	02013283          	ld	t0,32(sp)
    80002f14:	02813303          	ld	t1,40(sp)
    80002f18:	03013383          	ld	t2,48(sp)
    80002f1c:	03813403          	ld	s0,56(sp)
    80002f20:	04013483          	ld	s1,64(sp)
    80002f24:	04813503          	ld	a0,72(sp)
    80002f28:	05013583          	ld	a1,80(sp)
    80002f2c:	05813603          	ld	a2,88(sp)
    80002f30:	06013683          	ld	a3,96(sp)
    80002f34:	06813703          	ld	a4,104(sp)
    80002f38:	07013783          	ld	a5,112(sp)
    80002f3c:	07813803          	ld	a6,120(sp)
    80002f40:	08013883          	ld	a7,128(sp)
    80002f44:	08813903          	ld	s2,136(sp)
    80002f48:	09013983          	ld	s3,144(sp)
    80002f4c:	09813a03          	ld	s4,152(sp)
    80002f50:	0a013a83          	ld	s5,160(sp)
    80002f54:	0a813b03          	ld	s6,168(sp)
    80002f58:	0b013b83          	ld	s7,176(sp)
    80002f5c:	0b813c03          	ld	s8,184(sp)
    80002f60:	0c013c83          	ld	s9,192(sp)
    80002f64:	0c813d03          	ld	s10,200(sp)
    80002f68:	0d013d83          	ld	s11,208(sp)
    80002f6c:	0d813e03          	ld	t3,216(sp)
    80002f70:	0e013e83          	ld	t4,224(sp)
    80002f74:	0e813f03          	ld	t5,232(sp)
    80002f78:	0f013f83          	ld	t6,240(sp)
    80002f7c:	10010113          	addi	sp,sp,256
    80002f80:	10200073          	sret
    80002f84:	00000013          	nop
    80002f88:	00000013          	nop
    80002f8c:	00000013          	nop

0000000080002f90 <timervec>:
    80002f90:	34051573          	csrrw	a0,mscratch,a0
    80002f94:	00b53023          	sd	a1,0(a0)
    80002f98:	00c53423          	sd	a2,8(a0)
    80002f9c:	00d53823          	sd	a3,16(a0)
    80002fa0:	01853583          	ld	a1,24(a0)
    80002fa4:	02053603          	ld	a2,32(a0)
    80002fa8:	0005b683          	ld	a3,0(a1)
    80002fac:	00c686b3          	add	a3,a3,a2
    80002fb0:	00d5b023          	sd	a3,0(a1)
    80002fb4:	00200593          	li	a1,2
    80002fb8:	14459073          	csrw	sip,a1
    80002fbc:	01053683          	ld	a3,16(a0)
    80002fc0:	00853603          	ld	a2,8(a0)
    80002fc4:	00053583          	ld	a1,0(a0)
    80002fc8:	34051573          	csrrw	a0,mscratch,a0
    80002fcc:	30200073          	mret

0000000080002fd0 <plicinit>:
    80002fd0:	ff010113          	addi	sp,sp,-16
    80002fd4:	00813423          	sd	s0,8(sp)
    80002fd8:	01010413          	addi	s0,sp,16
    80002fdc:	00813403          	ld	s0,8(sp)
    80002fe0:	0c0007b7          	lui	a5,0xc000
    80002fe4:	00100713          	li	a4,1
    80002fe8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80002fec:	00e7a223          	sw	a4,4(a5)
    80002ff0:	01010113          	addi	sp,sp,16
    80002ff4:	00008067          	ret

0000000080002ff8 <plicinithart>:
    80002ff8:	ff010113          	addi	sp,sp,-16
    80002ffc:	00813023          	sd	s0,0(sp)
    80003000:	00113423          	sd	ra,8(sp)
    80003004:	01010413          	addi	s0,sp,16
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	a4c080e7          	jalr	-1460(ra) # 80002a54 <cpuid>
    80003010:	0085171b          	slliw	a4,a0,0x8
    80003014:	0c0027b7          	lui	a5,0xc002
    80003018:	00e787b3          	add	a5,a5,a4
    8000301c:	40200713          	li	a4,1026
    80003020:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003024:	00813083          	ld	ra,8(sp)
    80003028:	00013403          	ld	s0,0(sp)
    8000302c:	00d5151b          	slliw	a0,a0,0xd
    80003030:	0c2017b7          	lui	a5,0xc201
    80003034:	00a78533          	add	a0,a5,a0
    80003038:	00052023          	sw	zero,0(a0)
    8000303c:	01010113          	addi	sp,sp,16
    80003040:	00008067          	ret

0000000080003044 <plic_claim>:
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00813023          	sd	s0,0(sp)
    8000304c:	00113423          	sd	ra,8(sp)
    80003050:	01010413          	addi	s0,sp,16
    80003054:	00000097          	auipc	ra,0x0
    80003058:	a00080e7          	jalr	-1536(ra) # 80002a54 <cpuid>
    8000305c:	00813083          	ld	ra,8(sp)
    80003060:	00013403          	ld	s0,0(sp)
    80003064:	00d5151b          	slliw	a0,a0,0xd
    80003068:	0c2017b7          	lui	a5,0xc201
    8000306c:	00a78533          	add	a0,a5,a0
    80003070:	00452503          	lw	a0,4(a0)
    80003074:	01010113          	addi	sp,sp,16
    80003078:	00008067          	ret

000000008000307c <plic_complete>:
    8000307c:	fe010113          	addi	sp,sp,-32
    80003080:	00813823          	sd	s0,16(sp)
    80003084:	00913423          	sd	s1,8(sp)
    80003088:	00113c23          	sd	ra,24(sp)
    8000308c:	02010413          	addi	s0,sp,32
    80003090:	00050493          	mv	s1,a0
    80003094:	00000097          	auipc	ra,0x0
    80003098:	9c0080e7          	jalr	-1600(ra) # 80002a54 <cpuid>
    8000309c:	01813083          	ld	ra,24(sp)
    800030a0:	01013403          	ld	s0,16(sp)
    800030a4:	00d5179b          	slliw	a5,a0,0xd
    800030a8:	0c201737          	lui	a4,0xc201
    800030ac:	00f707b3          	add	a5,a4,a5
    800030b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800030b4:	00813483          	ld	s1,8(sp)
    800030b8:	02010113          	addi	sp,sp,32
    800030bc:	00008067          	ret

00000000800030c0 <consolewrite>:
    800030c0:	fb010113          	addi	sp,sp,-80
    800030c4:	04813023          	sd	s0,64(sp)
    800030c8:	04113423          	sd	ra,72(sp)
    800030cc:	02913c23          	sd	s1,56(sp)
    800030d0:	03213823          	sd	s2,48(sp)
    800030d4:	03313423          	sd	s3,40(sp)
    800030d8:	03413023          	sd	s4,32(sp)
    800030dc:	01513c23          	sd	s5,24(sp)
    800030e0:	05010413          	addi	s0,sp,80
    800030e4:	06c05c63          	blez	a2,8000315c <consolewrite+0x9c>
    800030e8:	00060993          	mv	s3,a2
    800030ec:	00050a13          	mv	s4,a0
    800030f0:	00058493          	mv	s1,a1
    800030f4:	00000913          	li	s2,0
    800030f8:	fff00a93          	li	s5,-1
    800030fc:	01c0006f          	j	80003118 <consolewrite+0x58>
    80003100:	fbf44503          	lbu	a0,-65(s0)
    80003104:	0019091b          	addiw	s2,s2,1
    80003108:	00148493          	addi	s1,s1,1
    8000310c:	00001097          	auipc	ra,0x1
    80003110:	a9c080e7          	jalr	-1380(ra) # 80003ba8 <uartputc>
    80003114:	03298063          	beq	s3,s2,80003134 <consolewrite+0x74>
    80003118:	00048613          	mv	a2,s1
    8000311c:	00100693          	li	a3,1
    80003120:	000a0593          	mv	a1,s4
    80003124:	fbf40513          	addi	a0,s0,-65
    80003128:	00000097          	auipc	ra,0x0
    8000312c:	9e4080e7          	jalr	-1564(ra) # 80002b0c <either_copyin>
    80003130:	fd5518e3          	bne	a0,s5,80003100 <consolewrite+0x40>
    80003134:	04813083          	ld	ra,72(sp)
    80003138:	04013403          	ld	s0,64(sp)
    8000313c:	03813483          	ld	s1,56(sp)
    80003140:	02813983          	ld	s3,40(sp)
    80003144:	02013a03          	ld	s4,32(sp)
    80003148:	01813a83          	ld	s5,24(sp)
    8000314c:	00090513          	mv	a0,s2
    80003150:	03013903          	ld	s2,48(sp)
    80003154:	05010113          	addi	sp,sp,80
    80003158:	00008067          	ret
    8000315c:	00000913          	li	s2,0
    80003160:	fd5ff06f          	j	80003134 <consolewrite+0x74>

0000000080003164 <consoleread>:
    80003164:	f9010113          	addi	sp,sp,-112
    80003168:	06813023          	sd	s0,96(sp)
    8000316c:	04913c23          	sd	s1,88(sp)
    80003170:	05213823          	sd	s2,80(sp)
    80003174:	05313423          	sd	s3,72(sp)
    80003178:	05413023          	sd	s4,64(sp)
    8000317c:	03513c23          	sd	s5,56(sp)
    80003180:	03613823          	sd	s6,48(sp)
    80003184:	03713423          	sd	s7,40(sp)
    80003188:	03813023          	sd	s8,32(sp)
    8000318c:	06113423          	sd	ra,104(sp)
    80003190:	01913c23          	sd	s9,24(sp)
    80003194:	07010413          	addi	s0,sp,112
    80003198:	00060b93          	mv	s7,a2
    8000319c:	00050913          	mv	s2,a0
    800031a0:	00058c13          	mv	s8,a1
    800031a4:	00060b1b          	sext.w	s6,a2
    800031a8:	00004497          	auipc	s1,0x4
    800031ac:	dd048493          	addi	s1,s1,-560 # 80006f78 <cons>
    800031b0:	00400993          	li	s3,4
    800031b4:	fff00a13          	li	s4,-1
    800031b8:	00a00a93          	li	s5,10
    800031bc:	05705e63          	blez	s7,80003218 <consoleread+0xb4>
    800031c0:	09c4a703          	lw	a4,156(s1)
    800031c4:	0984a783          	lw	a5,152(s1)
    800031c8:	0007071b          	sext.w	a4,a4
    800031cc:	08e78463          	beq	a5,a4,80003254 <consoleread+0xf0>
    800031d0:	07f7f713          	andi	a4,a5,127
    800031d4:	00e48733          	add	a4,s1,a4
    800031d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800031dc:	0017869b          	addiw	a3,a5,1
    800031e0:	08d4ac23          	sw	a3,152(s1)
    800031e4:	00070c9b          	sext.w	s9,a4
    800031e8:	0b370663          	beq	a4,s3,80003294 <consoleread+0x130>
    800031ec:	00100693          	li	a3,1
    800031f0:	f9f40613          	addi	a2,s0,-97
    800031f4:	000c0593          	mv	a1,s8
    800031f8:	00090513          	mv	a0,s2
    800031fc:	f8e40fa3          	sb	a4,-97(s0)
    80003200:	00000097          	auipc	ra,0x0
    80003204:	8c0080e7          	jalr	-1856(ra) # 80002ac0 <either_copyout>
    80003208:	01450863          	beq	a0,s4,80003218 <consoleread+0xb4>
    8000320c:	001c0c13          	addi	s8,s8,1
    80003210:	fffb8b9b          	addiw	s7,s7,-1
    80003214:	fb5c94e3          	bne	s9,s5,800031bc <consoleread+0x58>
    80003218:	000b851b          	sext.w	a0,s7
    8000321c:	06813083          	ld	ra,104(sp)
    80003220:	06013403          	ld	s0,96(sp)
    80003224:	05813483          	ld	s1,88(sp)
    80003228:	05013903          	ld	s2,80(sp)
    8000322c:	04813983          	ld	s3,72(sp)
    80003230:	04013a03          	ld	s4,64(sp)
    80003234:	03813a83          	ld	s5,56(sp)
    80003238:	02813b83          	ld	s7,40(sp)
    8000323c:	02013c03          	ld	s8,32(sp)
    80003240:	01813c83          	ld	s9,24(sp)
    80003244:	40ab053b          	subw	a0,s6,a0
    80003248:	03013b03          	ld	s6,48(sp)
    8000324c:	07010113          	addi	sp,sp,112
    80003250:	00008067          	ret
    80003254:	00001097          	auipc	ra,0x1
    80003258:	1d8080e7          	jalr	472(ra) # 8000442c <push_on>
    8000325c:	0984a703          	lw	a4,152(s1)
    80003260:	09c4a783          	lw	a5,156(s1)
    80003264:	0007879b          	sext.w	a5,a5
    80003268:	fef70ce3          	beq	a4,a5,80003260 <consoleread+0xfc>
    8000326c:	00001097          	auipc	ra,0x1
    80003270:	234080e7          	jalr	564(ra) # 800044a0 <pop_on>
    80003274:	0984a783          	lw	a5,152(s1)
    80003278:	07f7f713          	andi	a4,a5,127
    8000327c:	00e48733          	add	a4,s1,a4
    80003280:	01874703          	lbu	a4,24(a4)
    80003284:	0017869b          	addiw	a3,a5,1
    80003288:	08d4ac23          	sw	a3,152(s1)
    8000328c:	00070c9b          	sext.w	s9,a4
    80003290:	f5371ee3          	bne	a4,s3,800031ec <consoleread+0x88>
    80003294:	000b851b          	sext.w	a0,s7
    80003298:	f96bf2e3          	bgeu	s7,s6,8000321c <consoleread+0xb8>
    8000329c:	08f4ac23          	sw	a5,152(s1)
    800032a0:	f7dff06f          	j	8000321c <consoleread+0xb8>

00000000800032a4 <consputc>:
    800032a4:	10000793          	li	a5,256
    800032a8:	00f50663          	beq	a0,a5,800032b4 <consputc+0x10>
    800032ac:	00001317          	auipc	t1,0x1
    800032b0:	9f430067          	jr	-1548(t1) # 80003ca0 <uartputc_sync>
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00113423          	sd	ra,8(sp)
    800032bc:	00813023          	sd	s0,0(sp)
    800032c0:	01010413          	addi	s0,sp,16
    800032c4:	00800513          	li	a0,8
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	9d8080e7          	jalr	-1576(ra) # 80003ca0 <uartputc_sync>
    800032d0:	02000513          	li	a0,32
    800032d4:	00001097          	auipc	ra,0x1
    800032d8:	9cc080e7          	jalr	-1588(ra) # 80003ca0 <uartputc_sync>
    800032dc:	00013403          	ld	s0,0(sp)
    800032e0:	00813083          	ld	ra,8(sp)
    800032e4:	00800513          	li	a0,8
    800032e8:	01010113          	addi	sp,sp,16
    800032ec:	00001317          	auipc	t1,0x1
    800032f0:	9b430067          	jr	-1612(t1) # 80003ca0 <uartputc_sync>

00000000800032f4 <consoleintr>:
    800032f4:	fe010113          	addi	sp,sp,-32
    800032f8:	00813823          	sd	s0,16(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	01213023          	sd	s2,0(sp)
    80003304:	00113c23          	sd	ra,24(sp)
    80003308:	02010413          	addi	s0,sp,32
    8000330c:	00004917          	auipc	s2,0x4
    80003310:	c6c90913          	addi	s2,s2,-916 # 80006f78 <cons>
    80003314:	00050493          	mv	s1,a0
    80003318:	00090513          	mv	a0,s2
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	e40080e7          	jalr	-448(ra) # 8000415c <acquire>
    80003324:	02048c63          	beqz	s1,8000335c <consoleintr+0x68>
    80003328:	0a092783          	lw	a5,160(s2)
    8000332c:	09892703          	lw	a4,152(s2)
    80003330:	07f00693          	li	a3,127
    80003334:	40e7873b          	subw	a4,a5,a4
    80003338:	02e6e263          	bltu	a3,a4,8000335c <consoleintr+0x68>
    8000333c:	00d00713          	li	a4,13
    80003340:	04e48063          	beq	s1,a4,80003380 <consoleintr+0x8c>
    80003344:	07f7f713          	andi	a4,a5,127
    80003348:	00e90733          	add	a4,s2,a4
    8000334c:	0017879b          	addiw	a5,a5,1
    80003350:	0af92023          	sw	a5,160(s2)
    80003354:	00970c23          	sb	s1,24(a4)
    80003358:	08f92e23          	sw	a5,156(s2)
    8000335c:	01013403          	ld	s0,16(sp)
    80003360:	01813083          	ld	ra,24(sp)
    80003364:	00813483          	ld	s1,8(sp)
    80003368:	00013903          	ld	s2,0(sp)
    8000336c:	00004517          	auipc	a0,0x4
    80003370:	c0c50513          	addi	a0,a0,-1012 # 80006f78 <cons>
    80003374:	02010113          	addi	sp,sp,32
    80003378:	00001317          	auipc	t1,0x1
    8000337c:	eb030067          	jr	-336(t1) # 80004228 <release>
    80003380:	00a00493          	li	s1,10
    80003384:	fc1ff06f          	j	80003344 <consoleintr+0x50>

0000000080003388 <consoleinit>:
    80003388:	fe010113          	addi	sp,sp,-32
    8000338c:	00113c23          	sd	ra,24(sp)
    80003390:	00813823          	sd	s0,16(sp)
    80003394:	00913423          	sd	s1,8(sp)
    80003398:	02010413          	addi	s0,sp,32
    8000339c:	00004497          	auipc	s1,0x4
    800033a0:	bdc48493          	addi	s1,s1,-1060 # 80006f78 <cons>
    800033a4:	00048513          	mv	a0,s1
    800033a8:	00002597          	auipc	a1,0x2
    800033ac:	ed858593          	addi	a1,a1,-296 # 80005280 <kvmincrease+0x690>
    800033b0:	00001097          	auipc	ra,0x1
    800033b4:	d88080e7          	jalr	-632(ra) # 80004138 <initlock>
    800033b8:	00000097          	auipc	ra,0x0
    800033bc:	7ac080e7          	jalr	1964(ra) # 80003b64 <uartinit>
    800033c0:	01813083          	ld	ra,24(sp)
    800033c4:	01013403          	ld	s0,16(sp)
    800033c8:	00000797          	auipc	a5,0x0
    800033cc:	d9c78793          	addi	a5,a5,-612 # 80003164 <consoleread>
    800033d0:	0af4bc23          	sd	a5,184(s1)
    800033d4:	00000797          	auipc	a5,0x0
    800033d8:	cec78793          	addi	a5,a5,-788 # 800030c0 <consolewrite>
    800033dc:	0cf4b023          	sd	a5,192(s1)
    800033e0:	00813483          	ld	s1,8(sp)
    800033e4:	02010113          	addi	sp,sp,32
    800033e8:	00008067          	ret

00000000800033ec <console_read>:
    800033ec:	ff010113          	addi	sp,sp,-16
    800033f0:	00813423          	sd	s0,8(sp)
    800033f4:	01010413          	addi	s0,sp,16
    800033f8:	00813403          	ld	s0,8(sp)
    800033fc:	00004317          	auipc	t1,0x4
    80003400:	c3433303          	ld	t1,-972(t1) # 80007030 <devsw+0x10>
    80003404:	01010113          	addi	sp,sp,16
    80003408:	00030067          	jr	t1

000000008000340c <console_write>:
    8000340c:	ff010113          	addi	sp,sp,-16
    80003410:	00813423          	sd	s0,8(sp)
    80003414:	01010413          	addi	s0,sp,16
    80003418:	00813403          	ld	s0,8(sp)
    8000341c:	00004317          	auipc	t1,0x4
    80003420:	c1c33303          	ld	t1,-996(t1) # 80007038 <devsw+0x18>
    80003424:	01010113          	addi	sp,sp,16
    80003428:	00030067          	jr	t1

000000008000342c <panic>:
    8000342c:	fe010113          	addi	sp,sp,-32
    80003430:	00113c23          	sd	ra,24(sp)
    80003434:	00813823          	sd	s0,16(sp)
    80003438:	00913423          	sd	s1,8(sp)
    8000343c:	02010413          	addi	s0,sp,32
    80003440:	00050493          	mv	s1,a0
    80003444:	00002517          	auipc	a0,0x2
    80003448:	e4450513          	addi	a0,a0,-444 # 80005288 <kvmincrease+0x698>
    8000344c:	00004797          	auipc	a5,0x4
    80003450:	c807a623          	sw	zero,-884(a5) # 800070d8 <pr+0x18>
    80003454:	00000097          	auipc	ra,0x0
    80003458:	034080e7          	jalr	52(ra) # 80003488 <__printf>
    8000345c:	00048513          	mv	a0,s1
    80003460:	00000097          	auipc	ra,0x0
    80003464:	028080e7          	jalr	40(ra) # 80003488 <__printf>
    80003468:	00002517          	auipc	a0,0x2
    8000346c:	ce850513          	addi	a0,a0,-792 # 80005150 <kvmincrease+0x560>
    80003470:	00000097          	auipc	ra,0x0
    80003474:	018080e7          	jalr	24(ra) # 80003488 <__printf>
    80003478:	00100793          	li	a5,1
    8000347c:	00003717          	auipc	a4,0x3
    80003480:	9af72e23          	sw	a5,-1604(a4) # 80005e38 <panicked>
    80003484:	0000006f          	j	80003484 <panic+0x58>

0000000080003488 <__printf>:
    80003488:	f3010113          	addi	sp,sp,-208
    8000348c:	08813023          	sd	s0,128(sp)
    80003490:	07313423          	sd	s3,104(sp)
    80003494:	09010413          	addi	s0,sp,144
    80003498:	05813023          	sd	s8,64(sp)
    8000349c:	08113423          	sd	ra,136(sp)
    800034a0:	06913c23          	sd	s1,120(sp)
    800034a4:	07213823          	sd	s2,112(sp)
    800034a8:	07413023          	sd	s4,96(sp)
    800034ac:	05513c23          	sd	s5,88(sp)
    800034b0:	05613823          	sd	s6,80(sp)
    800034b4:	05713423          	sd	s7,72(sp)
    800034b8:	03913c23          	sd	s9,56(sp)
    800034bc:	03a13823          	sd	s10,48(sp)
    800034c0:	03b13423          	sd	s11,40(sp)
    800034c4:	00004317          	auipc	t1,0x4
    800034c8:	bfc30313          	addi	t1,t1,-1028 # 800070c0 <pr>
    800034cc:	01832c03          	lw	s8,24(t1)
    800034d0:	00b43423          	sd	a1,8(s0)
    800034d4:	00c43823          	sd	a2,16(s0)
    800034d8:	00d43c23          	sd	a3,24(s0)
    800034dc:	02e43023          	sd	a4,32(s0)
    800034e0:	02f43423          	sd	a5,40(s0)
    800034e4:	03043823          	sd	a6,48(s0)
    800034e8:	03143c23          	sd	a7,56(s0)
    800034ec:	00050993          	mv	s3,a0
    800034f0:	4a0c1663          	bnez	s8,8000399c <__printf+0x514>
    800034f4:	60098c63          	beqz	s3,80003b0c <__printf+0x684>
    800034f8:	0009c503          	lbu	a0,0(s3)
    800034fc:	00840793          	addi	a5,s0,8
    80003500:	f6f43c23          	sd	a5,-136(s0)
    80003504:	00000493          	li	s1,0
    80003508:	22050063          	beqz	a0,80003728 <__printf+0x2a0>
    8000350c:	00002a37          	lui	s4,0x2
    80003510:	00018ab7          	lui	s5,0x18
    80003514:	000f4b37          	lui	s6,0xf4
    80003518:	00989bb7          	lui	s7,0x989
    8000351c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003520:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003524:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003528:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000352c:	00148c9b          	addiw	s9,s1,1
    80003530:	02500793          	li	a5,37
    80003534:	01998933          	add	s2,s3,s9
    80003538:	38f51263          	bne	a0,a5,800038bc <__printf+0x434>
    8000353c:	00094783          	lbu	a5,0(s2)
    80003540:	00078c9b          	sext.w	s9,a5
    80003544:	1e078263          	beqz	a5,80003728 <__printf+0x2a0>
    80003548:	0024849b          	addiw	s1,s1,2
    8000354c:	07000713          	li	a4,112
    80003550:	00998933          	add	s2,s3,s1
    80003554:	38e78a63          	beq	a5,a4,800038e8 <__printf+0x460>
    80003558:	20f76863          	bltu	a4,a5,80003768 <__printf+0x2e0>
    8000355c:	42a78863          	beq	a5,a0,8000398c <__printf+0x504>
    80003560:	06400713          	li	a4,100
    80003564:	40e79663          	bne	a5,a4,80003970 <__printf+0x4e8>
    80003568:	f7843783          	ld	a5,-136(s0)
    8000356c:	0007a603          	lw	a2,0(a5)
    80003570:	00878793          	addi	a5,a5,8
    80003574:	f6f43c23          	sd	a5,-136(s0)
    80003578:	42064a63          	bltz	a2,800039ac <__printf+0x524>
    8000357c:	00a00713          	li	a4,10
    80003580:	02e677bb          	remuw	a5,a2,a4
    80003584:	00002d97          	auipc	s11,0x2
    80003588:	d2cd8d93          	addi	s11,s11,-724 # 800052b0 <digits>
    8000358c:	00900593          	li	a1,9
    80003590:	0006051b          	sext.w	a0,a2
    80003594:	00000c93          	li	s9,0
    80003598:	02079793          	slli	a5,a5,0x20
    8000359c:	0207d793          	srli	a5,a5,0x20
    800035a0:	00fd87b3          	add	a5,s11,a5
    800035a4:	0007c783          	lbu	a5,0(a5)
    800035a8:	02e656bb          	divuw	a3,a2,a4
    800035ac:	f8f40023          	sb	a5,-128(s0)
    800035b0:	14c5d863          	bge	a1,a2,80003700 <__printf+0x278>
    800035b4:	06300593          	li	a1,99
    800035b8:	00100c93          	li	s9,1
    800035bc:	02e6f7bb          	remuw	a5,a3,a4
    800035c0:	02079793          	slli	a5,a5,0x20
    800035c4:	0207d793          	srli	a5,a5,0x20
    800035c8:	00fd87b3          	add	a5,s11,a5
    800035cc:	0007c783          	lbu	a5,0(a5)
    800035d0:	02e6d73b          	divuw	a4,a3,a4
    800035d4:	f8f400a3          	sb	a5,-127(s0)
    800035d8:	12a5f463          	bgeu	a1,a0,80003700 <__printf+0x278>
    800035dc:	00a00693          	li	a3,10
    800035e0:	00900593          	li	a1,9
    800035e4:	02d777bb          	remuw	a5,a4,a3
    800035e8:	02079793          	slli	a5,a5,0x20
    800035ec:	0207d793          	srli	a5,a5,0x20
    800035f0:	00fd87b3          	add	a5,s11,a5
    800035f4:	0007c503          	lbu	a0,0(a5)
    800035f8:	02d757bb          	divuw	a5,a4,a3
    800035fc:	f8a40123          	sb	a0,-126(s0)
    80003600:	48e5f263          	bgeu	a1,a4,80003a84 <__printf+0x5fc>
    80003604:	06300513          	li	a0,99
    80003608:	02d7f5bb          	remuw	a1,a5,a3
    8000360c:	02059593          	slli	a1,a1,0x20
    80003610:	0205d593          	srli	a1,a1,0x20
    80003614:	00bd85b3          	add	a1,s11,a1
    80003618:	0005c583          	lbu	a1,0(a1)
    8000361c:	02d7d7bb          	divuw	a5,a5,a3
    80003620:	f8b401a3          	sb	a1,-125(s0)
    80003624:	48e57263          	bgeu	a0,a4,80003aa8 <__printf+0x620>
    80003628:	3e700513          	li	a0,999
    8000362c:	02d7f5bb          	remuw	a1,a5,a3
    80003630:	02059593          	slli	a1,a1,0x20
    80003634:	0205d593          	srli	a1,a1,0x20
    80003638:	00bd85b3          	add	a1,s11,a1
    8000363c:	0005c583          	lbu	a1,0(a1)
    80003640:	02d7d7bb          	divuw	a5,a5,a3
    80003644:	f8b40223          	sb	a1,-124(s0)
    80003648:	46e57663          	bgeu	a0,a4,80003ab4 <__printf+0x62c>
    8000364c:	02d7f5bb          	remuw	a1,a5,a3
    80003650:	02059593          	slli	a1,a1,0x20
    80003654:	0205d593          	srli	a1,a1,0x20
    80003658:	00bd85b3          	add	a1,s11,a1
    8000365c:	0005c583          	lbu	a1,0(a1)
    80003660:	02d7d7bb          	divuw	a5,a5,a3
    80003664:	f8b402a3          	sb	a1,-123(s0)
    80003668:	46ea7863          	bgeu	s4,a4,80003ad8 <__printf+0x650>
    8000366c:	02d7f5bb          	remuw	a1,a5,a3
    80003670:	02059593          	slli	a1,a1,0x20
    80003674:	0205d593          	srli	a1,a1,0x20
    80003678:	00bd85b3          	add	a1,s11,a1
    8000367c:	0005c583          	lbu	a1,0(a1)
    80003680:	02d7d7bb          	divuw	a5,a5,a3
    80003684:	f8b40323          	sb	a1,-122(s0)
    80003688:	3eeaf863          	bgeu	s5,a4,80003a78 <__printf+0x5f0>
    8000368c:	02d7f5bb          	remuw	a1,a5,a3
    80003690:	02059593          	slli	a1,a1,0x20
    80003694:	0205d593          	srli	a1,a1,0x20
    80003698:	00bd85b3          	add	a1,s11,a1
    8000369c:	0005c583          	lbu	a1,0(a1)
    800036a0:	02d7d7bb          	divuw	a5,a5,a3
    800036a4:	f8b403a3          	sb	a1,-121(s0)
    800036a8:	42eb7e63          	bgeu	s6,a4,80003ae4 <__printf+0x65c>
    800036ac:	02d7f5bb          	remuw	a1,a5,a3
    800036b0:	02059593          	slli	a1,a1,0x20
    800036b4:	0205d593          	srli	a1,a1,0x20
    800036b8:	00bd85b3          	add	a1,s11,a1
    800036bc:	0005c583          	lbu	a1,0(a1)
    800036c0:	02d7d7bb          	divuw	a5,a5,a3
    800036c4:	f8b40423          	sb	a1,-120(s0)
    800036c8:	42ebfc63          	bgeu	s7,a4,80003b00 <__printf+0x678>
    800036cc:	02079793          	slli	a5,a5,0x20
    800036d0:	0207d793          	srli	a5,a5,0x20
    800036d4:	00fd8db3          	add	s11,s11,a5
    800036d8:	000dc703          	lbu	a4,0(s11)
    800036dc:	00a00793          	li	a5,10
    800036e0:	00900c93          	li	s9,9
    800036e4:	f8e404a3          	sb	a4,-119(s0)
    800036e8:	00065c63          	bgez	a2,80003700 <__printf+0x278>
    800036ec:	f9040713          	addi	a4,s0,-112
    800036f0:	00f70733          	add	a4,a4,a5
    800036f4:	02d00693          	li	a3,45
    800036f8:	fed70823          	sb	a3,-16(a4)
    800036fc:	00078c93          	mv	s9,a5
    80003700:	f8040793          	addi	a5,s0,-128
    80003704:	01978cb3          	add	s9,a5,s9
    80003708:	f7f40d13          	addi	s10,s0,-129
    8000370c:	000cc503          	lbu	a0,0(s9)
    80003710:	fffc8c93          	addi	s9,s9,-1
    80003714:	00000097          	auipc	ra,0x0
    80003718:	b90080e7          	jalr	-1136(ra) # 800032a4 <consputc>
    8000371c:	ffac98e3          	bne	s9,s10,8000370c <__printf+0x284>
    80003720:	00094503          	lbu	a0,0(s2)
    80003724:	e00514e3          	bnez	a0,8000352c <__printf+0xa4>
    80003728:	1a0c1663          	bnez	s8,800038d4 <__printf+0x44c>
    8000372c:	08813083          	ld	ra,136(sp)
    80003730:	08013403          	ld	s0,128(sp)
    80003734:	07813483          	ld	s1,120(sp)
    80003738:	07013903          	ld	s2,112(sp)
    8000373c:	06813983          	ld	s3,104(sp)
    80003740:	06013a03          	ld	s4,96(sp)
    80003744:	05813a83          	ld	s5,88(sp)
    80003748:	05013b03          	ld	s6,80(sp)
    8000374c:	04813b83          	ld	s7,72(sp)
    80003750:	04013c03          	ld	s8,64(sp)
    80003754:	03813c83          	ld	s9,56(sp)
    80003758:	03013d03          	ld	s10,48(sp)
    8000375c:	02813d83          	ld	s11,40(sp)
    80003760:	0d010113          	addi	sp,sp,208
    80003764:	00008067          	ret
    80003768:	07300713          	li	a4,115
    8000376c:	1ce78a63          	beq	a5,a4,80003940 <__printf+0x4b8>
    80003770:	07800713          	li	a4,120
    80003774:	1ee79e63          	bne	a5,a4,80003970 <__printf+0x4e8>
    80003778:	f7843783          	ld	a5,-136(s0)
    8000377c:	0007a703          	lw	a4,0(a5)
    80003780:	00878793          	addi	a5,a5,8
    80003784:	f6f43c23          	sd	a5,-136(s0)
    80003788:	28074263          	bltz	a4,80003a0c <__printf+0x584>
    8000378c:	00002d97          	auipc	s11,0x2
    80003790:	b24d8d93          	addi	s11,s11,-1244 # 800052b0 <digits>
    80003794:	00f77793          	andi	a5,a4,15
    80003798:	00fd87b3          	add	a5,s11,a5
    8000379c:	0007c683          	lbu	a3,0(a5)
    800037a0:	00f00613          	li	a2,15
    800037a4:	0007079b          	sext.w	a5,a4
    800037a8:	f8d40023          	sb	a3,-128(s0)
    800037ac:	0047559b          	srliw	a1,a4,0x4
    800037b0:	0047569b          	srliw	a3,a4,0x4
    800037b4:	00000c93          	li	s9,0
    800037b8:	0ee65063          	bge	a2,a4,80003898 <__printf+0x410>
    800037bc:	00f6f693          	andi	a3,a3,15
    800037c0:	00dd86b3          	add	a3,s11,a3
    800037c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800037c8:	0087d79b          	srliw	a5,a5,0x8
    800037cc:	00100c93          	li	s9,1
    800037d0:	f8d400a3          	sb	a3,-127(s0)
    800037d4:	0cb67263          	bgeu	a2,a1,80003898 <__printf+0x410>
    800037d8:	00f7f693          	andi	a3,a5,15
    800037dc:	00dd86b3          	add	a3,s11,a3
    800037e0:	0006c583          	lbu	a1,0(a3)
    800037e4:	00f00613          	li	a2,15
    800037e8:	0047d69b          	srliw	a3,a5,0x4
    800037ec:	f8b40123          	sb	a1,-126(s0)
    800037f0:	0047d593          	srli	a1,a5,0x4
    800037f4:	28f67e63          	bgeu	a2,a5,80003a90 <__printf+0x608>
    800037f8:	00f6f693          	andi	a3,a3,15
    800037fc:	00dd86b3          	add	a3,s11,a3
    80003800:	0006c503          	lbu	a0,0(a3)
    80003804:	0087d813          	srli	a6,a5,0x8
    80003808:	0087d69b          	srliw	a3,a5,0x8
    8000380c:	f8a401a3          	sb	a0,-125(s0)
    80003810:	28b67663          	bgeu	a2,a1,80003a9c <__printf+0x614>
    80003814:	00f6f693          	andi	a3,a3,15
    80003818:	00dd86b3          	add	a3,s11,a3
    8000381c:	0006c583          	lbu	a1,0(a3)
    80003820:	00c7d513          	srli	a0,a5,0xc
    80003824:	00c7d69b          	srliw	a3,a5,0xc
    80003828:	f8b40223          	sb	a1,-124(s0)
    8000382c:	29067a63          	bgeu	a2,a6,80003ac0 <__printf+0x638>
    80003830:	00f6f693          	andi	a3,a3,15
    80003834:	00dd86b3          	add	a3,s11,a3
    80003838:	0006c583          	lbu	a1,0(a3)
    8000383c:	0107d813          	srli	a6,a5,0x10
    80003840:	0107d69b          	srliw	a3,a5,0x10
    80003844:	f8b402a3          	sb	a1,-123(s0)
    80003848:	28a67263          	bgeu	a2,a0,80003acc <__printf+0x644>
    8000384c:	00f6f693          	andi	a3,a3,15
    80003850:	00dd86b3          	add	a3,s11,a3
    80003854:	0006c683          	lbu	a3,0(a3)
    80003858:	0147d79b          	srliw	a5,a5,0x14
    8000385c:	f8d40323          	sb	a3,-122(s0)
    80003860:	21067663          	bgeu	a2,a6,80003a6c <__printf+0x5e4>
    80003864:	02079793          	slli	a5,a5,0x20
    80003868:	0207d793          	srli	a5,a5,0x20
    8000386c:	00fd8db3          	add	s11,s11,a5
    80003870:	000dc683          	lbu	a3,0(s11)
    80003874:	00800793          	li	a5,8
    80003878:	00700c93          	li	s9,7
    8000387c:	f8d403a3          	sb	a3,-121(s0)
    80003880:	00075c63          	bgez	a4,80003898 <__printf+0x410>
    80003884:	f9040713          	addi	a4,s0,-112
    80003888:	00f70733          	add	a4,a4,a5
    8000388c:	02d00693          	li	a3,45
    80003890:	fed70823          	sb	a3,-16(a4)
    80003894:	00078c93          	mv	s9,a5
    80003898:	f8040793          	addi	a5,s0,-128
    8000389c:	01978cb3          	add	s9,a5,s9
    800038a0:	f7f40d13          	addi	s10,s0,-129
    800038a4:	000cc503          	lbu	a0,0(s9)
    800038a8:	fffc8c93          	addi	s9,s9,-1
    800038ac:	00000097          	auipc	ra,0x0
    800038b0:	9f8080e7          	jalr	-1544(ra) # 800032a4 <consputc>
    800038b4:	ff9d18e3          	bne	s10,s9,800038a4 <__printf+0x41c>
    800038b8:	0100006f          	j	800038c8 <__printf+0x440>
    800038bc:	00000097          	auipc	ra,0x0
    800038c0:	9e8080e7          	jalr	-1560(ra) # 800032a4 <consputc>
    800038c4:	000c8493          	mv	s1,s9
    800038c8:	00094503          	lbu	a0,0(s2)
    800038cc:	c60510e3          	bnez	a0,8000352c <__printf+0xa4>
    800038d0:	e40c0ee3          	beqz	s8,8000372c <__printf+0x2a4>
    800038d4:	00003517          	auipc	a0,0x3
    800038d8:	7ec50513          	addi	a0,a0,2028 # 800070c0 <pr>
    800038dc:	00001097          	auipc	ra,0x1
    800038e0:	94c080e7          	jalr	-1716(ra) # 80004228 <release>
    800038e4:	e49ff06f          	j	8000372c <__printf+0x2a4>
    800038e8:	f7843783          	ld	a5,-136(s0)
    800038ec:	03000513          	li	a0,48
    800038f0:	01000d13          	li	s10,16
    800038f4:	00878713          	addi	a4,a5,8
    800038f8:	0007bc83          	ld	s9,0(a5)
    800038fc:	f6e43c23          	sd	a4,-136(s0)
    80003900:	00000097          	auipc	ra,0x0
    80003904:	9a4080e7          	jalr	-1628(ra) # 800032a4 <consputc>
    80003908:	07800513          	li	a0,120
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	998080e7          	jalr	-1640(ra) # 800032a4 <consputc>
    80003914:	00002d97          	auipc	s11,0x2
    80003918:	99cd8d93          	addi	s11,s11,-1636 # 800052b0 <digits>
    8000391c:	03ccd793          	srli	a5,s9,0x3c
    80003920:	00fd87b3          	add	a5,s11,a5
    80003924:	0007c503          	lbu	a0,0(a5)
    80003928:	fffd0d1b          	addiw	s10,s10,-1
    8000392c:	004c9c93          	slli	s9,s9,0x4
    80003930:	00000097          	auipc	ra,0x0
    80003934:	974080e7          	jalr	-1676(ra) # 800032a4 <consputc>
    80003938:	fe0d12e3          	bnez	s10,8000391c <__printf+0x494>
    8000393c:	f8dff06f          	j	800038c8 <__printf+0x440>
    80003940:	f7843783          	ld	a5,-136(s0)
    80003944:	0007bc83          	ld	s9,0(a5)
    80003948:	00878793          	addi	a5,a5,8
    8000394c:	f6f43c23          	sd	a5,-136(s0)
    80003950:	000c9a63          	bnez	s9,80003964 <__printf+0x4dc>
    80003954:	1080006f          	j	80003a5c <__printf+0x5d4>
    80003958:	001c8c93          	addi	s9,s9,1
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	948080e7          	jalr	-1720(ra) # 800032a4 <consputc>
    80003964:	000cc503          	lbu	a0,0(s9)
    80003968:	fe0518e3          	bnez	a0,80003958 <__printf+0x4d0>
    8000396c:	f5dff06f          	j	800038c8 <__printf+0x440>
    80003970:	02500513          	li	a0,37
    80003974:	00000097          	auipc	ra,0x0
    80003978:	930080e7          	jalr	-1744(ra) # 800032a4 <consputc>
    8000397c:	000c8513          	mv	a0,s9
    80003980:	00000097          	auipc	ra,0x0
    80003984:	924080e7          	jalr	-1756(ra) # 800032a4 <consputc>
    80003988:	f41ff06f          	j	800038c8 <__printf+0x440>
    8000398c:	02500513          	li	a0,37
    80003990:	00000097          	auipc	ra,0x0
    80003994:	914080e7          	jalr	-1772(ra) # 800032a4 <consputc>
    80003998:	f31ff06f          	j	800038c8 <__printf+0x440>
    8000399c:	00030513          	mv	a0,t1
    800039a0:	00000097          	auipc	ra,0x0
    800039a4:	7bc080e7          	jalr	1980(ra) # 8000415c <acquire>
    800039a8:	b4dff06f          	j	800034f4 <__printf+0x6c>
    800039ac:	40c0053b          	negw	a0,a2
    800039b0:	00a00713          	li	a4,10
    800039b4:	02e576bb          	remuw	a3,a0,a4
    800039b8:	00002d97          	auipc	s11,0x2
    800039bc:	8f8d8d93          	addi	s11,s11,-1800 # 800052b0 <digits>
    800039c0:	ff700593          	li	a1,-9
    800039c4:	02069693          	slli	a3,a3,0x20
    800039c8:	0206d693          	srli	a3,a3,0x20
    800039cc:	00dd86b3          	add	a3,s11,a3
    800039d0:	0006c683          	lbu	a3,0(a3)
    800039d4:	02e557bb          	divuw	a5,a0,a4
    800039d8:	f8d40023          	sb	a3,-128(s0)
    800039dc:	10b65e63          	bge	a2,a1,80003af8 <__printf+0x670>
    800039e0:	06300593          	li	a1,99
    800039e4:	02e7f6bb          	remuw	a3,a5,a4
    800039e8:	02069693          	slli	a3,a3,0x20
    800039ec:	0206d693          	srli	a3,a3,0x20
    800039f0:	00dd86b3          	add	a3,s11,a3
    800039f4:	0006c683          	lbu	a3,0(a3)
    800039f8:	02e7d73b          	divuw	a4,a5,a4
    800039fc:	00200793          	li	a5,2
    80003a00:	f8d400a3          	sb	a3,-127(s0)
    80003a04:	bca5ece3          	bltu	a1,a0,800035dc <__printf+0x154>
    80003a08:	ce5ff06f          	j	800036ec <__printf+0x264>
    80003a0c:	40e007bb          	negw	a5,a4
    80003a10:	00002d97          	auipc	s11,0x2
    80003a14:	8a0d8d93          	addi	s11,s11,-1888 # 800052b0 <digits>
    80003a18:	00f7f693          	andi	a3,a5,15
    80003a1c:	00dd86b3          	add	a3,s11,a3
    80003a20:	0006c583          	lbu	a1,0(a3)
    80003a24:	ff100613          	li	a2,-15
    80003a28:	0047d69b          	srliw	a3,a5,0x4
    80003a2c:	f8b40023          	sb	a1,-128(s0)
    80003a30:	0047d59b          	srliw	a1,a5,0x4
    80003a34:	0ac75e63          	bge	a4,a2,80003af0 <__printf+0x668>
    80003a38:	00f6f693          	andi	a3,a3,15
    80003a3c:	00dd86b3          	add	a3,s11,a3
    80003a40:	0006c603          	lbu	a2,0(a3)
    80003a44:	00f00693          	li	a3,15
    80003a48:	0087d79b          	srliw	a5,a5,0x8
    80003a4c:	f8c400a3          	sb	a2,-127(s0)
    80003a50:	d8b6e4e3          	bltu	a3,a1,800037d8 <__printf+0x350>
    80003a54:	00200793          	li	a5,2
    80003a58:	e2dff06f          	j	80003884 <__printf+0x3fc>
    80003a5c:	00002c97          	auipc	s9,0x2
    80003a60:	834c8c93          	addi	s9,s9,-1996 # 80005290 <kvmincrease+0x6a0>
    80003a64:	02800513          	li	a0,40
    80003a68:	ef1ff06f          	j	80003958 <__printf+0x4d0>
    80003a6c:	00700793          	li	a5,7
    80003a70:	00600c93          	li	s9,6
    80003a74:	e0dff06f          	j	80003880 <__printf+0x3f8>
    80003a78:	00700793          	li	a5,7
    80003a7c:	00600c93          	li	s9,6
    80003a80:	c69ff06f          	j	800036e8 <__printf+0x260>
    80003a84:	00300793          	li	a5,3
    80003a88:	00200c93          	li	s9,2
    80003a8c:	c5dff06f          	j	800036e8 <__printf+0x260>
    80003a90:	00300793          	li	a5,3
    80003a94:	00200c93          	li	s9,2
    80003a98:	de9ff06f          	j	80003880 <__printf+0x3f8>
    80003a9c:	00400793          	li	a5,4
    80003aa0:	00300c93          	li	s9,3
    80003aa4:	dddff06f          	j	80003880 <__printf+0x3f8>
    80003aa8:	00400793          	li	a5,4
    80003aac:	00300c93          	li	s9,3
    80003ab0:	c39ff06f          	j	800036e8 <__printf+0x260>
    80003ab4:	00500793          	li	a5,5
    80003ab8:	00400c93          	li	s9,4
    80003abc:	c2dff06f          	j	800036e8 <__printf+0x260>
    80003ac0:	00500793          	li	a5,5
    80003ac4:	00400c93          	li	s9,4
    80003ac8:	db9ff06f          	j	80003880 <__printf+0x3f8>
    80003acc:	00600793          	li	a5,6
    80003ad0:	00500c93          	li	s9,5
    80003ad4:	dadff06f          	j	80003880 <__printf+0x3f8>
    80003ad8:	00600793          	li	a5,6
    80003adc:	00500c93          	li	s9,5
    80003ae0:	c09ff06f          	j	800036e8 <__printf+0x260>
    80003ae4:	00800793          	li	a5,8
    80003ae8:	00700c93          	li	s9,7
    80003aec:	bfdff06f          	j	800036e8 <__printf+0x260>
    80003af0:	00100793          	li	a5,1
    80003af4:	d91ff06f          	j	80003884 <__printf+0x3fc>
    80003af8:	00100793          	li	a5,1
    80003afc:	bf1ff06f          	j	800036ec <__printf+0x264>
    80003b00:	00900793          	li	a5,9
    80003b04:	00800c93          	li	s9,8
    80003b08:	be1ff06f          	j	800036e8 <__printf+0x260>
    80003b0c:	00001517          	auipc	a0,0x1
    80003b10:	78c50513          	addi	a0,a0,1932 # 80005298 <kvmincrease+0x6a8>
    80003b14:	00000097          	auipc	ra,0x0
    80003b18:	918080e7          	jalr	-1768(ra) # 8000342c <panic>

0000000080003b1c <printfinit>:
    80003b1c:	fe010113          	addi	sp,sp,-32
    80003b20:	00813823          	sd	s0,16(sp)
    80003b24:	00913423          	sd	s1,8(sp)
    80003b28:	00113c23          	sd	ra,24(sp)
    80003b2c:	02010413          	addi	s0,sp,32
    80003b30:	00003497          	auipc	s1,0x3
    80003b34:	59048493          	addi	s1,s1,1424 # 800070c0 <pr>
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	00001597          	auipc	a1,0x1
    80003b40:	76c58593          	addi	a1,a1,1900 # 800052a8 <kvmincrease+0x6b8>
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	5f4080e7          	jalr	1524(ra) # 80004138 <initlock>
    80003b4c:	01813083          	ld	ra,24(sp)
    80003b50:	01013403          	ld	s0,16(sp)
    80003b54:	0004ac23          	sw	zero,24(s1)
    80003b58:	00813483          	ld	s1,8(sp)
    80003b5c:	02010113          	addi	sp,sp,32
    80003b60:	00008067          	ret

0000000080003b64 <uartinit>:
    80003b64:	ff010113          	addi	sp,sp,-16
    80003b68:	00813423          	sd	s0,8(sp)
    80003b6c:	01010413          	addi	s0,sp,16
    80003b70:	100007b7          	lui	a5,0x10000
    80003b74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003b78:	f8000713          	li	a4,-128
    80003b7c:	00e781a3          	sb	a4,3(a5)
    80003b80:	00300713          	li	a4,3
    80003b84:	00e78023          	sb	a4,0(a5)
    80003b88:	000780a3          	sb	zero,1(a5)
    80003b8c:	00e781a3          	sb	a4,3(a5)
    80003b90:	00700693          	li	a3,7
    80003b94:	00d78123          	sb	a3,2(a5)
    80003b98:	00e780a3          	sb	a4,1(a5)
    80003b9c:	00813403          	ld	s0,8(sp)
    80003ba0:	01010113          	addi	sp,sp,16
    80003ba4:	00008067          	ret

0000000080003ba8 <uartputc>:
    80003ba8:	00002797          	auipc	a5,0x2
    80003bac:	2907a783          	lw	a5,656(a5) # 80005e38 <panicked>
    80003bb0:	00078463          	beqz	a5,80003bb8 <uartputc+0x10>
    80003bb4:	0000006f          	j	80003bb4 <uartputc+0xc>
    80003bb8:	fd010113          	addi	sp,sp,-48
    80003bbc:	02813023          	sd	s0,32(sp)
    80003bc0:	00913c23          	sd	s1,24(sp)
    80003bc4:	01213823          	sd	s2,16(sp)
    80003bc8:	01313423          	sd	s3,8(sp)
    80003bcc:	02113423          	sd	ra,40(sp)
    80003bd0:	03010413          	addi	s0,sp,48
    80003bd4:	00002917          	auipc	s2,0x2
    80003bd8:	26c90913          	addi	s2,s2,620 # 80005e40 <uart_tx_r>
    80003bdc:	00093783          	ld	a5,0(s2)
    80003be0:	00002497          	auipc	s1,0x2
    80003be4:	26848493          	addi	s1,s1,616 # 80005e48 <uart_tx_w>
    80003be8:	0004b703          	ld	a4,0(s1)
    80003bec:	02078693          	addi	a3,a5,32
    80003bf0:	00050993          	mv	s3,a0
    80003bf4:	02e69c63          	bne	a3,a4,80003c2c <uartputc+0x84>
    80003bf8:	00001097          	auipc	ra,0x1
    80003bfc:	834080e7          	jalr	-1996(ra) # 8000442c <push_on>
    80003c00:	00093783          	ld	a5,0(s2)
    80003c04:	0004b703          	ld	a4,0(s1)
    80003c08:	02078793          	addi	a5,a5,32
    80003c0c:	00e79463          	bne	a5,a4,80003c14 <uartputc+0x6c>
    80003c10:	0000006f          	j	80003c10 <uartputc+0x68>
    80003c14:	00001097          	auipc	ra,0x1
    80003c18:	88c080e7          	jalr	-1908(ra) # 800044a0 <pop_on>
    80003c1c:	00093783          	ld	a5,0(s2)
    80003c20:	0004b703          	ld	a4,0(s1)
    80003c24:	02078693          	addi	a3,a5,32
    80003c28:	fce688e3          	beq	a3,a4,80003bf8 <uartputc+0x50>
    80003c2c:	01f77693          	andi	a3,a4,31
    80003c30:	00003597          	auipc	a1,0x3
    80003c34:	4b058593          	addi	a1,a1,1200 # 800070e0 <uart_tx_buf>
    80003c38:	00d586b3          	add	a3,a1,a3
    80003c3c:	00170713          	addi	a4,a4,1
    80003c40:	01368023          	sb	s3,0(a3)
    80003c44:	00e4b023          	sd	a4,0(s1)
    80003c48:	10000637          	lui	a2,0x10000
    80003c4c:	02f71063          	bne	a4,a5,80003c6c <uartputc+0xc4>
    80003c50:	0340006f          	j	80003c84 <uartputc+0xdc>
    80003c54:	00074703          	lbu	a4,0(a4)
    80003c58:	00f93023          	sd	a5,0(s2)
    80003c5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003c60:	00093783          	ld	a5,0(s2)
    80003c64:	0004b703          	ld	a4,0(s1)
    80003c68:	00f70e63          	beq	a4,a5,80003c84 <uartputc+0xdc>
    80003c6c:	00564683          	lbu	a3,5(a2)
    80003c70:	01f7f713          	andi	a4,a5,31
    80003c74:	00e58733          	add	a4,a1,a4
    80003c78:	0206f693          	andi	a3,a3,32
    80003c7c:	00178793          	addi	a5,a5,1
    80003c80:	fc069ae3          	bnez	a3,80003c54 <uartputc+0xac>
    80003c84:	02813083          	ld	ra,40(sp)
    80003c88:	02013403          	ld	s0,32(sp)
    80003c8c:	01813483          	ld	s1,24(sp)
    80003c90:	01013903          	ld	s2,16(sp)
    80003c94:	00813983          	ld	s3,8(sp)
    80003c98:	03010113          	addi	sp,sp,48
    80003c9c:	00008067          	ret

0000000080003ca0 <uartputc_sync>:
    80003ca0:	ff010113          	addi	sp,sp,-16
    80003ca4:	00813423          	sd	s0,8(sp)
    80003ca8:	01010413          	addi	s0,sp,16
    80003cac:	00002717          	auipc	a4,0x2
    80003cb0:	18c72703          	lw	a4,396(a4) # 80005e38 <panicked>
    80003cb4:	02071663          	bnez	a4,80003ce0 <uartputc_sync+0x40>
    80003cb8:	00050793          	mv	a5,a0
    80003cbc:	100006b7          	lui	a3,0x10000
    80003cc0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003cc4:	02077713          	andi	a4,a4,32
    80003cc8:	fe070ce3          	beqz	a4,80003cc0 <uartputc_sync+0x20>
    80003ccc:	0ff7f793          	andi	a5,a5,255
    80003cd0:	00f68023          	sb	a5,0(a3)
    80003cd4:	00813403          	ld	s0,8(sp)
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret
    80003ce0:	0000006f          	j	80003ce0 <uartputc_sync+0x40>

0000000080003ce4 <uartstart>:
    80003ce4:	ff010113          	addi	sp,sp,-16
    80003ce8:	00813423          	sd	s0,8(sp)
    80003cec:	01010413          	addi	s0,sp,16
    80003cf0:	00002617          	auipc	a2,0x2
    80003cf4:	15060613          	addi	a2,a2,336 # 80005e40 <uart_tx_r>
    80003cf8:	00002517          	auipc	a0,0x2
    80003cfc:	15050513          	addi	a0,a0,336 # 80005e48 <uart_tx_w>
    80003d00:	00063783          	ld	a5,0(a2)
    80003d04:	00053703          	ld	a4,0(a0)
    80003d08:	04f70263          	beq	a4,a5,80003d4c <uartstart+0x68>
    80003d0c:	100005b7          	lui	a1,0x10000
    80003d10:	00003817          	auipc	a6,0x3
    80003d14:	3d080813          	addi	a6,a6,976 # 800070e0 <uart_tx_buf>
    80003d18:	01c0006f          	j	80003d34 <uartstart+0x50>
    80003d1c:	0006c703          	lbu	a4,0(a3)
    80003d20:	00f63023          	sd	a5,0(a2)
    80003d24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003d28:	00063783          	ld	a5,0(a2)
    80003d2c:	00053703          	ld	a4,0(a0)
    80003d30:	00f70e63          	beq	a4,a5,80003d4c <uartstart+0x68>
    80003d34:	01f7f713          	andi	a4,a5,31
    80003d38:	00e806b3          	add	a3,a6,a4
    80003d3c:	0055c703          	lbu	a4,5(a1)
    80003d40:	00178793          	addi	a5,a5,1
    80003d44:	02077713          	andi	a4,a4,32
    80003d48:	fc071ae3          	bnez	a4,80003d1c <uartstart+0x38>
    80003d4c:	00813403          	ld	s0,8(sp)
    80003d50:	01010113          	addi	sp,sp,16
    80003d54:	00008067          	ret

0000000080003d58 <uartgetc>:
    80003d58:	ff010113          	addi	sp,sp,-16
    80003d5c:	00813423          	sd	s0,8(sp)
    80003d60:	01010413          	addi	s0,sp,16
    80003d64:	10000737          	lui	a4,0x10000
    80003d68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003d6c:	0017f793          	andi	a5,a5,1
    80003d70:	00078c63          	beqz	a5,80003d88 <uartgetc+0x30>
    80003d74:	00074503          	lbu	a0,0(a4)
    80003d78:	0ff57513          	andi	a0,a0,255
    80003d7c:	00813403          	ld	s0,8(sp)
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret
    80003d88:	fff00513          	li	a0,-1
    80003d8c:	ff1ff06f          	j	80003d7c <uartgetc+0x24>

0000000080003d90 <uartintr>:
    80003d90:	100007b7          	lui	a5,0x10000
    80003d94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003d98:	0017f793          	andi	a5,a5,1
    80003d9c:	0a078463          	beqz	a5,80003e44 <uartintr+0xb4>
    80003da0:	fe010113          	addi	sp,sp,-32
    80003da4:	00813823          	sd	s0,16(sp)
    80003da8:	00913423          	sd	s1,8(sp)
    80003dac:	00113c23          	sd	ra,24(sp)
    80003db0:	02010413          	addi	s0,sp,32
    80003db4:	100004b7          	lui	s1,0x10000
    80003db8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003dbc:	0ff57513          	andi	a0,a0,255
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	534080e7          	jalr	1332(ra) # 800032f4 <consoleintr>
    80003dc8:	0054c783          	lbu	a5,5(s1)
    80003dcc:	0017f793          	andi	a5,a5,1
    80003dd0:	fe0794e3          	bnez	a5,80003db8 <uartintr+0x28>
    80003dd4:	00002617          	auipc	a2,0x2
    80003dd8:	06c60613          	addi	a2,a2,108 # 80005e40 <uart_tx_r>
    80003ddc:	00002517          	auipc	a0,0x2
    80003de0:	06c50513          	addi	a0,a0,108 # 80005e48 <uart_tx_w>
    80003de4:	00063783          	ld	a5,0(a2)
    80003de8:	00053703          	ld	a4,0(a0)
    80003dec:	04f70263          	beq	a4,a5,80003e30 <uartintr+0xa0>
    80003df0:	100005b7          	lui	a1,0x10000
    80003df4:	00003817          	auipc	a6,0x3
    80003df8:	2ec80813          	addi	a6,a6,748 # 800070e0 <uart_tx_buf>
    80003dfc:	01c0006f          	j	80003e18 <uartintr+0x88>
    80003e00:	0006c703          	lbu	a4,0(a3)
    80003e04:	00f63023          	sd	a5,0(a2)
    80003e08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e0c:	00063783          	ld	a5,0(a2)
    80003e10:	00053703          	ld	a4,0(a0)
    80003e14:	00f70e63          	beq	a4,a5,80003e30 <uartintr+0xa0>
    80003e18:	01f7f713          	andi	a4,a5,31
    80003e1c:	00e806b3          	add	a3,a6,a4
    80003e20:	0055c703          	lbu	a4,5(a1)
    80003e24:	00178793          	addi	a5,a5,1
    80003e28:	02077713          	andi	a4,a4,32
    80003e2c:	fc071ae3          	bnez	a4,80003e00 <uartintr+0x70>
    80003e30:	01813083          	ld	ra,24(sp)
    80003e34:	01013403          	ld	s0,16(sp)
    80003e38:	00813483          	ld	s1,8(sp)
    80003e3c:	02010113          	addi	sp,sp,32
    80003e40:	00008067          	ret
    80003e44:	00002617          	auipc	a2,0x2
    80003e48:	ffc60613          	addi	a2,a2,-4 # 80005e40 <uart_tx_r>
    80003e4c:	00002517          	auipc	a0,0x2
    80003e50:	ffc50513          	addi	a0,a0,-4 # 80005e48 <uart_tx_w>
    80003e54:	00063783          	ld	a5,0(a2)
    80003e58:	00053703          	ld	a4,0(a0)
    80003e5c:	04f70263          	beq	a4,a5,80003ea0 <uartintr+0x110>
    80003e60:	100005b7          	lui	a1,0x10000
    80003e64:	00003817          	auipc	a6,0x3
    80003e68:	27c80813          	addi	a6,a6,636 # 800070e0 <uart_tx_buf>
    80003e6c:	01c0006f          	j	80003e88 <uartintr+0xf8>
    80003e70:	0006c703          	lbu	a4,0(a3)
    80003e74:	00f63023          	sd	a5,0(a2)
    80003e78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003e7c:	00063783          	ld	a5,0(a2)
    80003e80:	00053703          	ld	a4,0(a0)
    80003e84:	02f70063          	beq	a4,a5,80003ea4 <uartintr+0x114>
    80003e88:	01f7f713          	andi	a4,a5,31
    80003e8c:	00e806b3          	add	a3,a6,a4
    80003e90:	0055c703          	lbu	a4,5(a1)
    80003e94:	00178793          	addi	a5,a5,1
    80003e98:	02077713          	andi	a4,a4,32
    80003e9c:	fc071ae3          	bnez	a4,80003e70 <uartintr+0xe0>
    80003ea0:	00008067          	ret
    80003ea4:	00008067          	ret

0000000080003ea8 <kinit>:
    80003ea8:	fc010113          	addi	sp,sp,-64
    80003eac:	02913423          	sd	s1,40(sp)
    80003eb0:	fffff7b7          	lui	a5,0xfffff
    80003eb4:	00004497          	auipc	s1,0x4
    80003eb8:	25b48493          	addi	s1,s1,603 # 8000810f <end+0xfff>
    80003ebc:	02813823          	sd	s0,48(sp)
    80003ec0:	01313c23          	sd	s3,24(sp)
    80003ec4:	00f4f4b3          	and	s1,s1,a5
    80003ec8:	02113c23          	sd	ra,56(sp)
    80003ecc:	03213023          	sd	s2,32(sp)
    80003ed0:	01413823          	sd	s4,16(sp)
    80003ed4:	01513423          	sd	s5,8(sp)
    80003ed8:	04010413          	addi	s0,sp,64
    80003edc:	000017b7          	lui	a5,0x1
    80003ee0:	01100993          	li	s3,17
    80003ee4:	00f487b3          	add	a5,s1,a5
    80003ee8:	01b99993          	slli	s3,s3,0x1b
    80003eec:	06f9e063          	bltu	s3,a5,80003f4c <kinit+0xa4>
    80003ef0:	00003a97          	auipc	s5,0x3
    80003ef4:	220a8a93          	addi	s5,s5,544 # 80007110 <end>
    80003ef8:	0754ec63          	bltu	s1,s5,80003f70 <kinit+0xc8>
    80003efc:	0734fa63          	bgeu	s1,s3,80003f70 <kinit+0xc8>
    80003f00:	00088a37          	lui	s4,0x88
    80003f04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003f08:	00002917          	auipc	s2,0x2
    80003f0c:	f4890913          	addi	s2,s2,-184 # 80005e50 <kmem>
    80003f10:	00ca1a13          	slli	s4,s4,0xc
    80003f14:	0140006f          	j	80003f28 <kinit+0x80>
    80003f18:	000017b7          	lui	a5,0x1
    80003f1c:	00f484b3          	add	s1,s1,a5
    80003f20:	0554e863          	bltu	s1,s5,80003f70 <kinit+0xc8>
    80003f24:	0534f663          	bgeu	s1,s3,80003f70 <kinit+0xc8>
    80003f28:	00001637          	lui	a2,0x1
    80003f2c:	00100593          	li	a1,1
    80003f30:	00048513          	mv	a0,s1
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	5e4080e7          	jalr	1508(ra) # 80004518 <__memset>
    80003f3c:	00093783          	ld	a5,0(s2)
    80003f40:	00f4b023          	sd	a5,0(s1)
    80003f44:	00993023          	sd	s1,0(s2)
    80003f48:	fd4498e3          	bne	s1,s4,80003f18 <kinit+0x70>
    80003f4c:	03813083          	ld	ra,56(sp)
    80003f50:	03013403          	ld	s0,48(sp)
    80003f54:	02813483          	ld	s1,40(sp)
    80003f58:	02013903          	ld	s2,32(sp)
    80003f5c:	01813983          	ld	s3,24(sp)
    80003f60:	01013a03          	ld	s4,16(sp)
    80003f64:	00813a83          	ld	s5,8(sp)
    80003f68:	04010113          	addi	sp,sp,64
    80003f6c:	00008067          	ret
    80003f70:	00001517          	auipc	a0,0x1
    80003f74:	35850513          	addi	a0,a0,856 # 800052c8 <digits+0x18>
    80003f78:	fffff097          	auipc	ra,0xfffff
    80003f7c:	4b4080e7          	jalr	1204(ra) # 8000342c <panic>

0000000080003f80 <freerange>:
    80003f80:	fc010113          	addi	sp,sp,-64
    80003f84:	000017b7          	lui	a5,0x1
    80003f88:	02913423          	sd	s1,40(sp)
    80003f8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003f90:	009504b3          	add	s1,a0,s1
    80003f94:	fffff537          	lui	a0,0xfffff
    80003f98:	02813823          	sd	s0,48(sp)
    80003f9c:	02113c23          	sd	ra,56(sp)
    80003fa0:	03213023          	sd	s2,32(sp)
    80003fa4:	01313c23          	sd	s3,24(sp)
    80003fa8:	01413823          	sd	s4,16(sp)
    80003fac:	01513423          	sd	s5,8(sp)
    80003fb0:	01613023          	sd	s6,0(sp)
    80003fb4:	04010413          	addi	s0,sp,64
    80003fb8:	00a4f4b3          	and	s1,s1,a0
    80003fbc:	00f487b3          	add	a5,s1,a5
    80003fc0:	06f5e463          	bltu	a1,a5,80004028 <freerange+0xa8>
    80003fc4:	00003a97          	auipc	s5,0x3
    80003fc8:	14ca8a93          	addi	s5,s5,332 # 80007110 <end>
    80003fcc:	0954e263          	bltu	s1,s5,80004050 <freerange+0xd0>
    80003fd0:	01100993          	li	s3,17
    80003fd4:	01b99993          	slli	s3,s3,0x1b
    80003fd8:	0734fc63          	bgeu	s1,s3,80004050 <freerange+0xd0>
    80003fdc:	00058a13          	mv	s4,a1
    80003fe0:	00002917          	auipc	s2,0x2
    80003fe4:	e7090913          	addi	s2,s2,-400 # 80005e50 <kmem>
    80003fe8:	00002b37          	lui	s6,0x2
    80003fec:	0140006f          	j	80004000 <freerange+0x80>
    80003ff0:	000017b7          	lui	a5,0x1
    80003ff4:	00f484b3          	add	s1,s1,a5
    80003ff8:	0554ec63          	bltu	s1,s5,80004050 <freerange+0xd0>
    80003ffc:	0534fa63          	bgeu	s1,s3,80004050 <freerange+0xd0>
    80004000:	00001637          	lui	a2,0x1
    80004004:	00100593          	li	a1,1
    80004008:	00048513          	mv	a0,s1
    8000400c:	00000097          	auipc	ra,0x0
    80004010:	50c080e7          	jalr	1292(ra) # 80004518 <__memset>
    80004014:	00093703          	ld	a4,0(s2)
    80004018:	016487b3          	add	a5,s1,s6
    8000401c:	00e4b023          	sd	a4,0(s1)
    80004020:	00993023          	sd	s1,0(s2)
    80004024:	fcfa76e3          	bgeu	s4,a5,80003ff0 <freerange+0x70>
    80004028:	03813083          	ld	ra,56(sp)
    8000402c:	03013403          	ld	s0,48(sp)
    80004030:	02813483          	ld	s1,40(sp)
    80004034:	02013903          	ld	s2,32(sp)
    80004038:	01813983          	ld	s3,24(sp)
    8000403c:	01013a03          	ld	s4,16(sp)
    80004040:	00813a83          	ld	s5,8(sp)
    80004044:	00013b03          	ld	s6,0(sp)
    80004048:	04010113          	addi	sp,sp,64
    8000404c:	00008067          	ret
    80004050:	00001517          	auipc	a0,0x1
    80004054:	27850513          	addi	a0,a0,632 # 800052c8 <digits+0x18>
    80004058:	fffff097          	auipc	ra,0xfffff
    8000405c:	3d4080e7          	jalr	980(ra) # 8000342c <panic>

0000000080004060 <kfree>:
    80004060:	fe010113          	addi	sp,sp,-32
    80004064:	00813823          	sd	s0,16(sp)
    80004068:	00113c23          	sd	ra,24(sp)
    8000406c:	00913423          	sd	s1,8(sp)
    80004070:	02010413          	addi	s0,sp,32
    80004074:	03451793          	slli	a5,a0,0x34
    80004078:	04079c63          	bnez	a5,800040d0 <kfree+0x70>
    8000407c:	00003797          	auipc	a5,0x3
    80004080:	09478793          	addi	a5,a5,148 # 80007110 <end>
    80004084:	00050493          	mv	s1,a0
    80004088:	04f56463          	bltu	a0,a5,800040d0 <kfree+0x70>
    8000408c:	01100793          	li	a5,17
    80004090:	01b79793          	slli	a5,a5,0x1b
    80004094:	02f57e63          	bgeu	a0,a5,800040d0 <kfree+0x70>
    80004098:	00001637          	lui	a2,0x1
    8000409c:	00100593          	li	a1,1
    800040a0:	00000097          	auipc	ra,0x0
    800040a4:	478080e7          	jalr	1144(ra) # 80004518 <__memset>
    800040a8:	00002797          	auipc	a5,0x2
    800040ac:	da878793          	addi	a5,a5,-600 # 80005e50 <kmem>
    800040b0:	0007b703          	ld	a4,0(a5)
    800040b4:	01813083          	ld	ra,24(sp)
    800040b8:	01013403          	ld	s0,16(sp)
    800040bc:	00e4b023          	sd	a4,0(s1)
    800040c0:	0097b023          	sd	s1,0(a5)
    800040c4:	00813483          	ld	s1,8(sp)
    800040c8:	02010113          	addi	sp,sp,32
    800040cc:	00008067          	ret
    800040d0:	00001517          	auipc	a0,0x1
    800040d4:	1f850513          	addi	a0,a0,504 # 800052c8 <digits+0x18>
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	354080e7          	jalr	852(ra) # 8000342c <panic>

00000000800040e0 <kalloc>:
    800040e0:	fe010113          	addi	sp,sp,-32
    800040e4:	00813823          	sd	s0,16(sp)
    800040e8:	00913423          	sd	s1,8(sp)
    800040ec:	00113c23          	sd	ra,24(sp)
    800040f0:	02010413          	addi	s0,sp,32
    800040f4:	00002797          	auipc	a5,0x2
    800040f8:	d5c78793          	addi	a5,a5,-676 # 80005e50 <kmem>
    800040fc:	0007b483          	ld	s1,0(a5)
    80004100:	02048063          	beqz	s1,80004120 <kalloc+0x40>
    80004104:	0004b703          	ld	a4,0(s1)
    80004108:	00001637          	lui	a2,0x1
    8000410c:	00500593          	li	a1,5
    80004110:	00048513          	mv	a0,s1
    80004114:	00e7b023          	sd	a4,0(a5)
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	400080e7          	jalr	1024(ra) # 80004518 <__memset>
    80004120:	01813083          	ld	ra,24(sp)
    80004124:	01013403          	ld	s0,16(sp)
    80004128:	00048513          	mv	a0,s1
    8000412c:	00813483          	ld	s1,8(sp)
    80004130:	02010113          	addi	sp,sp,32
    80004134:	00008067          	ret

0000000080004138 <initlock>:
    80004138:	ff010113          	addi	sp,sp,-16
    8000413c:	00813423          	sd	s0,8(sp)
    80004140:	01010413          	addi	s0,sp,16
    80004144:	00813403          	ld	s0,8(sp)
    80004148:	00b53423          	sd	a1,8(a0)
    8000414c:	00052023          	sw	zero,0(a0)
    80004150:	00053823          	sd	zero,16(a0)
    80004154:	01010113          	addi	sp,sp,16
    80004158:	00008067          	ret

000000008000415c <acquire>:
    8000415c:	fe010113          	addi	sp,sp,-32
    80004160:	00813823          	sd	s0,16(sp)
    80004164:	00913423          	sd	s1,8(sp)
    80004168:	00113c23          	sd	ra,24(sp)
    8000416c:	01213023          	sd	s2,0(sp)
    80004170:	02010413          	addi	s0,sp,32
    80004174:	00050493          	mv	s1,a0
    80004178:	10002973          	csrr	s2,sstatus
    8000417c:	100027f3          	csrr	a5,sstatus
    80004180:	ffd7f793          	andi	a5,a5,-3
    80004184:	10079073          	csrw	sstatus,a5
    80004188:	fffff097          	auipc	ra,0xfffff
    8000418c:	8ec080e7          	jalr	-1812(ra) # 80002a74 <mycpu>
    80004190:	07852783          	lw	a5,120(a0)
    80004194:	06078e63          	beqz	a5,80004210 <acquire+0xb4>
    80004198:	fffff097          	auipc	ra,0xfffff
    8000419c:	8dc080e7          	jalr	-1828(ra) # 80002a74 <mycpu>
    800041a0:	07852783          	lw	a5,120(a0)
    800041a4:	0004a703          	lw	a4,0(s1)
    800041a8:	0017879b          	addiw	a5,a5,1
    800041ac:	06f52c23          	sw	a5,120(a0)
    800041b0:	04071063          	bnez	a4,800041f0 <acquire+0x94>
    800041b4:	00100713          	li	a4,1
    800041b8:	00070793          	mv	a5,a4
    800041bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800041c0:	0007879b          	sext.w	a5,a5
    800041c4:	fe079ae3          	bnez	a5,800041b8 <acquire+0x5c>
    800041c8:	0ff0000f          	fence
    800041cc:	fffff097          	auipc	ra,0xfffff
    800041d0:	8a8080e7          	jalr	-1880(ra) # 80002a74 <mycpu>
    800041d4:	01813083          	ld	ra,24(sp)
    800041d8:	01013403          	ld	s0,16(sp)
    800041dc:	00a4b823          	sd	a0,16(s1)
    800041e0:	00013903          	ld	s2,0(sp)
    800041e4:	00813483          	ld	s1,8(sp)
    800041e8:	02010113          	addi	sp,sp,32
    800041ec:	00008067          	ret
    800041f0:	0104b903          	ld	s2,16(s1)
    800041f4:	fffff097          	auipc	ra,0xfffff
    800041f8:	880080e7          	jalr	-1920(ra) # 80002a74 <mycpu>
    800041fc:	faa91ce3          	bne	s2,a0,800041b4 <acquire+0x58>
    80004200:	00001517          	auipc	a0,0x1
    80004204:	0d050513          	addi	a0,a0,208 # 800052d0 <digits+0x20>
    80004208:	fffff097          	auipc	ra,0xfffff
    8000420c:	224080e7          	jalr	548(ra) # 8000342c <panic>
    80004210:	00195913          	srli	s2,s2,0x1
    80004214:	fffff097          	auipc	ra,0xfffff
    80004218:	860080e7          	jalr	-1952(ra) # 80002a74 <mycpu>
    8000421c:	00197913          	andi	s2,s2,1
    80004220:	07252e23          	sw	s2,124(a0)
    80004224:	f75ff06f          	j	80004198 <acquire+0x3c>

0000000080004228 <release>:
    80004228:	fe010113          	addi	sp,sp,-32
    8000422c:	00813823          	sd	s0,16(sp)
    80004230:	00113c23          	sd	ra,24(sp)
    80004234:	00913423          	sd	s1,8(sp)
    80004238:	01213023          	sd	s2,0(sp)
    8000423c:	02010413          	addi	s0,sp,32
    80004240:	00052783          	lw	a5,0(a0)
    80004244:	00079a63          	bnez	a5,80004258 <release+0x30>
    80004248:	00001517          	auipc	a0,0x1
    8000424c:	09050513          	addi	a0,a0,144 # 800052d8 <digits+0x28>
    80004250:	fffff097          	auipc	ra,0xfffff
    80004254:	1dc080e7          	jalr	476(ra) # 8000342c <panic>
    80004258:	01053903          	ld	s2,16(a0)
    8000425c:	00050493          	mv	s1,a0
    80004260:	fffff097          	auipc	ra,0xfffff
    80004264:	814080e7          	jalr	-2028(ra) # 80002a74 <mycpu>
    80004268:	fea910e3          	bne	s2,a0,80004248 <release+0x20>
    8000426c:	0004b823          	sd	zero,16(s1)
    80004270:	0ff0000f          	fence
    80004274:	0f50000f          	fence	iorw,ow
    80004278:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000427c:	ffffe097          	auipc	ra,0xffffe
    80004280:	7f8080e7          	jalr	2040(ra) # 80002a74 <mycpu>
    80004284:	100027f3          	csrr	a5,sstatus
    80004288:	0027f793          	andi	a5,a5,2
    8000428c:	04079a63          	bnez	a5,800042e0 <release+0xb8>
    80004290:	07852783          	lw	a5,120(a0)
    80004294:	02f05e63          	blez	a5,800042d0 <release+0xa8>
    80004298:	fff7871b          	addiw	a4,a5,-1
    8000429c:	06e52c23          	sw	a4,120(a0)
    800042a0:	00071c63          	bnez	a4,800042b8 <release+0x90>
    800042a4:	07c52783          	lw	a5,124(a0)
    800042a8:	00078863          	beqz	a5,800042b8 <release+0x90>
    800042ac:	100027f3          	csrr	a5,sstatus
    800042b0:	0027e793          	ori	a5,a5,2
    800042b4:	10079073          	csrw	sstatus,a5
    800042b8:	01813083          	ld	ra,24(sp)
    800042bc:	01013403          	ld	s0,16(sp)
    800042c0:	00813483          	ld	s1,8(sp)
    800042c4:	00013903          	ld	s2,0(sp)
    800042c8:	02010113          	addi	sp,sp,32
    800042cc:	00008067          	ret
    800042d0:	00001517          	auipc	a0,0x1
    800042d4:	02850513          	addi	a0,a0,40 # 800052f8 <digits+0x48>
    800042d8:	fffff097          	auipc	ra,0xfffff
    800042dc:	154080e7          	jalr	340(ra) # 8000342c <panic>
    800042e0:	00001517          	auipc	a0,0x1
    800042e4:	00050513          	mv	a0,a0
    800042e8:	fffff097          	auipc	ra,0xfffff
    800042ec:	144080e7          	jalr	324(ra) # 8000342c <panic>

00000000800042f0 <holding>:
    800042f0:	00052783          	lw	a5,0(a0) # 800052e0 <digits+0x30>
    800042f4:	00079663          	bnez	a5,80004300 <holding+0x10>
    800042f8:	00000513          	li	a0,0
    800042fc:	00008067          	ret
    80004300:	fe010113          	addi	sp,sp,-32
    80004304:	00813823          	sd	s0,16(sp)
    80004308:	00913423          	sd	s1,8(sp)
    8000430c:	00113c23          	sd	ra,24(sp)
    80004310:	02010413          	addi	s0,sp,32
    80004314:	01053483          	ld	s1,16(a0)
    80004318:	ffffe097          	auipc	ra,0xffffe
    8000431c:	75c080e7          	jalr	1884(ra) # 80002a74 <mycpu>
    80004320:	01813083          	ld	ra,24(sp)
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	40a48533          	sub	a0,s1,a0
    8000432c:	00153513          	seqz	a0,a0
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	02010113          	addi	sp,sp,32
    80004338:	00008067          	ret

000000008000433c <push_off>:
    8000433c:	fe010113          	addi	sp,sp,-32
    80004340:	00813823          	sd	s0,16(sp)
    80004344:	00113c23          	sd	ra,24(sp)
    80004348:	00913423          	sd	s1,8(sp)
    8000434c:	02010413          	addi	s0,sp,32
    80004350:	100024f3          	csrr	s1,sstatus
    80004354:	100027f3          	csrr	a5,sstatus
    80004358:	ffd7f793          	andi	a5,a5,-3
    8000435c:	10079073          	csrw	sstatus,a5
    80004360:	ffffe097          	auipc	ra,0xffffe
    80004364:	714080e7          	jalr	1812(ra) # 80002a74 <mycpu>
    80004368:	07852783          	lw	a5,120(a0)
    8000436c:	02078663          	beqz	a5,80004398 <push_off+0x5c>
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	704080e7          	jalr	1796(ra) # 80002a74 <mycpu>
    80004378:	07852783          	lw	a5,120(a0)
    8000437c:	01813083          	ld	ra,24(sp)
    80004380:	01013403          	ld	s0,16(sp)
    80004384:	0017879b          	addiw	a5,a5,1
    80004388:	06f52c23          	sw	a5,120(a0)
    8000438c:	00813483          	ld	s1,8(sp)
    80004390:	02010113          	addi	sp,sp,32
    80004394:	00008067          	ret
    80004398:	0014d493          	srli	s1,s1,0x1
    8000439c:	ffffe097          	auipc	ra,0xffffe
    800043a0:	6d8080e7          	jalr	1752(ra) # 80002a74 <mycpu>
    800043a4:	0014f493          	andi	s1,s1,1
    800043a8:	06952e23          	sw	s1,124(a0)
    800043ac:	fc5ff06f          	j	80004370 <push_off+0x34>

00000000800043b0 <pop_off>:
    800043b0:	ff010113          	addi	sp,sp,-16
    800043b4:	00813023          	sd	s0,0(sp)
    800043b8:	00113423          	sd	ra,8(sp)
    800043bc:	01010413          	addi	s0,sp,16
    800043c0:	ffffe097          	auipc	ra,0xffffe
    800043c4:	6b4080e7          	jalr	1716(ra) # 80002a74 <mycpu>
    800043c8:	100027f3          	csrr	a5,sstatus
    800043cc:	0027f793          	andi	a5,a5,2
    800043d0:	04079663          	bnez	a5,8000441c <pop_off+0x6c>
    800043d4:	07852783          	lw	a5,120(a0)
    800043d8:	02f05a63          	blez	a5,8000440c <pop_off+0x5c>
    800043dc:	fff7871b          	addiw	a4,a5,-1
    800043e0:	06e52c23          	sw	a4,120(a0)
    800043e4:	00071c63          	bnez	a4,800043fc <pop_off+0x4c>
    800043e8:	07c52783          	lw	a5,124(a0)
    800043ec:	00078863          	beqz	a5,800043fc <pop_off+0x4c>
    800043f0:	100027f3          	csrr	a5,sstatus
    800043f4:	0027e793          	ori	a5,a5,2
    800043f8:	10079073          	csrw	sstatus,a5
    800043fc:	00813083          	ld	ra,8(sp)
    80004400:	00013403          	ld	s0,0(sp)
    80004404:	01010113          	addi	sp,sp,16
    80004408:	00008067          	ret
    8000440c:	00001517          	auipc	a0,0x1
    80004410:	eec50513          	addi	a0,a0,-276 # 800052f8 <digits+0x48>
    80004414:	fffff097          	auipc	ra,0xfffff
    80004418:	018080e7          	jalr	24(ra) # 8000342c <panic>
    8000441c:	00001517          	auipc	a0,0x1
    80004420:	ec450513          	addi	a0,a0,-316 # 800052e0 <digits+0x30>
    80004424:	fffff097          	auipc	ra,0xfffff
    80004428:	008080e7          	jalr	8(ra) # 8000342c <panic>

000000008000442c <push_on>:
    8000442c:	fe010113          	addi	sp,sp,-32
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00113c23          	sd	ra,24(sp)
    80004438:	00913423          	sd	s1,8(sp)
    8000443c:	02010413          	addi	s0,sp,32
    80004440:	100024f3          	csrr	s1,sstatus
    80004444:	100027f3          	csrr	a5,sstatus
    80004448:	0027e793          	ori	a5,a5,2
    8000444c:	10079073          	csrw	sstatus,a5
    80004450:	ffffe097          	auipc	ra,0xffffe
    80004454:	624080e7          	jalr	1572(ra) # 80002a74 <mycpu>
    80004458:	07852783          	lw	a5,120(a0)
    8000445c:	02078663          	beqz	a5,80004488 <push_on+0x5c>
    80004460:	ffffe097          	auipc	ra,0xffffe
    80004464:	614080e7          	jalr	1556(ra) # 80002a74 <mycpu>
    80004468:	07852783          	lw	a5,120(a0)
    8000446c:	01813083          	ld	ra,24(sp)
    80004470:	01013403          	ld	s0,16(sp)
    80004474:	0017879b          	addiw	a5,a5,1
    80004478:	06f52c23          	sw	a5,120(a0)
    8000447c:	00813483          	ld	s1,8(sp)
    80004480:	02010113          	addi	sp,sp,32
    80004484:	00008067          	ret
    80004488:	0014d493          	srli	s1,s1,0x1
    8000448c:	ffffe097          	auipc	ra,0xffffe
    80004490:	5e8080e7          	jalr	1512(ra) # 80002a74 <mycpu>
    80004494:	0014f493          	andi	s1,s1,1
    80004498:	06952e23          	sw	s1,124(a0)
    8000449c:	fc5ff06f          	j	80004460 <push_on+0x34>

00000000800044a0 <pop_on>:
    800044a0:	ff010113          	addi	sp,sp,-16
    800044a4:	00813023          	sd	s0,0(sp)
    800044a8:	00113423          	sd	ra,8(sp)
    800044ac:	01010413          	addi	s0,sp,16
    800044b0:	ffffe097          	auipc	ra,0xffffe
    800044b4:	5c4080e7          	jalr	1476(ra) # 80002a74 <mycpu>
    800044b8:	100027f3          	csrr	a5,sstatus
    800044bc:	0027f793          	andi	a5,a5,2
    800044c0:	04078463          	beqz	a5,80004508 <pop_on+0x68>
    800044c4:	07852783          	lw	a5,120(a0)
    800044c8:	02f05863          	blez	a5,800044f8 <pop_on+0x58>
    800044cc:	fff7879b          	addiw	a5,a5,-1
    800044d0:	06f52c23          	sw	a5,120(a0)
    800044d4:	07853783          	ld	a5,120(a0)
    800044d8:	00079863          	bnez	a5,800044e8 <pop_on+0x48>
    800044dc:	100027f3          	csrr	a5,sstatus
    800044e0:	ffd7f793          	andi	a5,a5,-3
    800044e4:	10079073          	csrw	sstatus,a5
    800044e8:	00813083          	ld	ra,8(sp)
    800044ec:	00013403          	ld	s0,0(sp)
    800044f0:	01010113          	addi	sp,sp,16
    800044f4:	00008067          	ret
    800044f8:	00001517          	auipc	a0,0x1
    800044fc:	e2850513          	addi	a0,a0,-472 # 80005320 <digits+0x70>
    80004500:	fffff097          	auipc	ra,0xfffff
    80004504:	f2c080e7          	jalr	-212(ra) # 8000342c <panic>
    80004508:	00001517          	auipc	a0,0x1
    8000450c:	df850513          	addi	a0,a0,-520 # 80005300 <digits+0x50>
    80004510:	fffff097          	auipc	ra,0xfffff
    80004514:	f1c080e7          	jalr	-228(ra) # 8000342c <panic>

0000000080004518 <__memset>:
    80004518:	ff010113          	addi	sp,sp,-16
    8000451c:	00813423          	sd	s0,8(sp)
    80004520:	01010413          	addi	s0,sp,16
    80004524:	1a060e63          	beqz	a2,800046e0 <__memset+0x1c8>
    80004528:	40a007b3          	neg	a5,a0
    8000452c:	0077f793          	andi	a5,a5,7
    80004530:	00778693          	addi	a3,a5,7
    80004534:	00b00813          	li	a6,11
    80004538:	0ff5f593          	andi	a1,a1,255
    8000453c:	fff6071b          	addiw	a4,a2,-1
    80004540:	1b06e663          	bltu	a3,a6,800046ec <__memset+0x1d4>
    80004544:	1cd76463          	bltu	a4,a3,8000470c <__memset+0x1f4>
    80004548:	1a078e63          	beqz	a5,80004704 <__memset+0x1ec>
    8000454c:	00b50023          	sb	a1,0(a0)
    80004550:	00100713          	li	a4,1
    80004554:	1ae78463          	beq	a5,a4,800046fc <__memset+0x1e4>
    80004558:	00b500a3          	sb	a1,1(a0)
    8000455c:	00200713          	li	a4,2
    80004560:	1ae78a63          	beq	a5,a4,80004714 <__memset+0x1fc>
    80004564:	00b50123          	sb	a1,2(a0)
    80004568:	00300713          	li	a4,3
    8000456c:	18e78463          	beq	a5,a4,800046f4 <__memset+0x1dc>
    80004570:	00b501a3          	sb	a1,3(a0)
    80004574:	00400713          	li	a4,4
    80004578:	1ae78263          	beq	a5,a4,8000471c <__memset+0x204>
    8000457c:	00b50223          	sb	a1,4(a0)
    80004580:	00500713          	li	a4,5
    80004584:	1ae78063          	beq	a5,a4,80004724 <__memset+0x20c>
    80004588:	00b502a3          	sb	a1,5(a0)
    8000458c:	00700713          	li	a4,7
    80004590:	18e79e63          	bne	a5,a4,8000472c <__memset+0x214>
    80004594:	00b50323          	sb	a1,6(a0)
    80004598:	00700e93          	li	t4,7
    8000459c:	00859713          	slli	a4,a1,0x8
    800045a0:	00e5e733          	or	a4,a1,a4
    800045a4:	01059e13          	slli	t3,a1,0x10
    800045a8:	01c76e33          	or	t3,a4,t3
    800045ac:	01859313          	slli	t1,a1,0x18
    800045b0:	006e6333          	or	t1,t3,t1
    800045b4:	02059893          	slli	a7,a1,0x20
    800045b8:	40f60e3b          	subw	t3,a2,a5
    800045bc:	011368b3          	or	a7,t1,a7
    800045c0:	02859813          	slli	a6,a1,0x28
    800045c4:	0108e833          	or	a6,a7,a6
    800045c8:	03059693          	slli	a3,a1,0x30
    800045cc:	003e589b          	srliw	a7,t3,0x3
    800045d0:	00d866b3          	or	a3,a6,a3
    800045d4:	03859713          	slli	a4,a1,0x38
    800045d8:	00389813          	slli	a6,a7,0x3
    800045dc:	00f507b3          	add	a5,a0,a5
    800045e0:	00e6e733          	or	a4,a3,a4
    800045e4:	000e089b          	sext.w	a7,t3
    800045e8:	00f806b3          	add	a3,a6,a5
    800045ec:	00e7b023          	sd	a4,0(a5)
    800045f0:	00878793          	addi	a5,a5,8
    800045f4:	fed79ce3          	bne	a5,a3,800045ec <__memset+0xd4>
    800045f8:	ff8e7793          	andi	a5,t3,-8
    800045fc:	0007871b          	sext.w	a4,a5
    80004600:	01d787bb          	addw	a5,a5,t4
    80004604:	0ce88e63          	beq	a7,a4,800046e0 <__memset+0x1c8>
    80004608:	00f50733          	add	a4,a0,a5
    8000460c:	00b70023          	sb	a1,0(a4)
    80004610:	0017871b          	addiw	a4,a5,1
    80004614:	0cc77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004618:	00e50733          	add	a4,a0,a4
    8000461c:	00b70023          	sb	a1,0(a4)
    80004620:	0027871b          	addiw	a4,a5,2
    80004624:	0ac77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004628:	00e50733          	add	a4,a0,a4
    8000462c:	00b70023          	sb	a1,0(a4)
    80004630:	0037871b          	addiw	a4,a5,3
    80004634:	0ac77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004638:	00e50733          	add	a4,a0,a4
    8000463c:	00b70023          	sb	a1,0(a4)
    80004640:	0047871b          	addiw	a4,a5,4
    80004644:	08c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004648:	00e50733          	add	a4,a0,a4
    8000464c:	00b70023          	sb	a1,0(a4)
    80004650:	0057871b          	addiw	a4,a5,5
    80004654:	08c77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004658:	00e50733          	add	a4,a0,a4
    8000465c:	00b70023          	sb	a1,0(a4)
    80004660:	0067871b          	addiw	a4,a5,6
    80004664:	06c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004668:	00e50733          	add	a4,a0,a4
    8000466c:	00b70023          	sb	a1,0(a4)
    80004670:	0077871b          	addiw	a4,a5,7
    80004674:	06c77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004678:	00e50733          	add	a4,a0,a4
    8000467c:	00b70023          	sb	a1,0(a4)
    80004680:	0087871b          	addiw	a4,a5,8
    80004684:	04c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004688:	00e50733          	add	a4,a0,a4
    8000468c:	00b70023          	sb	a1,0(a4)
    80004690:	0097871b          	addiw	a4,a5,9
    80004694:	04c77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    80004698:	00e50733          	add	a4,a0,a4
    8000469c:	00b70023          	sb	a1,0(a4)
    800046a0:	00a7871b          	addiw	a4,a5,10
    800046a4:	02c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    800046a8:	00e50733          	add	a4,a0,a4
    800046ac:	00b70023          	sb	a1,0(a4)
    800046b0:	00b7871b          	addiw	a4,a5,11
    800046b4:	02c77663          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    800046b8:	00e50733          	add	a4,a0,a4
    800046bc:	00b70023          	sb	a1,0(a4)
    800046c0:	00c7871b          	addiw	a4,a5,12
    800046c4:	00c77e63          	bgeu	a4,a2,800046e0 <__memset+0x1c8>
    800046c8:	00e50733          	add	a4,a0,a4
    800046cc:	00b70023          	sb	a1,0(a4)
    800046d0:	00d7879b          	addiw	a5,a5,13
    800046d4:	00c7f663          	bgeu	a5,a2,800046e0 <__memset+0x1c8>
    800046d8:	00f507b3          	add	a5,a0,a5
    800046dc:	00b78023          	sb	a1,0(a5)
    800046e0:	00813403          	ld	s0,8(sp)
    800046e4:	01010113          	addi	sp,sp,16
    800046e8:	00008067          	ret
    800046ec:	00b00693          	li	a3,11
    800046f0:	e55ff06f          	j	80004544 <__memset+0x2c>
    800046f4:	00300e93          	li	t4,3
    800046f8:	ea5ff06f          	j	8000459c <__memset+0x84>
    800046fc:	00100e93          	li	t4,1
    80004700:	e9dff06f          	j	8000459c <__memset+0x84>
    80004704:	00000e93          	li	t4,0
    80004708:	e95ff06f          	j	8000459c <__memset+0x84>
    8000470c:	00000793          	li	a5,0
    80004710:	ef9ff06f          	j	80004608 <__memset+0xf0>
    80004714:	00200e93          	li	t4,2
    80004718:	e85ff06f          	j	8000459c <__memset+0x84>
    8000471c:	00400e93          	li	t4,4
    80004720:	e7dff06f          	j	8000459c <__memset+0x84>
    80004724:	00500e93          	li	t4,5
    80004728:	e75ff06f          	j	8000459c <__memset+0x84>
    8000472c:	00600e93          	li	t4,6
    80004730:	e6dff06f          	j	8000459c <__memset+0x84>

0000000080004734 <__memmove>:
    80004734:	ff010113          	addi	sp,sp,-16
    80004738:	00813423          	sd	s0,8(sp)
    8000473c:	01010413          	addi	s0,sp,16
    80004740:	0e060863          	beqz	a2,80004830 <__memmove+0xfc>
    80004744:	fff6069b          	addiw	a3,a2,-1
    80004748:	0006881b          	sext.w	a6,a3
    8000474c:	0ea5e863          	bltu	a1,a0,8000483c <__memmove+0x108>
    80004750:	00758713          	addi	a4,a1,7
    80004754:	00a5e7b3          	or	a5,a1,a0
    80004758:	40a70733          	sub	a4,a4,a0
    8000475c:	0077f793          	andi	a5,a5,7
    80004760:	00f73713          	sltiu	a4,a4,15
    80004764:	00174713          	xori	a4,a4,1
    80004768:	0017b793          	seqz	a5,a5
    8000476c:	00e7f7b3          	and	a5,a5,a4
    80004770:	10078863          	beqz	a5,80004880 <__memmove+0x14c>
    80004774:	00900793          	li	a5,9
    80004778:	1107f463          	bgeu	a5,a6,80004880 <__memmove+0x14c>
    8000477c:	0036581b          	srliw	a6,a2,0x3
    80004780:	fff8081b          	addiw	a6,a6,-1
    80004784:	02081813          	slli	a6,a6,0x20
    80004788:	01d85893          	srli	a7,a6,0x1d
    8000478c:	00858813          	addi	a6,a1,8
    80004790:	00058793          	mv	a5,a1
    80004794:	00050713          	mv	a4,a0
    80004798:	01088833          	add	a6,a7,a6
    8000479c:	0007b883          	ld	a7,0(a5)
    800047a0:	00878793          	addi	a5,a5,8
    800047a4:	00870713          	addi	a4,a4,8
    800047a8:	ff173c23          	sd	a7,-8(a4)
    800047ac:	ff0798e3          	bne	a5,a6,8000479c <__memmove+0x68>
    800047b0:	ff867713          	andi	a4,a2,-8
    800047b4:	02071793          	slli	a5,a4,0x20
    800047b8:	0207d793          	srli	a5,a5,0x20
    800047bc:	00f585b3          	add	a1,a1,a5
    800047c0:	40e686bb          	subw	a3,a3,a4
    800047c4:	00f507b3          	add	a5,a0,a5
    800047c8:	06e60463          	beq	a2,a4,80004830 <__memmove+0xfc>
    800047cc:	0005c703          	lbu	a4,0(a1)
    800047d0:	00e78023          	sb	a4,0(a5)
    800047d4:	04068e63          	beqz	a3,80004830 <__memmove+0xfc>
    800047d8:	0015c603          	lbu	a2,1(a1)
    800047dc:	00100713          	li	a4,1
    800047e0:	00c780a3          	sb	a2,1(a5)
    800047e4:	04e68663          	beq	a3,a4,80004830 <__memmove+0xfc>
    800047e8:	0025c603          	lbu	a2,2(a1)
    800047ec:	00200713          	li	a4,2
    800047f0:	00c78123          	sb	a2,2(a5)
    800047f4:	02e68e63          	beq	a3,a4,80004830 <__memmove+0xfc>
    800047f8:	0035c603          	lbu	a2,3(a1)
    800047fc:	00300713          	li	a4,3
    80004800:	00c781a3          	sb	a2,3(a5)
    80004804:	02e68663          	beq	a3,a4,80004830 <__memmove+0xfc>
    80004808:	0045c603          	lbu	a2,4(a1)
    8000480c:	00400713          	li	a4,4
    80004810:	00c78223          	sb	a2,4(a5)
    80004814:	00e68e63          	beq	a3,a4,80004830 <__memmove+0xfc>
    80004818:	0055c603          	lbu	a2,5(a1)
    8000481c:	00500713          	li	a4,5
    80004820:	00c782a3          	sb	a2,5(a5)
    80004824:	00e68663          	beq	a3,a4,80004830 <__memmove+0xfc>
    80004828:	0065c703          	lbu	a4,6(a1)
    8000482c:	00e78323          	sb	a4,6(a5)
    80004830:	00813403          	ld	s0,8(sp)
    80004834:	01010113          	addi	sp,sp,16
    80004838:	00008067          	ret
    8000483c:	02061713          	slli	a4,a2,0x20
    80004840:	02075713          	srli	a4,a4,0x20
    80004844:	00e587b3          	add	a5,a1,a4
    80004848:	f0f574e3          	bgeu	a0,a5,80004750 <__memmove+0x1c>
    8000484c:	02069613          	slli	a2,a3,0x20
    80004850:	02065613          	srli	a2,a2,0x20
    80004854:	fff64613          	not	a2,a2
    80004858:	00e50733          	add	a4,a0,a4
    8000485c:	00c78633          	add	a2,a5,a2
    80004860:	fff7c683          	lbu	a3,-1(a5)
    80004864:	fff78793          	addi	a5,a5,-1
    80004868:	fff70713          	addi	a4,a4,-1
    8000486c:	00d70023          	sb	a3,0(a4)
    80004870:	fec798e3          	bne	a5,a2,80004860 <__memmove+0x12c>
    80004874:	00813403          	ld	s0,8(sp)
    80004878:	01010113          	addi	sp,sp,16
    8000487c:	00008067          	ret
    80004880:	02069713          	slli	a4,a3,0x20
    80004884:	02075713          	srli	a4,a4,0x20
    80004888:	00170713          	addi	a4,a4,1
    8000488c:	00e50733          	add	a4,a0,a4
    80004890:	00050793          	mv	a5,a0
    80004894:	0005c683          	lbu	a3,0(a1)
    80004898:	00178793          	addi	a5,a5,1
    8000489c:	00158593          	addi	a1,a1,1
    800048a0:	fed78fa3          	sb	a3,-1(a5)
    800048a4:	fee798e3          	bne	a5,a4,80004894 <__memmove+0x160>
    800048a8:	f89ff06f          	j	80004830 <__memmove+0xfc>

00000000800048ac <__mem_free>:
    800048ac:	ff010113          	addi	sp,sp,-16
    800048b0:	00813423          	sd	s0,8(sp)
    800048b4:	01010413          	addi	s0,sp,16
    800048b8:	00001597          	auipc	a1,0x1
    800048bc:	5a058593          	addi	a1,a1,1440 # 80005e58 <freep>
    800048c0:	0005b783          	ld	a5,0(a1)
    800048c4:	ff050693          	addi	a3,a0,-16
    800048c8:	0007b703          	ld	a4,0(a5)
    800048cc:	00d7fc63          	bgeu	a5,a3,800048e4 <__mem_free+0x38>
    800048d0:	00e6ee63          	bltu	a3,a4,800048ec <__mem_free+0x40>
    800048d4:	00e7fc63          	bgeu	a5,a4,800048ec <__mem_free+0x40>
    800048d8:	00070793          	mv	a5,a4
    800048dc:	0007b703          	ld	a4,0(a5)
    800048e0:	fed7e8e3          	bltu	a5,a3,800048d0 <__mem_free+0x24>
    800048e4:	fee7eae3          	bltu	a5,a4,800048d8 <__mem_free+0x2c>
    800048e8:	fee6f8e3          	bgeu	a3,a4,800048d8 <__mem_free+0x2c>
    800048ec:	ff852803          	lw	a6,-8(a0)
    800048f0:	02081613          	slli	a2,a6,0x20
    800048f4:	01c65613          	srli	a2,a2,0x1c
    800048f8:	00c68633          	add	a2,a3,a2
    800048fc:	02c70a63          	beq	a4,a2,80004930 <__mem_free+0x84>
    80004900:	fee53823          	sd	a4,-16(a0)
    80004904:	0087a503          	lw	a0,8(a5)
    80004908:	02051613          	slli	a2,a0,0x20
    8000490c:	01c65613          	srli	a2,a2,0x1c
    80004910:	00c78633          	add	a2,a5,a2
    80004914:	04c68263          	beq	a3,a2,80004958 <__mem_free+0xac>
    80004918:	00813403          	ld	s0,8(sp)
    8000491c:	00d7b023          	sd	a3,0(a5)
    80004920:	00f5b023          	sd	a5,0(a1)
    80004924:	00000513          	li	a0,0
    80004928:	01010113          	addi	sp,sp,16
    8000492c:	00008067          	ret
    80004930:	00872603          	lw	a2,8(a4)
    80004934:	00073703          	ld	a4,0(a4)
    80004938:	0106083b          	addw	a6,a2,a6
    8000493c:	ff052c23          	sw	a6,-8(a0)
    80004940:	fee53823          	sd	a4,-16(a0)
    80004944:	0087a503          	lw	a0,8(a5)
    80004948:	02051613          	slli	a2,a0,0x20
    8000494c:	01c65613          	srli	a2,a2,0x1c
    80004950:	00c78633          	add	a2,a5,a2
    80004954:	fcc692e3          	bne	a3,a2,80004918 <__mem_free+0x6c>
    80004958:	00813403          	ld	s0,8(sp)
    8000495c:	0105053b          	addw	a0,a0,a6
    80004960:	00a7a423          	sw	a0,8(a5)
    80004964:	00e7b023          	sd	a4,0(a5)
    80004968:	00f5b023          	sd	a5,0(a1)
    8000496c:	00000513          	li	a0,0
    80004970:	01010113          	addi	sp,sp,16
    80004974:	00008067          	ret

0000000080004978 <__mem_alloc>:
    80004978:	fc010113          	addi	sp,sp,-64
    8000497c:	02813823          	sd	s0,48(sp)
    80004980:	02913423          	sd	s1,40(sp)
    80004984:	03213023          	sd	s2,32(sp)
    80004988:	01513423          	sd	s5,8(sp)
    8000498c:	02113c23          	sd	ra,56(sp)
    80004990:	01313c23          	sd	s3,24(sp)
    80004994:	01413823          	sd	s4,16(sp)
    80004998:	01613023          	sd	s6,0(sp)
    8000499c:	04010413          	addi	s0,sp,64
    800049a0:	00001a97          	auipc	s5,0x1
    800049a4:	4b8a8a93          	addi	s5,s5,1208 # 80005e58 <freep>
    800049a8:	00f50913          	addi	s2,a0,15
    800049ac:	000ab683          	ld	a3,0(s5)
    800049b0:	00495913          	srli	s2,s2,0x4
    800049b4:	0019049b          	addiw	s1,s2,1
    800049b8:	00048913          	mv	s2,s1
    800049bc:	0c068c63          	beqz	a3,80004a94 <__mem_alloc+0x11c>
    800049c0:	0006b503          	ld	a0,0(a3)
    800049c4:	00852703          	lw	a4,8(a0)
    800049c8:	10977063          	bgeu	a4,s1,80004ac8 <__mem_alloc+0x150>
    800049cc:	000017b7          	lui	a5,0x1
    800049d0:	0009099b          	sext.w	s3,s2
    800049d4:	0af4e863          	bltu	s1,a5,80004a84 <__mem_alloc+0x10c>
    800049d8:	02099a13          	slli	s4,s3,0x20
    800049dc:	01ca5a13          	srli	s4,s4,0x1c
    800049e0:	fff00b13          	li	s6,-1
    800049e4:	0100006f          	j	800049f4 <__mem_alloc+0x7c>
    800049e8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800049ec:	00852703          	lw	a4,8(a0)
    800049f0:	04977463          	bgeu	a4,s1,80004a38 <__mem_alloc+0xc0>
    800049f4:	00050793          	mv	a5,a0
    800049f8:	fea698e3          	bne	a3,a0,800049e8 <__mem_alloc+0x70>
    800049fc:	000a0513          	mv	a0,s4
    80004a00:	00000097          	auipc	ra,0x0
    80004a04:	1f0080e7          	jalr	496(ra) # 80004bf0 <kvmincrease>
    80004a08:	00050793          	mv	a5,a0
    80004a0c:	01050513          	addi	a0,a0,16
    80004a10:	07678e63          	beq	a5,s6,80004a8c <__mem_alloc+0x114>
    80004a14:	0137a423          	sw	s3,8(a5)
    80004a18:	00000097          	auipc	ra,0x0
    80004a1c:	e94080e7          	jalr	-364(ra) # 800048ac <__mem_free>
    80004a20:	000ab783          	ld	a5,0(s5)
    80004a24:	06078463          	beqz	a5,80004a8c <__mem_alloc+0x114>
    80004a28:	0007b503          	ld	a0,0(a5)
    80004a2c:	00078693          	mv	a3,a5
    80004a30:	00852703          	lw	a4,8(a0)
    80004a34:	fc9760e3          	bltu	a4,s1,800049f4 <__mem_alloc+0x7c>
    80004a38:	08e48263          	beq	s1,a4,80004abc <__mem_alloc+0x144>
    80004a3c:	4127073b          	subw	a4,a4,s2
    80004a40:	02071693          	slli	a3,a4,0x20
    80004a44:	01c6d693          	srli	a3,a3,0x1c
    80004a48:	00e52423          	sw	a4,8(a0)
    80004a4c:	00d50533          	add	a0,a0,a3
    80004a50:	01252423          	sw	s2,8(a0)
    80004a54:	00fab023          	sd	a5,0(s5)
    80004a58:	01050513          	addi	a0,a0,16
    80004a5c:	03813083          	ld	ra,56(sp)
    80004a60:	03013403          	ld	s0,48(sp)
    80004a64:	02813483          	ld	s1,40(sp)
    80004a68:	02013903          	ld	s2,32(sp)
    80004a6c:	01813983          	ld	s3,24(sp)
    80004a70:	01013a03          	ld	s4,16(sp)
    80004a74:	00813a83          	ld	s5,8(sp)
    80004a78:	00013b03          	ld	s6,0(sp)
    80004a7c:	04010113          	addi	sp,sp,64
    80004a80:	00008067          	ret
    80004a84:	000019b7          	lui	s3,0x1
    80004a88:	f51ff06f          	j	800049d8 <__mem_alloc+0x60>
    80004a8c:	00000513          	li	a0,0
    80004a90:	fcdff06f          	j	80004a5c <__mem_alloc+0xe4>
    80004a94:	00002797          	auipc	a5,0x2
    80004a98:	66c78793          	addi	a5,a5,1644 # 80007100 <base>
    80004a9c:	00078513          	mv	a0,a5
    80004aa0:	00fab023          	sd	a5,0(s5)
    80004aa4:	00f7b023          	sd	a5,0(a5)
    80004aa8:	00000713          	li	a4,0
    80004aac:	00002797          	auipc	a5,0x2
    80004ab0:	6407ae23          	sw	zero,1628(a5) # 80007108 <base+0x8>
    80004ab4:	00050693          	mv	a3,a0
    80004ab8:	f11ff06f          	j	800049c8 <__mem_alloc+0x50>
    80004abc:	00053703          	ld	a4,0(a0)
    80004ac0:	00e7b023          	sd	a4,0(a5)
    80004ac4:	f91ff06f          	j	80004a54 <__mem_alloc+0xdc>
    80004ac8:	00068793          	mv	a5,a3
    80004acc:	f6dff06f          	j	80004a38 <__mem_alloc+0xc0>

0000000080004ad0 <__putc>:
    80004ad0:	fe010113          	addi	sp,sp,-32
    80004ad4:	00813823          	sd	s0,16(sp)
    80004ad8:	00113c23          	sd	ra,24(sp)
    80004adc:	02010413          	addi	s0,sp,32
    80004ae0:	00050793          	mv	a5,a0
    80004ae4:	fef40593          	addi	a1,s0,-17
    80004ae8:	00100613          	li	a2,1
    80004aec:	00000513          	li	a0,0
    80004af0:	fef407a3          	sb	a5,-17(s0)
    80004af4:	fffff097          	auipc	ra,0xfffff
    80004af8:	918080e7          	jalr	-1768(ra) # 8000340c <console_write>
    80004afc:	01813083          	ld	ra,24(sp)
    80004b00:	01013403          	ld	s0,16(sp)
    80004b04:	02010113          	addi	sp,sp,32
    80004b08:	00008067          	ret

0000000080004b0c <__getc>:
    80004b0c:	fe010113          	addi	sp,sp,-32
    80004b10:	00813823          	sd	s0,16(sp)
    80004b14:	00113c23          	sd	ra,24(sp)
    80004b18:	02010413          	addi	s0,sp,32
    80004b1c:	fe840593          	addi	a1,s0,-24
    80004b20:	00100613          	li	a2,1
    80004b24:	00000513          	li	a0,0
    80004b28:	fffff097          	auipc	ra,0xfffff
    80004b2c:	8c4080e7          	jalr	-1852(ra) # 800033ec <console_read>
    80004b30:	fe844503          	lbu	a0,-24(s0)
    80004b34:	01813083          	ld	ra,24(sp)
    80004b38:	01013403          	ld	s0,16(sp)
    80004b3c:	02010113          	addi	sp,sp,32
    80004b40:	00008067          	ret

0000000080004b44 <console_handler>:
    80004b44:	fe010113          	addi	sp,sp,-32
    80004b48:	00813823          	sd	s0,16(sp)
    80004b4c:	00113c23          	sd	ra,24(sp)
    80004b50:	00913423          	sd	s1,8(sp)
    80004b54:	02010413          	addi	s0,sp,32
    80004b58:	14202773          	csrr	a4,scause
    80004b5c:	100027f3          	csrr	a5,sstatus
    80004b60:	0027f793          	andi	a5,a5,2
    80004b64:	06079e63          	bnez	a5,80004be0 <console_handler+0x9c>
    80004b68:	00074c63          	bltz	a4,80004b80 <console_handler+0x3c>
    80004b6c:	01813083          	ld	ra,24(sp)
    80004b70:	01013403          	ld	s0,16(sp)
    80004b74:	00813483          	ld	s1,8(sp)
    80004b78:	02010113          	addi	sp,sp,32
    80004b7c:	00008067          	ret
    80004b80:	0ff77713          	andi	a4,a4,255
    80004b84:	00900793          	li	a5,9
    80004b88:	fef712e3          	bne	a4,a5,80004b6c <console_handler+0x28>
    80004b8c:	ffffe097          	auipc	ra,0xffffe
    80004b90:	4b8080e7          	jalr	1208(ra) # 80003044 <plic_claim>
    80004b94:	00a00793          	li	a5,10
    80004b98:	00050493          	mv	s1,a0
    80004b9c:	02f50c63          	beq	a0,a5,80004bd4 <console_handler+0x90>
    80004ba0:	fc0506e3          	beqz	a0,80004b6c <console_handler+0x28>
    80004ba4:	00050593          	mv	a1,a0
    80004ba8:	00000517          	auipc	a0,0x0
    80004bac:	68050513          	addi	a0,a0,1664 # 80005228 <kvmincrease+0x638>
    80004bb0:	fffff097          	auipc	ra,0xfffff
    80004bb4:	8d8080e7          	jalr	-1832(ra) # 80003488 <__printf>
    80004bb8:	01013403          	ld	s0,16(sp)
    80004bbc:	01813083          	ld	ra,24(sp)
    80004bc0:	00048513          	mv	a0,s1
    80004bc4:	00813483          	ld	s1,8(sp)
    80004bc8:	02010113          	addi	sp,sp,32
    80004bcc:	ffffe317          	auipc	t1,0xffffe
    80004bd0:	4b030067          	jr	1200(t1) # 8000307c <plic_complete>
    80004bd4:	fffff097          	auipc	ra,0xfffff
    80004bd8:	1bc080e7          	jalr	444(ra) # 80003d90 <uartintr>
    80004bdc:	fddff06f          	j	80004bb8 <console_handler+0x74>
    80004be0:	00000517          	auipc	a0,0x0
    80004be4:	74850513          	addi	a0,a0,1864 # 80005328 <digits+0x78>
    80004be8:	fffff097          	auipc	ra,0xfffff
    80004bec:	844080e7          	jalr	-1980(ra) # 8000342c <panic>

0000000080004bf0 <kvmincrease>:
    80004bf0:	fe010113          	addi	sp,sp,-32
    80004bf4:	01213023          	sd	s2,0(sp)
    80004bf8:	00001937          	lui	s2,0x1
    80004bfc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80004c00:	00813823          	sd	s0,16(sp)
    80004c04:	00113c23          	sd	ra,24(sp)
    80004c08:	00913423          	sd	s1,8(sp)
    80004c0c:	02010413          	addi	s0,sp,32
    80004c10:	01250933          	add	s2,a0,s2
    80004c14:	00c95913          	srli	s2,s2,0xc
    80004c18:	02090863          	beqz	s2,80004c48 <kvmincrease+0x58>
    80004c1c:	00000493          	li	s1,0
    80004c20:	00148493          	addi	s1,s1,1
    80004c24:	fffff097          	auipc	ra,0xfffff
    80004c28:	4bc080e7          	jalr	1212(ra) # 800040e0 <kalloc>
    80004c2c:	fe991ae3          	bne	s2,s1,80004c20 <kvmincrease+0x30>
    80004c30:	01813083          	ld	ra,24(sp)
    80004c34:	01013403          	ld	s0,16(sp)
    80004c38:	00813483          	ld	s1,8(sp)
    80004c3c:	00013903          	ld	s2,0(sp)
    80004c40:	02010113          	addi	sp,sp,32
    80004c44:	00008067          	ret
    80004c48:	01813083          	ld	ra,24(sp)
    80004c4c:	01013403          	ld	s0,16(sp)
    80004c50:	00813483          	ld	s1,8(sp)
    80004c54:	00013903          	ld	s2,0(sp)
    80004c58:	00000513          	li	a0,0
    80004c5c:	02010113          	addi	sp,sp,32
    80004c60:	00008067          	ret
	...
