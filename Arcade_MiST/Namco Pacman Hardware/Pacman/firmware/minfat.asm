	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.0
	.global	_FindDrive
_FindDrive:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
	add	r6
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 112
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_fat32
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 116
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 116
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 20
		// Real offset of type is 24, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 116
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
						// matchobj comparing flags 1 with 82
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 116
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 116
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l6
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 119
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 120
						//pcreltotemp
	.lipcrel	l3
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l6: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 124
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 125
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 128
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_FAT16_ID
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 128
		// Offsets 54, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 54)
	.liabs	_sector_buffer, 54
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 128
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 128
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 48
		// Real offset of type is 48, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 128
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 128
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 128
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l8
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 129
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
						// freereg r2
						// freereg r3
l8: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 130
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_FAT32_ID
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 130
		// Offsets 82, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 82)
	.liabs	_sector_buffer, 82
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 130
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 130
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 130
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 130
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 130
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l10
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 131
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
l10: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 135
						// (test)
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 135
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 141
		// Offsets 454, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 62
						// extern
	.liabs	_sector_buffer, 454
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 142
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 102
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_sector_buffer, 510
						//extern deref
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 142
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 2
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	21930
	cmp	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 142
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l14
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 143
		// Offsets 454, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 454
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 144
						//pcreltotemp
	.lipcrel	l17
	add	r7
l14: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 144
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	43605
	cmp	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 144
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l17
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 147
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 148
						//pcreltotemp
	.lipcrel	l3
	add	r7
						// freereg r1
l17: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 150
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 150
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r5 - only match against tmp
	mt	r5
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 150
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 150
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 150
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l19
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 151
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 153
						//pcreltotemp
	.lipcrel	l3
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l19: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 158
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 140
		// Real offset of type is 140, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_FAT32_ID
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 158
		// Offsets 82, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 82)
	.liabs	_sector_buffer, 82
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 158
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 158
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 156
		// Real offset of type is 156, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 158
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 158
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 158
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l21
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 159
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_fat32
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 160
						//pcreltotemp
	.lipcrel	l24
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l21: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 160
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 168, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// extern
	.liabs	_FAT16_ID
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 160
		// Offsets 54, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 176
		// Real offset of type is 176, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// extern (offset 54)
	.liabs	_sector_buffer, 54
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 160
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 180
		// Real offset of type is 180, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 160
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 184
		// Real offset of type is 184, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 160
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 160
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 160
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l24
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 163
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 164
						//pcreltotemp
	.lipcrel	l3
	add	r7
						// freereg r1
l24: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 166
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 510
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 166
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	85
	cmp	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 166
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l25
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 166
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 511
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 166
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	170
	cmp	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 166
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l26
		add	r7
l25: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 167
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 170
						//pcreltotemp
	.lipcrel	l3
	add	r7
l26: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 170
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 170
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 2
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	233
	cmp	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 170
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 170
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 62 type 3
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	235
	cmp	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 170
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l29
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 171
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 174
						//pcreltotemp
	.lipcrel	l3
	add	r7
						// freereg r1
l29: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 174
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 11
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 174
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
				// flags 4a
	and	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 174
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l31
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 174
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_sector_buffer, 12
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 174
						// Q1 disposable
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	cmp	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 174
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l32
		add	r7
l31: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 175
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 178
						//pcreltotemp
	.lipcrel	l3
	add	r7
						// freereg r1
						// freereg r2
l32: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 178
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 13
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cluster_size, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 500
		// Real offset of type is 500, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 181
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cluster_mask, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 186
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_sector_buffer, 14
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 186
						// (bitwise/arithmetic) 	//ops: 2, 6, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	mt	r5
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 186
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_sector_buffer, 15
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 186
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 186
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 186
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)store type 3
	st	r6
						//save_temp done
						// matchobj comparing flags 62 with 62
						// Obsoleting t1
						// freereg r2
						// freereg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// extern (offset 0)
	.liabs	_fat_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 187
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 2 type 101
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_sector_buffer, 16
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../../../../DeMiSTify/firmware/minfat.c, line 189
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 189
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l35
		add	r7
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 191
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 256
		// Real offset of type is 256, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_FAT32_ID
						//extern deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 191
		// Offsets 82, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 264
		// Real offset of type is 264, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 2
						// extern (offset 82)
	.liabs	_sector_buffer, 82
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 191
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 268
		// Real offset of type is 268, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type a
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 191
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 272
		// Real offset of type is 272, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 2
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 191
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 191
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 191
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l37
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 192
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 194
						//pcreltotemp
	.lipcrel	l3
	add	r7
						// freereg r1
						// freereg r2
						// freereg r3
l37: # 
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 500
		// Real offset of type is 500, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 195
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_root_directory_size, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r4
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 37
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 36
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_sector_buffer, 38
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_sector_buffer, 39
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	24
	shl	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 196
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 197
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mul	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 197
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_fat_start
						//extern deref
						//sizemod based on type 0x103
	ldt
	add	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_data_start, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 45
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 44
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r3 - only match against tmp
	//mt
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_sector_buffer, 46
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	shl	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_sector_buffer, 47
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	15
	and	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	24
	shl	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r3 - only match against tmp
	mt	r3
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 198
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_root_directory_cluster, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r2
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 199
						// (bitwise/arithmetic) 	//ops: 0, 0, 3
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	sub	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 199
						// (bitwise/arithmetic) 	//ops: 3, 5, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	mul	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 199
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_root_directory_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// freereg r2
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 202
						//pcreltotemp
	.lipcrel	l38
	add	r7
l35: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 204
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 18
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 204
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r1
						// (save result) // isreg
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 204
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 17
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 204
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 204
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_dir_entries, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 205
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_dir_entries
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	5
	shl	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 205
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	511
	add	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 205
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	9
	shr	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_root_directory_size, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 208
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r2)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 101
						// extern
	.liabs	_sector_buffer, 23
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 208
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	8
	shl	r2
						// (save result) // isreg
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 208
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type 101
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_sector_buffer, 22
						//extern deref
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 208
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 4, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 2
						// reg r3 - only match against tmp
	//mt
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 208
						//FIXME convert
						// (convert - reducing type 3 to 103
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 211
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mul	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 211
						// (bitwise/arithmetic) 	//ops: 3, 7, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 62 type 103
						// deref 
	ld	r6
	add	r2
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_root_directory_start, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 212
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_root_directory_cluster
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 215
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_data_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// freereg r2
						// freereg r1
l38: # 
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 219
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_current_directory_cluster
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 220
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_current_directory_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_root_directory_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 221
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 221
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l40
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 221
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// matchobj comparing flags 42 with 82
						// reg r4 - only match against tmp
	mt	r4
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 42
	.liconst	4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x6a
	mt	r0
	st	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 221
						//pcreltotemp
	.lipcrel	l41
	add	r7
l40: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 221
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// extern
	.liabs	_root_directory_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x6a
	mt	r0
	st	r6
l41: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 221
		// Offsets 0, 0
		// Have am? no, no
		// flags 6a, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_dir_entries
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 6a with 82
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r6
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 223
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 82
	.liconst	1
	mr	r0
l3: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-8
	sub	r6
.functiontail:
	ldinc	r6
	mr	r5

	ldinc	r6
	mr	r4

	ldinc	r6
	mr	r3

	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.1
	.global	_GetCluster
