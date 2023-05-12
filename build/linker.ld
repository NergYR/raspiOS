ENTRY(_start)

SECTIONS
{
    /* Starts at LOADER_ADDR. */
    . = 0x8000;
    __start = .;
    __text_start = .;
    .text :
    {
        KEEP(*(.text.boot))
        *(.text)
    }
    . = ALIGN(4096); /* align to the page size */
    __text_end = .;

    __rodata_end = .;
    .rodata :
    {
        *(.rodata)
    }

    . = ALIGN(4096); /* align to the page size */
    __rodata_end = .;

    __data_start = .;
    .data :
    {
        *(.data)
    }

    . = ALIGN(4096); /* align to the page size */
    __data_end = .;

    __bss_start = .;
    .bss : 
    {
        bss = .;
        *(.bss)
    }
    . = ALIGN(4096); /* align the the page size */
    __bss__end = .;
    __end = .;

}