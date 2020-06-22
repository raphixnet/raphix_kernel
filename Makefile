BUILDDIR := build/

.PHONY := all builddir headerobject kernelobject linkalltogether clean

all: builddir headerobject kernelobject linkalltogether

builddir:
	@echo "[RAPHIX-KERNEL] Build directory created"
	mkdir -p ${BUILDDIR}

headerobject:
	@echo "[RAPHIX-KERNEL] Header object file created"
	nasm -f elf64 header.asm -o ${BUILDDIR}header.o

kernelobject:
	@echo "[RAPHIX-KERNEL] Kernel object file created"
	nasm -f elf64 kernel.asm -o ${BUILDDIR}kernel.o

linkalltogether:
	@echo "[RAPHIX-KERNEL] all linked"
	ld --nmagic --output=${BUILDDIR}kernel --script=linker.ld ${BUILDDIR}header.o ${BUILDDIR}kernel.o

clean:
	@echo "[RAPHIX-KERNEL] cleaned up project"
	rm -rf ${BUILDDIR}