_GetCluster:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 231
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 40
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 231
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l45
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 233
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						// (obj to r3) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// reg r2 - only match against tmp
	mt	r2
	mr	r3
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	7
	shr	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 234
						// (bitwise/arithmetic) 	//ops: 3, 0, 5
						// (obj to r4) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r4
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	127
	and	r4
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 237
						//pcreltotemp
	.lipcrel	l46
	add	r7
l45: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 238
						// (bitwise/arithmetic) 	//ops: 3, 0, 4
						// (obj to r3) flags 42 type 103
						// reg r2 - only match against tmp
	mt	r2
	mr	r3
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	shr	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 239
						// (bitwise/arithmetic) 	//ops: 3, 0, 5
						// (obj to r4) flags 42 type 103
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
	mr	r4
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	255
	and	r4
						// (save result) // isreg
l46: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 242
						// (bitwise/arithmetic) 	//ops: 0, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_fat_start
						//extern deref
						//sizemod based on type 0x103
	ldt
	add	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 243
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_cachedsector
						//extern deref
						//sizemod based on type 0x103
	ldt
	cmp	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 243
	cond	EQ
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l50
		add	r7
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 245
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cachedsector, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 246
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 246
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 246
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 246
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 246
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l50
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 247
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 248
						//pcreltotemp
	.lipcrel	l42
	add	r7
l50: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 250
						// (test)
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 250
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l52
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 250
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	4
	mul	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 250
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 250
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 6
						// (obj to r5) flags 6a type 103
						// matchobj comparing flags 6a with 82
						// deref 
	ld	r1
	mr	r5
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	268435455
	and	r5
						// (save result) // isreg
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 250
						//pcreltotemp
	.lipcrel	l53
	add	r7
l52: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 250
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 103
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2
	mul	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 250
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 250
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 82
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l53: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 251
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
	mr	r0
l42: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.2
	.global	_FileOpen
_FileOpen:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-8
	add	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 260
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
				// flags 42
	and	r4

						//../../../../DeMiSTify/firmware/minfat.c, line 260
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l57
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 261
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 263
						//pcreltotemp
	.lipcrel	l54
	add	r7
l57: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 263
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	8
	addt	r4
						// (save temp)store type a
	st	r6
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 263
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 22
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 266
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	24
	ldidx	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 266
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l58
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 266
						// (test)
						// (obj to tmp) flags 22 type 301
						// matchobj comparing flags 22 with 2
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 2
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 2
	.liconst	24
	ldidx	r6
						//sizemod based on type 0x301
	byt
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 266
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l59
		add	r7
l58: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 267
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						//pcreltotemp
	.lipcrel	l54
	add	r7
						// freereg r1
l59: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 269
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 269
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r5 - only match against tmp
				// flags 42
	and	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 269
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l80
		add	r7
						// freereg r2
l79: # 
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 272
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_longfilename
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 272
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	24
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 272
						//call
						//pcreltotemp
	.lipcrel	___strcasecmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 272
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 272
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l80
		add	r7
						// freereg r3
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 275
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 275
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	24
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 275
		// Offsets 11, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 72
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 275
						//call
						//pcreltotemp
	.lipcrel	___strncasecmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 275
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 275
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l80
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	stdec	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 269
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l71
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 269
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						//pcreltotemp
	.lipcrel	l72
	add	r7
l71: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 269
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l72: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 269
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 269
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r5 - only match against tmp
				// flags 42
	and	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 269
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l79
		add	r7
						// freereg r2
l80: # 
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 279
						// (test)
						// (obj to tmp) flags 42 type a
						// reg r5 - only match against tmp
	mt	r5
				// flags 42
	and	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 279
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l75
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 281
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	28
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 281
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 22
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
	mr	r0
						// (obj to tmp) flags 6a type 103
						// deref 
	ld	r1
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 282
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	26
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 282
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r4
						// (save temp)store type a
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//../../../../DeMiSTify/firmware/minfat.c, line 282
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 6a type 102
						// matchobj comparing flags 6a with 2
						// deref 
	hlf
	ld	r1
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 6a
						// matchobj comparing flags a2 with 6a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 6a
						// matchobj comparing flags 1 with 6a
	.liconst	4
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 283
						// (test)
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 283
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l77
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 283
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r5
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 283
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 283
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	4095
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 283
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	16
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x6a
	mt	r0
	st	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 283
						//pcreltotemp
	.lipcrel	l78
	add	r7
l77: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 283
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
l78: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 283
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 3
						// deref 
	ld	r6
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 283
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 22 type 103
						// matchobj comparing flags 22 with 4a
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x103
	ldt
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x22
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 22
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 22
	.liconst	4
	ldidx	r6
	exg	r0
	st	r0
						// WARNING - Object is disposable, not bothering to undo exg - check correctness
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 284
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	0
						// (save temp)store type 3
	st	r4
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 285
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 285
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 22, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 148
		// Real offset of type is 148, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 22 type 103
						// matchobj comparing flags 22 with 4a
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 4a
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 4a
	.liconst	4
	ldidx	r6
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 286
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 22
						// const
						// matchobj comparing flags 1 with 22
	.liconst	16
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 286
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 297
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 298
						//pcreltotemp
	.lipcrel	l54
	add	r7
l75: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 300
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0
l54: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-8
	sub	r6
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.3
	.global	_FileNextSector
_FileNextSector:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r4
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 308
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r4 - only match against tmp
	//mt
				// flags 42
	and	r4

						//../../../../DeMiSTify/firmware/minfat.c, line 308
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l81
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 308
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 308
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 308
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l81
		add	r7
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 310
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	16
	ldidx	r6
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// allocreg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 110
		// Real offset of type is 110, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 310
						// (bitwise/arithmetic) 	//ops: 3, 2, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	//mt
	add	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 310
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	20
	addt	r6
	stmpdec	r2
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	16
	ldidx	r6
						//Saving to reg r5
						// (save temp)isreg
	mr	r5
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 2
						// reg r5 - only match against tmp
	//mt
	xor	r1
						// (save result) // isreg
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						//comp
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r2
						// matchobj comparing flags 1 with 2
	.liconst	-1
	xor	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r2 - only match against tmp
	mt	r2
	and	r1
						// (save result) // isreg
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 311
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l90
		add	r7
l89: # 
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 313
						// (bitwise/arithmetic) 	//ops: 5, 0, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	4
	addt	r4
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 313
		// Offsets 0, 0
		// Have am? no, no
		// flags 6a, 4a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 50
		// Real offset of type is 50, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 313
						//call
						//pcreltotemp
	.lipcrel	_GetCluster // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 313
						// Z disposable
						// (getreturn)						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x6a
	mt	r0
	st	r3
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 314
						// (bitwise/arithmetic) 	//ops: 0, 5, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// matchobj comparing flags 2 with 6a
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 2
						// matchobj comparing flags 62 with 6a
						// deref 
	ld	r4
	add	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)store type 3
	st	r4
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						// (bitwise/arithmetic) 	//ops: 6, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 4a
						// matchobj comparing flags 42 with 6a
						// reg r5 - only match against tmp
	mt	r5
	xor	r1
						// (save result) // isreg
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						//comp
						// (obj to r2) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// matchobj comparing flags 2 with 6a
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r2
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 6a
	.liconst	-1
	xor	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 6a
						// reg r2 - only match against tmp
	mt	r2
	and	r1
						// (save result) // isreg
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 311
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 311
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l89
		add	r7
l90: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 316
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 42, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
						// (save temp)store type 3
	st	r4
						//save_temp done
l81: # 
						// freereg r1
						// freereg r4
						// freereg r5
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.4
	.global	_FileReadSector
_FileReadSector:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 324
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 324
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l93
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 324
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 324
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 324
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l94
		add	r7
l93: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 325
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 327
						//pcreltotemp
	.lipcrel	l98
	add	r7
						// freereg r1
l94: # 
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 327
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 328
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 328
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 103
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	2
	sub	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 328
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mul	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 328
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 103
						// reg r1 - only match against tmp
	mt	r1
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 329
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r3
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 329
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 330
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cachedsector, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 331
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	8
	ldidx	r6
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 331
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 331
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 331
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 331
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l97
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 332
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 333
						//pcreltotemp
	.lipcrel	l98
	add	r7
l97: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 334
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	1
	mr	r0
l98: # 
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.5
	.global	_FileWriteSector
_FileWriteSector:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 342
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 342
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l101
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 342
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 342
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 342
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l102
		add	r7
l101: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 343
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 345
						//pcreltotemp
	.lipcrel	l106
	add	r7
						// freereg r1
l102: # 
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 345
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 346
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 346
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to r1) flags 6a type 103
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	2
	sub	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 346
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mul	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 346
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 103
						// reg r1 - only match against tmp
	mt	r1
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 347
						// (bitwise/arithmetic) 	//ops: 0, 4, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 2
						// deref 
	ld	r3
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 347
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
	addt	r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 348
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_cachedsector, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 349
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	8
	ldidx	r6
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 349
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 349
						//call
						//pcreltotemp
	.lipcrel	_sd_write_sector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 349
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 349
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l105
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 350
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 351
						//pcreltotemp
	.lipcrel	l106
	add	r7
l105: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 352
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	1
	mr	r0
l106: # 
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.6
	.global	_FileSeek
_FileSeek:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	stdec	r6	// shortest way to decrement sp by 4
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 468
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 40
						// var, auto|reg
						// matchobj comparing flags 1 with 40
	.liconst	20
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 469
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
				// flags 42
	and	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 469
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 469
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 469
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 469
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l107
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 472
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	addt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 472
						//comp
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_cluster_mask
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// matchobj comparing flags 1 with 2
	.liconst	-1
	xor	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 472
						// (bitwise/arithmetic) 	//ops: 2, 3, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 62
						// reg r2 - only match against tmp
	//mt
	and	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 162
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 42
						// reg r2 - only match against tmp
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 472
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	20
	ldidx	r6
	cmp	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 472
	cond	LE
						//conditional branch reversed
						//pcreltotemp
	.lipcrel	l113
		add	r7
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 474
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)store type 3
	st	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 475
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r4
						//save_temp done
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 476
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	12
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 476
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 476
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 103
						// matchobj comparing flags 6a with 4a
						// deref 
	ld	r2
						// (save temp)store type 3
	st	r1
						//save_temp done
						// freereg r2
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 479
						//pcreltotemp
	.lipcrel	l114
	add	r7
l113: # 
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 479
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	-512
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 479
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 2, 6
						// (obj to r5) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
	mr	r5
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	sub	r5
						// (save result) // isreg
						// freereg r1
l114: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 480
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	9
	shr	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 480
						//FIXME convert
						// (convert - reducing type 103 to 3
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 480
						// Q1 disposable
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	stdec	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 480
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 64, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 4a
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 480
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 481
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 481
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 76, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 481
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector // extern
	add	r7
						// Flow control - popping 4 + 4 bytes
	.liconst	8
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 482
						// Z disposable
		// Offsets 0, 0
		// Have am? no, yes
		// flags 2, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	20
	ldidx	r6
						// (save temp)store type 3
	st	r4
						//save_temp done
l107: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	ldinc	r6	// shortest way to add 4 to sp
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.7
	.global	_FileRead
_FileRead:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-16
	add	r6
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
	addt	r6
						//sizemod based on type 0xa
	stmpdec	r1
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -8
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 102 type 3
						// var, auto|reg
	.liconst	36
	ldidx	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 491
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 102
						// var, auto|reg
						// matchobj comparing flags 1 with 102
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 491
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l117
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 491
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	8
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../../../../DeMiSTify/firmware/minfat.c, line 491
						// (test)
						// (obj to tmp) flags 22 type 103
						// matchobj comparing flags 22 with 62
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 62
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 491
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l118
		add	r7
l117: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 492
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 493
						//pcreltotemp
	.lipcrel	l115
	add	r7
						// freereg r1
l118: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 493
						// (bitwise/arithmetic) 	//ops: 0, 0, 5
						// (obj to r4) flags 2 type a
						// var, auto|reg
	.liconst	12
						//sizemod based on type 0xa
	ldidx	r6
	mr	r4
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	16
	add	r4
						// (save result) // isreg
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 493
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 82
						// deref 
	ld	r4
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 493
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 62
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	add	r1
						// (save result) // isreg
		// Offsets 0, 0
		// Have am? no, no
		// flags 22, 2
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//auto: flags: 82, comparing 8, 0 with 4, 0
						//Fuzzy match found, offset: 4 (varadr: 1)
	.liconst	4
	add	r0

						// required value found in r0
						// (obj to tmp) flags 22 type 103
						// matchobj comparing flags 22 with 1
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 1
						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 493
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 22
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 22
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 493
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l121
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 494
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r1
				//return 0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	sub	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 494
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						//No need to mask - same size
						// freereg r1
l121: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 495
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 495
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l123
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 496
						//setreturn
						// (obj to r0) flags 1 type 103
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	mr	r0
				//return 0

						//../../../../DeMiSTify/firmware/minfat.c, line 497
						//pcreltotemp
	.lipcrel	l115
	add	r7
l123: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 497
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 103
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	511
	and	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 498
						// (test)
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 498
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l125
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 500
						// (bitwise/arithmetic) 	//ops: 0, 7, 2
						// (obj to r1) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	512
	mr	r1
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 1
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	sub	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 500
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 3
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 62
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 501
						// (bitwise/arithmetic) 	//ops: 0, 7, 6
						// (obj to r5) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 62
						// (prepobj r5)
 						// (prepobj r5)
 						// matchobj comparing flags 82 with 4a
						// matchobj comparing flags 82 with 62
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	mr	r5
						// (obj to tmp) flags 62 type a
						// matchobj comparing flags 62 with 82
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r6
	add	r5
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 502
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// matchobj comparing flags 42 with 62
						// reg r3 - only match against tmp
	mt	r3
	sgn
	cmp	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 502
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l127
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 503
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r3 - only match against tmp
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
l127: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 504
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r2 - only match against tmp
	mt	r2
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 504
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 42
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 4a
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x103
	ldidx	r6
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r4
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 505
						// (bitwise/arithmetic) 	//ops: 4, 3, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// matchobj comparing flags 42 with 62
						// reg r2 - only match against tmp
	mt	r2
	sub	r3
						// (save result) // isreg
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 506
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 88
		// Real offset of type is 88, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 42
						// reg r2 - only match against tmp
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 506
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 62
	.liconst	1
	sub	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 506
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 506
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l143
		add	r7
l140: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 507
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 2a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// deref
						// var FIXME - deref?
						// reg - auto
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r5
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 507
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 6a
						// var, auto|reg
						// matchobj comparing flags 1 with 6a
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 506
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r2 - only match against tmp
	mt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 506
						// (bitwise/arithmetic) 	//ops: 3, 0, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 506
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 506
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l140
		add	r7
l143: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 508
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 508
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 112, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 508
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l125: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 510
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 510
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l144
		add	r7
		// Offsets 0, 0
		// Have am? no, no
		// flags 102, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 102 type a
						// matchobj comparing flags 102 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	ldidx	r6
						// (save temp)isreg
	mr	r5
						//save_temp done
l131: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 512
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	511
	sgn
	cmp	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 512
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l135
		add	r7
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 514
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 514
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 514
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector // extern
	add	r7
						// Deferred popping of 4 bytes (4 in total)
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 515
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// const
	.liconst	512
	add	r5
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 516
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						// (obj to r0) flags 62 type 103
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r4
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	512
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r4

						//../../../../DeMiSTify/firmware/minfat.c, line 517
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	512
	sub	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 518
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 62
	.liconst	1
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 518
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// matchobj comparing flags 2 with 62
						// var, auto|reg
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 62
	.liconst	20
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 518
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 4 + 4 bytes
						// matchobj comparing flags 1 with 62
	.liconst	8
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 521
						//pcreltotemp
	.lipcrel	l145
	add	r7
l135: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 522
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 522
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 64
		// Real offset of type is 68, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	16
						//sizemod based on type 0xa
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 522
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 523
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 524
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 524
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 5, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 42
						// reg r1 - only match against tmp
	//mt
	mr	r0
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 4a
						// matchobj comparing flags 62 with 4a
						// deref 
	ld	r4
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x62
	mt	r0
	st	r4
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 525
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 84
		// Real offset of type is 84, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 62
						// matchobj comparing flags 42 with 62
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 525
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 42
						// matchobj comparing flags 1 with 62
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 525
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// matchobj comparing flags 4a with 62
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 525
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l145
		add	r7
l142: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 526
		// Offsets 0, 0
		// Have am? yes, no
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, -4
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 6a type 101
						// deref 
	ldbinc	r2
						// (save temp)store type 1
	byt
	st	r5
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 526
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
	add	r5
						// (save result) // isreg
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 525
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 525
						// (bitwise/arithmetic) 	//ops: 4, 0, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	1
	sub	r3
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 525
						// Q1 disposable
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
				// flags 4a
	and	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 525
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l142
		add	r7
l145: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 510
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
	sgn
	cmp	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 510
	cond	SGT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l131
		add	r7
l144: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 529
						//setreturn
						// (obj to r0) flags 1 type 103
						// const
	.liconst	1
	mr	r0
l115: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-16
	sub	r6
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.8
	.global	_FileGetCh
_FileGetCh:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 535
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 535
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l148
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 535
						// (bitwise/arithmetic) 	//ops: 4, 0, 6
						//Special case - addt
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	addt	r3
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 535
						// (test)
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 535
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l149
		add	r7
l148: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 536
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	-1
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 537
						//pcreltotemp
	.lipcrel	l157
	add	r7
						// freereg r1
l149: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 537
						// (bitwise/arithmetic) 	//ops: 4, 0, 5
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	16
	addt	r3
						// (save temp)isreg
	mr	r4
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 537
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 62 type 103
						// matchobj comparing flags 62 with 42
						// deref 
	ld	r4
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	511
	and	r1
						// (save result) // isreg
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 537
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l152
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 539
						// (test)
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r4

						//../../../../DeMiSTify/firmware/minfat.c, line 539
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l154
		add	r7
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 540
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	1
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 540
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 540
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l154: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 541
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 541
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 541
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
l152: # 
						// allocreg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 62, 42
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 108
		// Real offset of type is 108, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 62 type 103
						// deref 
	ld	r4
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 543
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 62 type 103
						// matchobj comparing flags 62 with 62
						// deref 
	ld	r5
	cmp	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 543
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l156
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 544
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	-1
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 545
						//pcreltotemp
	.lipcrel	l157
	add	r7
						// freereg r1
l156: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 546
						// Z disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// const
	.liconst	1
	addt	r2
						// (save temp)store type 3
	st	r4
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 546
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 103
						// matchobj comparing flags 42 with 62
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	511
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 546
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 1
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	add	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 546
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 82
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r0
						//save_temp done
						// freereg r1
l157: # 
						// allocreg r1
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.9
	.global	_LoadFile
_LoadFile:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
	.liconst	-20
	add	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type a
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 553
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 40
						// reg r2 - only match against tmp
	//mt
	stdec	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 553
						// (address)
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	4
	addt	r6
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 553
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 32
		// Real offset of type is 36, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 82
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 553
						//call
						//pcreltotemp
	.lipcrel	_FileOpen // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 553
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 553
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l161
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 555
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 558
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
	cmp	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 558
	cond	LE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l167
		add	r7
						// freereg r1
l168: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 560
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 2 type a
						// var, auto|reg
	.liconst	32
	ldidx	r6
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 560
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 560
						//call
						//pcreltotemp
	.lipcrel	_FileReadSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 560
						// (test)
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 560
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l166
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 561
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 562
						//pcreltotemp
	.lipcrel	l158
	add	r7
						// freereg r1
l166: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 562
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 562
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 562
						//call
						//pcreltotemp
	.lipcrel	_FileNextSector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 564
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	32
	ldidx	r6
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	512
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	36
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//../../../../DeMiSTify/firmware/minfat.c, line 565
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	512
	add	r4
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 558
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
	cmp	r4

						//../../../../DeMiSTify/firmware/minfat.c, line 558
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l168
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 569
						//pcreltotemp
	.lipcrel	l167
	add	r7
l161: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 571
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 572
						//pcreltotemp
	.lipcrel	l158
	add	r7
l167: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 573
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1
	mr	r0
l158: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	.liconst	-20
	sub	r6
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.a
	.global	_ChangeDirectoryByCluster
_ChangeDirectoryByCluster:
	stdec	r6
	mt	r3
	stdec	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 579
						// (test)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	//mt
				// flags 42
	and	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 579
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l173
		add	r7
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 581
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_current_directory_cluster, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r3
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 582
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						// (obj to r2) flags 42 type 103
						// reg r3 - only match against tmp
	mt	r3
	mr	r2
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2
	sub	r2
						// (save result) // isreg
						// allocreg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 52, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 582
						// (bitwise/arithmetic) 	//ops: 2, 3, 3
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	//mt
	mul	r2
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 582
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 0, 3, 1
						// (obj to r0) flags 2 type 103
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r0
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 2
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	mt	r2
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_current_directory_start, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 583
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 103
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	4
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x103, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_dir_entries, 4
						// extern pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 586
						//pcreltotemp
	.lipcrel	l174
	add	r7
l173: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 587
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 0)
	.liabs	_current_directory_cluster
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 588
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_current_directory_start
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_root_directory_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 589
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 589
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l176
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 589
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4
	shl	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 589
						//pcreltotemp
	.lipcrel	l177
	add	r7
l176: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 589
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 103
						// extern
	.liabs	_root_directory_size
						//extern deref
						//sizemod based on type 0x103
	ldt
	mr	r1
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	4
	shl	r1
						// (save result) // isreg
l177: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 589
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 4a, 2
						// (a/p assign)
							// Not using addressing mode
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_dir_entries, 4
						// extern pe not varadr
						//sizemod based on type 0x103
	stmpdec	r1
l174: # 
						// freereg r1
						// freereg r3
	.lipcrel	.functiontail, 4
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: no
		//r4: no
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.b
	.global	_CurrentDirectory
_CurrentDirectory:
	stdec	r6
						// allocreg r2
						// allocreg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_current_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 596
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
	cmp	r1

						//../../../../DeMiSTify/firmware/minfat.c, line 596
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l181
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 596
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	0
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 596
						//pcreltotemp
	.lipcrel	l182
	add	r7
l181: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 596
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
l182: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 596
						// Q1 disposable
						//setreturn
						// (obj to r0) flags 4a type 103
						// reg r2 - only match against tmp
	mt	r2
	mr	r0
						// freereg r1
						// freereg r2
	ldinc	r6
	mr	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: no
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.c
	.global	_ChangeDirectory
_ChangeDirectory:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	exg	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type a
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 602
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 603
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 603
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l186
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 605
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	26
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 605
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 606
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 606
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l188
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 606
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 606
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 606
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 5
						// (obj to r4) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r4
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4095
	and	r4
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 606
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	shl	r4
						// (save result) // isreg
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 606
						//pcreltotemp
	.lipcrel	l189
	add	r7
l188: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 606
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
l189: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 606
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r4 - only match against tmp
	mt	r4
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 606
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 4, 4
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	or	r3
						// (save result) // isreg
						// freereg r1
l186: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 608
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 44
		// Real offset of type is 44, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 608
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectoryByCluster // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
	.lipcrel	.functiontail, 2
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.d
	.global	_NextDirEntry
_NextDirEntry:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r2
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 40 type 3
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r2
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 618
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 40
						// const
						// matchobj comparing flags 1 with 40
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 620
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 620
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l197
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 622
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 195
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l195,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 623
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l193,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_current_directory_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 624
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l194,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_current_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r0
						// (save temp)store type 4
	st	r0
						//save_temp done
l197: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 627
		// Offsets 0, 13
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 13, 0
		// Real offset of type is 13, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 13)
	.liabs	_longfilename, 13
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r1
l236: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 632
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_dir_entries
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 240
		// Real offset of type is 240, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l195,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 632
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	cmp	r2
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 632
	cond	GE
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l239
		add	r7
l237: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 634
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						// (obj to r1) flags 42 type 104
						// reg r2 - only match against tmp
	mt	r2
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	15
	and	r1
						// (save result) // isreg
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 634
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l205
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 636
						//FIXME convert
						// (convert - reducing type 104 to 103
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// extern (offset 0)
	.liabs	_cachedsector
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l193,0
						//static deref
						//sizemod based on type 0x104
	ldt
						//Saving to reg r0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 637
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						//extern: comparing 0 with 0
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 637
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 236
		// Real offset of type is 240, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l193,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 637
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// matchobj comparing flags 82 with 82
						// static
	.liabs	l193,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1

						//../../../../DeMiSTify/firmware/minfat.c, line 637
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 28
		// Real offset of type is 32, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 637
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 638
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 192
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 1
						// static
	.liabs	l192,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 82
						// matchobj comparing flags 82 with 82
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)store type a
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 641
						//pcreltotemp
	.lipcrel	l206
	add	r7
l205: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 641
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l192,0
						//static deref
						//sizemod based on type 0xa
	ldt
	mr	r0
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	32
	add	r0
						// (save result) // not reg
						// Store_reg to type 0xa, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l192,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching
l206: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 642
						// (bitwise/arithmetic) 	//ops: 0, 0, 1
						// (obj to r0) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l195,0
						//static deref
						//sizemod based on type 0x104
	ldt
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 2
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l195,4
						// static pe not varadr
	stmpdec	r0
 						// WARNING - check that 4 has been added.
	// Volatile, or not int - not caching

						//../../../../DeMiSTify/firmware/minfat.c, line 644
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r5)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 22 type 101
						// matchobj comparing flags 22 with 82
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 82
						// deref
						// var FIXME - deref?
						// static
	ldinc	r7
	.ref	l192,0
	ldt
						//sizemod based on type 0x101
	byt
	ldt
						// (save temp)isreg
	mr	r5
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 644
						// (test)
						// (obj to tmp) flags 42 type 3
						// matchobj comparing flags 42 with 22
						// reg r5 - only match against tmp
	//mt
				// flags 42
	and	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 644
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l220
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 644
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	229
	cmp	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 644
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l220
		add	r7
						// freereg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 280
		// Real offset of type is 280, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l192,0
						//static deref
						//sizemod based on type 0xa
	ldt
						// (save temp)isreg
	mr	r3
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 647
						// (bitwise/arithmetic) 	//ops: 4, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	11
	addt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 647
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r4)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r1
//Disposable, postinc doesn't matter.
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 647
						// (compare) (q1 signed) (q2 signed)
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	15
	cmp	r4

						//../../../../DeMiSTify/firmware/minfat.c, line 647
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l211
		add	r7
						// freereg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 651
						// (bitwise/arithmetic) 	//ops: 6, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r5 - only match against tmp
	mt	r5
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	31
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 651
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
	sub	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 651
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	13
	mul	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 652
						// (bitwise/arithmetic) 	//ops: 0, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_longfilename
						// extern pe is varadr
	add	r1
						// (save result) // isreg
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 653
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	1
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 653
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 654
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	3
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 654
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 655
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	5
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 655
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 656
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	7
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 656
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 657
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	9
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 657
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 659
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	14
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 659
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 660
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 660
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 661
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	18
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 661
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 662
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	20
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 662
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 663
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	22
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 663
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 664
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	24
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 664
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 666
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	28
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 666
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Have an addressing mode...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//save_temp done
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 667
						// (bitwise/arithmetic) 	//ops: 4, 0, 3
						//Special case - addt
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	30
	addt	r3
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 667
						// Q1 disposable
						// Z disposable
		// Offsets 0, 0
		// Have am? yes, yes
		// flags 6a, 6a
						// (a/p assign)
						// Dereferencing object...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	ldbinc	r2
//Disposable, postinc doesn't matter.
						// (save temp)store type 1
	stbinc	r1
						//Disposable, postinc doesn't matter.
						//save_temp done
						// freereg r2
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 668
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 676
						//pcreltotemp
	.lipcrel	l220
	add	r7
l211: # 
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 677
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	8
	and	r1
						// (save result) // isreg
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 677
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l214
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 677
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						// (obj to r1) flags 42 type 3
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
	mr	r1
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 677
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l213
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 677
						// (test)
						// (obj to tmp) flags 2 type a
						// matchobj comparing flags 2 with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	28
	ldidx	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 677
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l213
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 677
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 60
		// Real offset of type is 60, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 2
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 677
						//call
						// (obj to tmp) flags 22 type f
						// matchobj comparing flags 22 with 42
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags a2 with 42
						// deref
						// var FIXME - deref?
						// reg - auto
						// matchobj comparing flags 1 with 42
	.liconst	28
	ldidx	r6
	exg	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 677
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 677
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l214
		add	r7
l213: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 680
						// (test)
						// (obj to tmp) flags 62 type 3
						// deref 
	ld	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 680
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l219
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 681
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 62
						// extern (offset 0)
	.liabs	_longfilename
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done
l219: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 685
						//setreturn
						// (obj to r0) flags 2 type a
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l192,0
						//static deref
						//sizemod based on type 0xa
	ldt
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 686
						//pcreltotemp
	.lipcrel	l190
	add	r7
l214: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 690
		// Offsets 0, 13
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 13, 0
		// Real offset of type is 13, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// extern (offset 13)
	.liabs	_longfilename, 13
						// extern pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 101
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 1
	stbinc	r0
						//Disposable, postinc doesn't matter.
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 692
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1

						// required value found in tmp
						// (save temp)store type 3
	st	r6
						//save_temp done
						// freereg r1
l220: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 632
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_dir_entries
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 240
		// Real offset of type is 240, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 2
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l195,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)isreg
	mr	r2
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 632
						// Q2 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r1 - only match against tmp
	mt	r1
	cmp	r2
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 632
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l237
		add	r7
l239: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 698
						// (test)
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_current_directory_start
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 698
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l221
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 698
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 698
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l238
		add	r7
						// freereg r1
l221: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 700
						//FIXME convert
						// (convert - reducing type 104 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 104
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l194,0
						//static deref
						//sizemod based on type 0x104
	ldt
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 700
						//call
						//pcreltotemp
	.lipcrel	_GetCluster // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 700
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r1

						//../../../../DeMiSTify/firmware/minfat.c, line 700
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj tmp)
 						// (prepobj tmp)
 						// static
	.liabs	l194,4
						// static pe not varadr
						//sizemod based on type 0x104
	stmpdec	r1
						// freereg r1
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 2 type 104
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 82
						//static not varadr
						//statictotemp (FIXME - make PC-relative?)
	.liabs	l194,0
						//static deref
						//sizemod based on type 0x104
	ldt
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 702
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l227
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 2
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 2
						// matchobj comparing flags 1 with 82
	.liconst	268435448
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	cmp	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 702
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l229
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 702
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 1
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						//pcreltotemp
	.lipcrel	l228
	add	r7
l229: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 702
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						//pcreltotemp
	.lipcrel	l228
	add	r7
						// freereg r1
l227: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// var, auto|reg
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	65528
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						// Q1 disposable
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 1

						// required value found in tmp
	cmp	r1
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 702
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l232
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 702
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 8a with 1
						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						//pcreltotemp
	.lipcrel	l233
	add	r7
l232: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 702
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 8
		// Real offset of type is 8, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	8
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	1
						// (save temp)store type 3
	st	r0
						//save_temp done
l233: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 702
		// Offsets 0, 0
		// Have am? no, no
		// flags a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 40
		// Real offset of type is 40, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags a type 3
						// var, auto|reg
	.liconst	8
						//sizemod based on type 0x3
	ldidx	r6
						// (save temp)isreg
	mr	r4
						//save_temp done
l228: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 702
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r4 - only match against tmp
	mt	r4
				// flags 4a
	and	r4

						//../../../../DeMiSTify/firmware/minfat.c, line 702
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l238
		add	r7
						// freereg r1
						// freereg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 705
						// (bitwise/arithmetic) 	//ops: 0, 0, 2
						// (obj to r1) flags 2 type 104
						// matchobj comparing flags 2 with 4a
						// var, auto|reg
						// matchobj comparing flags 1 with 4a
	.liconst	4
						//sizemod based on type 0x104
	ldidx	r6
	mr	r1
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	2
	sub	r1
						// (save result) // isreg
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 705
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 705
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 705
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 705
						// Q1 disposable
						// Q2 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 1
						//Special case - addt
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l193,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 82
						// matchobj comparing flags 4a with 82
						// reg r2 - only match against tmp
	mt	r2
	addt	r1
						// (save temp)store type 4
	st	r0
						//save_temp done
						// matchobj comparing flags 2 with 2
						// Obsoleting t1
						// freereg r2
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 706
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 2
						// (a/p assign)
						// Destination is a variable with offset 0, 195
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// matchobj comparing flags 82 with 2
						// static
	.liabs	l195,0
						// static pe not varadr
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 4
	st	r0
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 709
						//pcreltotemp
	.lipcrel	l236
	add	r7
l238: # 
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 711
						//setreturn
						// (obj to r0) flags 1 type a
						// const
	.liconst	0
	mr	r0
l190: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-12
	sub	r6
	.lipcrel	.functiontail, 0
	add	r7

	.section	.data.e
l192:
	.int	0
	.section	.bss.f
	.lcomm	l193,4
	.section	.bss.10
	.lcomm	l194,4
	.section	.bss.11
	.lcomm	l195,4
	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.12
	.global	_FindByCluster
_FindByCluster:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
						// allocreg r3
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 40 type 103
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1
						// allocreg r5
						// allocreg r4
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 718
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 12
		// Real offset of type is 12, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 40
						// reg r3 - only match against tmp
	mt	r3
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 718
						//call
						//pcreltotemp
	.lipcrel	_ChangeDirectoryByCluster // extern
	add	r7
						// Deferred popping of 0 bytes (0 in total)
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// const
	.liconst	0
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 719
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 16
		// Real offset of type is 20, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 719
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 24
		// Real offset of type is 28, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r2 - only match against tmp
				// flags 42
	and	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 719
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l257
		add	r7
l256: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 722
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// const
	.liconst	26
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 722
						// Q1 disposable
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r3)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 723
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 723
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l249
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 723
						// (bitwise/arithmetic) 	//ops: 3, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r2
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 723
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 723
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 6
						// (obj to r5) flags 4a type 3
						// matchobj comparing flags 4a with 6a
						// reg r1 - only match against tmp
	//mt
	mr	r5
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	4095
	and	r5
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 723
						// (bitwise/arithmetic) 	//ops: 6, 0, 6
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	16
	shl	r5
						// (save result) // isreg
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 723
						//pcreltotemp
	.lipcrel	l250
	add	r7
l249: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 723
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 56
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
l250: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 723
						//FIXME convert
						// (convert - reducing type 3 to 103
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 3
						// reg r5 - only match against tmp
	mt	r5
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 723
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 4, 4
						//Special case - addt
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 4a type 103
						// matchobj comparing flags 4a with 4a
						// reg r1 - only match against tmp
	//mt
	addt	r3
						// (save temp)isreg
	mr	r3
						//save_temp done
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 724
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	16
	ldidx	r6
	cmp	r3

						//../../../../DeMiSTify/firmware/minfat.c, line 724
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l252
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 725
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	1
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 726
						//pcreltotemp
	.lipcrel	l240
	add	r7
l252: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 1 type a
						// const
	.liconst	0
	stdec	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r2 - only match against tmp
	mt	r2
				// flags 42
	and	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 719
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l253
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 719
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	0
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						//pcreltotemp
	.lipcrel	l254
	add	r7
l253: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 719
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 68
		// Real offset of type is 72, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	1
						// (save temp)isreg
	mr	r4
						//save_temp done
						// freereg r1
l254: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 719
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 76
		// Real offset of type is 80, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 3
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						//call
						//pcreltotemp
	.lipcrel	_NextDirEntry // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						// (getreturn)						// (save result) // isreg
	mt	r0
	mr	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 719
						// (test)
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 42
						// reg r2 - only match against tmp
				// flags 42
	and	r2

						//../../../../DeMiSTify/firmware/minfat.c, line 719
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l256
		add	r7
l257: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 727
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	0
	mr	r0
l240: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.lipcrel	.functiontail, 0
	add	r7

	//registers used:
		//r1: yes
		//r2: yes
		//r3: yes
		//r4: yes
		//r5: yes
		//r6: yes
		//r7: yes
		//tmp: yes
	.section	.text.13
	.global	_ValidateDirectory
_ValidateDirectory:
	exg	r6
	stmpdec	r6
	stmpdec	r3
	stmpdec	r4
	stmpdec	r5
	exg	r6
	.liconst	-12
	add	r6
						// allocreg r5
						// allocreg r1
						// Q1 disposable
		// Offsets 0, 0
		// Have am? yes, no
		// flags 40, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r5 - no need to prep
						// (obj to tmp) flags 40 type 103
						// matchobj comparing flags 40 with 1
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	mr	r5
						//save_temp done
						// freereg r1
						// allocreg r4
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 741
						// (test)
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 40
						// reg r5 - only match against tmp
	//mt
				// flags 42
	and	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 741
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l260
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 741
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// extern
	.liabs	_root_directory_cluster
						//extern deref
						//sizemod based on type 0x103
	ldt
	cmp	r5

						//../../../../DeMiSTify/firmware/minfat.c, line 741
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l261
		add	r7
l260: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 743
						//setreturn
						// (obj to r0) flags 1 type 3
						// const
	.liconst	1
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 744
						//pcreltotemp
	.lipcrel	l258
	add	r7
						// freereg r1
						// freereg r2
l261: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 747
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 42 type 103
						// reg r5 - only match against tmp
	mt	r5
						//Saving to reg r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 748
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 42
						// const
						// matchobj comparing flags 1 with 42
	.liconst	2
	sub	r1
						// (save result) // isreg
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 748
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 1
						// extern
	.liabs	_cluster_size
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 748
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	mul	r1
						// (save result) // isreg
						// freereg r2
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 748
						//FIXME convert
						// (convert - reducing type 103 to 104
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 2 type 103
						// extern
	.liabs	_data_start
						//extern deref
						//sizemod based on type 0x103
	ldt
						//Saving to reg r2
						// (save temp)isreg
	mr	r2
						//save_temp done
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 748
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 3, 2, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 2
						// reg r2 - only match against tmp
	//mt
	addt	r1
						// (save temp)isreg
	mr	r1
						//save_temp done
						// freereg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 751
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 4a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 4a
						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
	stdec	r6

						//../../../../DeMiSTify/firmware/minfat.c, line 751
		// Offsets 0, 0
		// Have am? no, no
		// flags 4a, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 52
		// Real offset of type is 56, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 4a type 104
						// matchobj comparing flags 4a with 82
						// reg r1 - only match against tmp
	mt	r1
						// (save temp)isreg
	//mr
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 751
						//call
						//pcreltotemp
	.lipcrel	_sd_read_sector // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 751
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 751
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l265
		add	r7
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 752
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	0
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 753
						//pcreltotemp
	.lipcrel	l258
	add	r7
l265: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 753
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 42
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// reg r4 - no need to prep
						// (obj to tmp) flags 82 type a
						// (prepobj tmp)
 						// (prepobj tmp)
 						// extern (offset 0)
	.liabs	_sector_buffer
						// extern pe is varadr
						// (save temp)isreg
	mr	r4
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 754
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 62
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	0
						// (save temp)store type 4
	st	r6
						//save_temp done
l285: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 756
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (obj to r0) flags 62 type 101
						// deref 
	byt
	ld	r4
	mr	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0x2
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.

						//../../../../DeMiSTify/firmware/minfat.c, line 756
						// (test)
						// (obj to tmp) flags 2 type 3
						// matchobj comparing flags 2 with 82
						// matchobj comparing flags 2 with 2

						// required value found in r0
	mt	r0
				//return 0
				// flags 2
	//mr
	and	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 756
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l276
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 756
						// (compare) (q1 signed) (q2 signed)
						// (obj to r0) flags 2 type 3
						// matchobj comparing flags 2 with 2

						// required value found in tmp
	mr	r0
				//return 0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	229
	cmp	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 756
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l276
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 758
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	11
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 758
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 101
						// matchobj comparing flags 6a with 4a
						// deref 
	byt
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 758
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	16
	and	r1
						// (save result) // isreg
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 758
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l276
		add	r7
						// freereg r2
						// freereg r3
						// allocreg r2

						//../../../../DeMiSTify/firmware/minfat.c, line 760
		// Offsets 0, 0
		// Have am? no, no
		// flags 42, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 92
		// Real offset of type is 92, isauto 0
						// (prepobj r0)
 						// reg r2 - no need to prep
						// (obj to tmp) flags 42 type a
						// matchobj comparing flags 42 with 1
						// reg r4 - only match against tmp
	mt	r4
						// (save temp)isreg
	mr	r2
						//save_temp done
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 760
		// Offsets 0, 0
		// Have am? no, no
		// flags 82, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 96
		// Real offset of type is 96, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 82 type a
						// matchobj comparing flags 82 with 42
						// (prepobj tmp)
 						// (prepobj tmp)
 						// matchobj comparing flags 82 with 42
						// static
	.liabs	l277,0
						// static pe is varadr
						// (save temp)isreg
	mr	r1
						//save_temp done
						// allocreg r3

						//../../../../DeMiSTify/firmware/minfat.c, line 760
		// Offsets 8, 0
		// Have am? no, no
		// flags 1, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 100
		// Real offset of type is 100, isauto 0
						// (prepobj r0)
 						// reg r3 - no need to prep
						// (obj to tmp) flags 1 type 103
						// matchobj comparing flags 1 with 82
						// const
						// matchobj comparing flags 1 with 82
	.liconst	8
						// (save temp)isreg
	mr	r3
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 760
						//call
						//pcreltotemp
	.lipcrel	___strncmp // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r2
						// freereg r1
						// freereg r3
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 760
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 760
	cond	NEQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l276
		add	r7
						// allocreg r3
						// allocreg r2
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						// (bitwise/arithmetic) 	//ops: 5, 0, 1
						//Special case - addt
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	26
	addt	r4
						// (save temp)store type a
	st	r6
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						// (test)
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 6a
						// extern
	.liabs	_fat32
						//extern deref
						//sizemod based on type 0x103
	ldt

						//../../../../DeMiSTify/firmware/minfat.c, line 762
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l279
		add	r7
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						// (bitwise/arithmetic) 	//ops: 5, 0, 2
						//Special case - addt
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 1 type a
						// matchobj comparing flags 1 with 2
						// const
						// matchobj comparing flags 1 with 2
	.liconst	20
	addt	r4
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 6a type 102
						// matchobj comparing flags 6a with 4a
						// deref 
	hlf
	ld	r1
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 6a
						// const
						// matchobj comparing flags 1 with 6a
	.liconst	4095
	and	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						// Q1 disposable
						// (bitwise/arithmetic) 	//ops: 2, 0, 1
						// (obj to r0) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r1 - only match against tmp
	mt	r1
	mr	r0
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
						// matchobj comparing flags 1 with 4a
	.liconst	16
	shl	r0
						// (save result) // not reg
						// Store_reg to type 0x3, flags 0xa
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with 1
	.liconst	8
	addt	r6
	stmpdec	r0
 						// WARNING - check that 4 has been added.
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						//pcreltotemp
	.lipcrel	l280
	add	r7
l279: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 762
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, a
						// (a/p assign)
						// Destination is a variable with offset 0, 4
		// Real offset of type is 4, isauto 0
						// (prepobj r0)
 						// (prepobj r0)
 						// var, auto|reg
	.liconst	4
	addt	r6
	mr	r0

						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
						// const
						// matchobj comparing flags 1 with 8a
						// matchobj comparing flags 1 with 8a
	.liconst	0
						// (save temp)store type 3
	st	r0
						//save_temp done
						// freereg r1
l280: # 
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						//FIXME convert
						//Converting to wider type...
						//But unsigned, so no need to extend
						// (prepobj r1)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2a type 102
						// deref 
						// (prepobj tmp)
 						// (prepobj tmp)
 						// deref
						// var FIXME - deref?
						// reg - auto
	ld	r6
						//sizemod based on type 0x102
	hlf
	ldt
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						// (bitwise/arithmetic) 	//ops: 2, 0, 2
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags a type 3
						// matchobj comparing flags a with 2a
						// var, auto|reg
						// matchobj comparing flags 1 with 2a
	.liconst	4
						//sizemod based on type 0x3
	ldidx	r6
	add	r1
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 762
						//FIXME convert
						// (convert - reducing type 3 to 104
						//No need to mask - same size

						//../../../../DeMiSTify/firmware/minfat.c, line 765
						// Q1 disposable
						//FIXME convert
						// (convert - reducing type 104 to 103
						// (prepobj tmp)
 						// (prepobj tmp)
 						// var, auto|reg
						// matchobj comparing flags 1 with a
	.liconst	12
	addt	r6
						//sizemod based on type 0x103
	stmpdec	r1
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 765
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 152
		// Real offset of type is 152, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 82
						// var, auto|reg
						// matchobj comparing flags 1 with 82
	.liconst	8
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 765
						//call
						//pcreltotemp
	.lipcrel	_ValidateDirectory // extern
	add	r7
						// Flow control - popping 0 + 0 bytes
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 765
						// (test)
						// (obj to tmp) flags 4a type 3
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 765
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l283
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 765
						// (a/p push)
						// a: pushed 0, regnames[sp] r6
						// (obj to tmp) flags 42 type 103
						// matchobj comparing flags 42 with 4a
						// reg r5 - only match against tmp
	mt	r5
	stdec	r6
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 765
		// Offsets 0, 0
		// Have am? no, no
		// flags 2, 4a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 168
		// Real offset of type is 172, isauto 0
						// (prepobj r0)
 						// reg r1 - no need to prep
						// (obj to tmp) flags 2 type 103
						// matchobj comparing flags 2 with 42
						// var, auto|reg
						// matchobj comparing flags 1 with 42
	.liconst	12
						//sizemod based on type 0x103
	ldidx	r6
						// (save temp)isreg
	mr	r1
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 765
						//call
						//pcreltotemp
	.lipcrel	_FindByCluster // extern
	add	r7
						// Flow control - popping 4 + 0 bytes
	.liconst	4
	add	r6
						// freereg r1
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 765
						// (test)
						// (obj to tmp) flags 4a type 3
						// matchobj comparing flags 4a with 1
						// reg r0 - only match against tmp
	mt	r0
				// flags 4a
	and	r0
						// freereg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 765
	cond	EQ
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l283
		add	r7
						// allocreg r1

						//../../../../DeMiSTify/firmware/minfat.c, line 765
		// Offsets 1, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// matchobj comparing flags 1 with 4a
						// const
						// matchobj comparing flags 1 with 4a
	.liconst	1
						// (save temp)store type 3
	st	r6
						//save_temp done

						//../../../../DeMiSTify/firmware/minfat.c, line 765
						//pcreltotemp
	.lipcrel	l284
	add	r7
l283: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 765
		// Offsets 0, 0
		// Have am? no, no
		// flags 1, 6a
						// (a/p assign)
						// Destination is a register...
						// Destination is a variable with offset 0, 0
		// Real offset of type is 0, isauto 0
						// (prepobj r0)
 						// reg r6 - no need to prep
						// (obj to tmp) flags 1 type 3
						// const
	.liconst	0
						// (save temp)store type 3
	st	r6
						//save_temp done
l284: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 765
						//setreturn
						// (obj to r0) flags 6a type 3
						// deref 
	ld	r6
	mr	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 769
						//pcreltotemp
	.lipcrel	l258
	add	r7
l276: # 

						//../../../../DeMiSTify/firmware/minfat.c, line 772
						// (bitwise/arithmetic) 	//ops: 5, 0, 5
						// WARNING - q1 and target collision - check code for correctness.
						// (obj to tmp) flags 1 type a
						// const
	.liconst	32
	add	r4
						// (save result) // isreg

						//../../../../DeMiSTify/firmware/minfat.c, line 755
						// (bitwise/arithmetic) 	//ops: 7, 0, 1
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 1
						// deref 
	ld	r6
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
						// matchobj comparing flags 1 with 62
	.liconst	1
	add	r0
						// (save result) // not reg
						// Store_reg to type 0x104, flags 0x62
	mt	r0
	st	r6
	// Volatile, or not int - not caching

						//../../../../DeMiSTify/firmware/minfat.c, line 755
						// (compare) (q1 unsigned) (q2 unsigned)
						// (obj to r0) flags 62 type 104
						// matchobj comparing flags 62 with 62
						// deref 
	//nop
	mr	r0
						// (obj to tmp) flags 1 type 104
						// matchobj comparing flags 1 with 62
						// const
						// matchobj comparing flags 1 with 62
	.liconst	16
	cmp	r0

						//../../../../DeMiSTify/firmware/minfat.c, line 755
	cond	SLT
						//conditional branch regular
						//pcreltotemp
	.lipcrel	l285
		add	r7

						//../../../../DeMiSTify/firmware/minfat.c, line 774
						//setreturn
						// (obj to r0) flags 1 type 3
						// matchobj comparing flags 1 with 1
						// const
						// matchobj comparing flags 1 with 1
	.liconst	0
	mr	r0
l258: # 
						// freereg r1
						// freereg r2
						// freereg r3
						// freereg r4
						// freereg r5
	.liconst	-12
	sub	r6
	.lipcrel	.functiontail, 0
	add	r7

	.section	.rodata.14
l277:
	.byte	46
	.byte	46
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.data.15
	.global	_cachedsector
_cachedsector:
	.int	4294967295
	.section	.data.16
	.global	_FAT32_ID
_FAT32_ID:
						// Declaring from tree
						// static
	.ref	l1
	.section	.data.17
	.global	_FAT16_ID
_FAT16_ID:
						// Declaring from tree
						// static
	.ref	l2
	.section	.bss.18
	.global	_sector_buffer
	.comm	_sector_buffer,512
	.section	.bss.19
	.global	_cluster_size
	.comm	_cluster_size,4
	.section	.bss.1a
	.global	_cluster_mask
	.comm	_cluster_mask,4
	.section	.bss.1b
	.global	_fat32
	.comm	_fat32,4
	.section	.bss.1c
	.global	_dir_entries
	.comm	_dir_entries,4
	.section	.bss.1d
	.global	_longfilename
	.comm	_longfilename,261
	.section	.bss.1e
	.global	_fat_start
	.comm	_fat_start,4
	.section	.bss.1f
	.global	_data_start
	.comm	_data_start,4
	.section	.bss.20
	.global	_root_directory_cluster
	.comm	_root_directory_cluster,4
	.section	.bss.21
	.global	_root_directory_start
	.comm	_root_directory_start,4
	.section	.bss.22
	.global	_root_directory_size
	.comm	_root_directory_size,4
	.section	.bss.23
	.global	_current_directory_cluster
	.comm	_current_directory_cluster,4
	.section	.bss.24
	.global	_current_directory_start
	.comm	_current_directory_start,4
	.section	.rodata.25
l1:
	.byte	70
	.byte	65
	.byte	84
	.byte	51
	.byte	50
	.byte	32
	.byte	32
	.byte	32
	.byte	0
	.section	.rodata.26
l2:
	.byte	70
	.byte	65
	.byte	84
	.byte	49
	.byte	54
	.byte	32
	.byte	32
	.byte	32
	.byte	0
