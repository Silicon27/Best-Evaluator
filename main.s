	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	__Z9isNumericRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE ; -- Begin function _Z9isNumericRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	2
__Z9isNumericRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE: ; @_Z9isNumericRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.cfi_startproc
; %bb.0:
	ldrsb	w8, [x0, #23]
	tbnz	w8, #31, LBB0_2
; %bb.1:
	and	x8, x8, #0xff
	cbnz	w8, LBB0_4
	b	LBB0_7
LBB0_2:
	ldr	x8, [x0, #8]
	cbz	x8, LBB0_7
; %bb.3:
	ldr	x0, [x0]
LBB0_4:
	sub	x9, x8, #1
Lloh0:
	adrp	x10, __DefaultRuneLocale@GOTPAGE
Lloh1:
	ldr	x10, [x10, __DefaultRuneLocale@GOTPAGEOFF]
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x0], #1
	add	x8, x10, x8, lsl #2
	ldr	w11, [x8, #60]
	ubfx	w8, w11, #10, #1
	tbz	w11, #10, LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_5 Depth=1
	mov	x11, x9
	sub	x9, x9, #1
	cbnz	x11, LBB0_5
LBB0_7:
	mov	x0, x8
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	__Z10isOperatorRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE ; -- Begin function _Z10isOperatorRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.p2align	2
__Z10isOperatorRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE: ; @_Z10isOperatorRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldrb	w9, [x0, #23]
	sxtb	w8, w9
	ldr	x10, [x0, #8]
	cmp	w8, #0
	csel	x2, x10, x9, lt
	cmp	x2, #2
	b.eq	LBB1_5
; %bb.1:
	cmp	x2, #1
	b.ne	LBB1_4
; %bb.2:
	ldr	x9, [x0]
	cmp	w8, #0
	csel	x8, x9, x0, lt
	ldrb	w8, [x8]
	cmp	w8, #48
	b.hs	LBB1_4
; %bb.3:
	mov	x9, #189115999977472            ; =0xac0000000000
	lsr	x8, x9, x8
	and	w0, w8, #0x1
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB1_4:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
LBB1_5:
	ldr	x9, [x0]
	cmp	w8, #0
	csel	x0, x9, x0, lt
Lloh2:
	adrp	x1, l_.str.4@PAGE
Lloh3:
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_memcmp
	cmp	w0, #0
	cset	w0, eq
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #352
	stp	x26, x25, [sp, #272]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #288]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #304]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #320]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #336]            ; 16-byte Folded Spill
	add	x29, sp, #336
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	w8, #10805                      ; =0x2a35
	movk	w8, #42, lsl #16
	str	x8, [sp, #72]
	add	x19, sp, #72
	mov	w8, #3                          ; =0x3
	strb	w8, [sp, #95]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #96]
	stur	q0, [x19, #56]
	stur	q0, [x19, #72]
	stur	q0, [x19, #88]
	stur	q0, [x19, #104]
	stur	q0, [x19, #120]
	stur	q0, [x19, #136]
	stur	q0, [x19, #152]
	stur	q0, [x19, #168]
	str	xzr, [sp, #256]
Ltmp0:
	add	x0, sp, #72
	bl	__ZN9Evaluator15generatePostfixEv
Ltmp1:
; %bb.1:
Ltmp3:
	add	x19, x19, #24
	add	x0, sp, #24
	mov	x1, x19
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_
Ltmp4:
; %bb.2:
	ldr	x22, [sp, #64]
	cbz	x22, LBB2_11
; %bb.3:
	ldr	x8, [sp, #56]
	mov	x23, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x23, #49345
	mov	w24, #170                       ; =0xaa
	mov	w25, #24                        ; =0x18
Lloh4:
	adrp	x20, __ZNSt3__14coutE@GOTPAGE
Lloh5:
	ldr	x20, [x20, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh6:
	adrp	x21, l_.str.6@PAGE
Lloh7:
	add	x21, x21, l_.str.6@PAGEOFF
	b	LBB2_5
LBB2_4:                                 ;   in Loop: Header=BB2_5 Depth=1
	subs	x22, x22, #1
	b.eq	LBB2_11
LBB2_5:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #32]
	umulh	x10, x8, x23
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x24, x8
	madd	x8, x8, x25, x9
	ldrb	w9, [x8, #23]
	sxtb	w10, w9
	ldp	x11, x12, [x8]
	cmp	w10, #0
	csel	x1, x11, x8, lt
	csel	x2, x12, x9, lt
Ltmp6:
	mov	x0, x20
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp7:
; %bb.6:                                ;   in Loop: Header=BB2_5 Depth=1
Ltmp8:
	mov	x1, x21
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp9:
; %bb.7:                                ;   in Loop: Header=BB2_5 Depth=1
	ldr	x9, [sp, #32]
	ldr	x8, [sp, #56]
	umulh	x10, x8, x23
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x10, x10, x24, x8
	madd	x9, x10, x25, x9
	ldrsb	w10, [x9, #23]
	tbnz	w10, #31, LBB2_9
; %bb.8:                                ;   in Loop: Header=BB2_5 Depth=1
	ldr	x9, [sp, #64]
	sub	x9, x9, #1
	add	x8, x8, #1
	stp	x8, x9, [sp, #56]
	cmp	x8, #340
	b.lo	LBB2_4
	b	LBB2_10
LBB2_9:                                 ;   in Loop: Header=BB2_5 Depth=1
	ldr	x0, [x9]
	bl	__ZdlPv
	ldp	x8, x9, [sp, #56]
	sub	x9, x9, #1
	add	x8, x8, #1
	stp	x8, x9, [sp, #56]
	cmp	x8, #340
	b.lo	LBB2_4
LBB2_10:                                ;   in Loop: Header=BB2_5 Depth=1
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	bl	__ZdlPv
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #56]
	add	x10, x8, #8
	sub	x8, x9, #170
	str	x10, [sp, #32]
	str	x8, [sp, #56]
	b	LBB2_4
LBB2_11:
Lloh8:
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
Lloh9:
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp11:
	mov	x8, sp
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp12:
; %bb.12:
Ltmp13:
Lloh10:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh11:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	mov	x0, sp
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp14:
; %bb.13:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp15:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp16:
; %bb.14:
	mov	x20, x0
	mov	x0, sp
	bl	__ZNSt3__16localeD1Ev
Ltmp18:
Lloh12:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh13:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp19:
; %bb.15:
Ltmp20:
Lloh14:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh15:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp21:
; %bb.16:
Ltmp22:
	add	x20, sp, #72
	add	x0, sp, #72
	bl	__ZN9Evaluator15evaluatePostfixEv
Ltmp23:
; %bb.17:
	ldrsb	w8, [sp, #263]
	tbnz	w8, #31, LBB2_19
; %bb.18:
	add	x8, x20, #168
	ldr	q0, [x8]
	str	q0, [sp]
	ldr	x8, [x8, #16]
	str	x8, [sp, #16]
	b	LBB2_20
LBB2_19:
	ldp	x1, x2, [sp, #240]
Ltmp25:
	mov	x0, sp
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp26:
LBB2_20:
	ldrb	w8, [sp, #23]
	sxtb	w9, w8
	ldp	x10, x11, [sp]
	cmp	w9, #0
	mov	x9, sp
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp28:
Lloh16:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh17:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp29:
; %bb.21:
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp30:
	sub	x8, x29, #72
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp31:
; %bb.22:
Ltmp32:
Lloh18:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh19:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	sub	x0, x29, #72
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp33:
; %bb.23:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp34:
	mov	w1, #10                         ; =0xa
	blr	x8
Ltmp35:
; %bb.24:
	mov	x21, x0
	sub	x0, x29, #72
	bl	__ZNSt3__16localeD1Ev
Ltmp37:
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp38:
; %bb.25:
Ltmp39:
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp40:
; %bb.26:
	ldrsb	w8, [sp, #23]
	tbnz	w8, #31, LBB2_31
; %bb.27:
	add	x0, sp, #24
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	ldrsb	w8, [sp, #263]
	tbnz	w8, #31, LBB2_32
LBB2_28:
	add	x20, sp, #72
	add	x0, x20, #120
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	add	x0, x20, #72
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	mov	x0, x19
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	ldrsb	w8, [sp, #95]
	tbz	w8, #31, LBB2_30
; %bb.29:
	ldr	x0, [sp, #72]
	bl	__ZdlPv
LBB2_30:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #336]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #320]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #304]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #288]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #272]            ; 16-byte Folded Reload
	add	sp, sp, #352
	ret
LBB2_31:
	ldr	x0, [sp]
	bl	__ZdlPv
	add	x0, sp, #24
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	ldrsb	w8, [sp, #263]
	tbz	w8, #31, LBB2_28
LBB2_32:
	ldr	x0, [sp, #240]
	bl	__ZdlPv
	b	LBB2_28
LBB2_33:
Ltmp27:
	b	LBB2_42
LBB2_34:
Ltmp5:
	mov	x19, x0
	add	x0, sp, #72
	bl	__ZN9EvaluatorD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_35:
Ltmp2:
	mov	x19, x0
	add	x0, sp, #72
	bl	__ZN9EvaluatorD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_36:
Ltmp36:
	mov	x19, x0
	sub	x0, x29, #72
	bl	__ZNSt3__16localeD1Ev
	b	LBB2_39
LBB2_37:
Ltmp17:
	mov	x19, x0
	mov	x0, sp
	bl	__ZNSt3__16localeD1Ev
	add	x0, sp, #24
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	add	x0, sp, #72
	bl	__ZN9EvaluatorD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_38:
Ltmp41:
	mov	x19, x0
LBB2_39:
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB2_44
; %bb.40:
	ldr	x0, [sp]
	bl	__ZdlPv
	add	x0, sp, #24
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	add	x0, sp, #72
	bl	__ZN9EvaluatorD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_41:
Ltmp24:
LBB2_42:
	mov	x19, x0
	add	x0, sp, #24
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	add	x0, sp, #72
	bl	__ZN9EvaluatorD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_43:
Ltmp10:
	mov	x19, x0
LBB2_44:
	add	x0, sp, #24
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	add	x0, sp, #72
	bl	__ZN9EvaluatorD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh16, Lloh17
	.loh AdrpLdrGot	Lloh18, Lloh19
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp9-Ltmp6                    ;   Call between Ltmp6 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin0            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp12-Ltmp11                  ;   Call between Ltmp11 and Ltmp12
	.uleb128 Ltmp24-Lfunc_begin0            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp16-Ltmp13                  ;   Call between Ltmp13 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp23-Ltmp18                  ;   Call between Ltmp18 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin0            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp26-Ltmp25                  ;   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin0            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp31-Ltmp28                  ;   Call between Ltmp28 and Ltmp31
	.uleb128 Ltmp41-Lfunc_begin0            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp35-Ltmp32                  ;   Call between Ltmp32 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin0            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp40-Ltmp37                  ;   Call between Ltmp37 and Ltmp40
	.uleb128 Ltmp41-Lfunc_begin0            ;     jumps to Ltmp41
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Lfunc_end0-Ltmp40              ;   Call between Ltmp40 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN9Evaluator15generatePostfixEv ; -- Begin function _ZN9Evaluator15generatePostfixEv
	.weak_def_can_be_hidden	__ZN9Evaluator15generatePostfixEv
	.p2align	2
__ZN9Evaluator15generatePostfixEv:      ; @_ZN9Evaluator15generatePostfixEv
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #144
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x0
	mov	w28, #0                         ; =0x0
	add	x20, x0, #24
	add	x8, x0, #72
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	w21, #1                         ; =0x1
	mov	w24, #10794                     ; =0x2a2a
	mov	x25, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x25, #49345
	mov	w26, #170                       ; =0xaa
	mov	w27, #24                        ; =0x18
Lloh20:
	adrp	x23, __DefaultRuneLocale@GOTPAGE
Lloh21:
	ldr	x23, [x23, __DefaultRuneLocale@GOTPAGEOFF]
	b	LBB3_3
LBB3_1:                                 ;   in Loop: Header=BB3_3 Depth=1
	str	w21, [sp, #16]
	add	x1, sp, #16
	add	x2, sp, #47
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJiRcEEERS6_DpOT_
LBB3_2:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	w28, w28, #1
LBB3_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_25 Depth 2
                                        ;     Child Loop BB3_15 Depth 2
                                        ;     Child Loop BB3_94 Depth 2
                                        ;     Child Loop BB3_67 Depth 2
	ldrsb	w9, [x19, #23]
	and	x8, x9, #0xff
	tbnz	w9, #31, LBB3_5
; %bb.4:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x11, x8
	sxtw	x10, w28
	cmp	x8, x10
	b.hi	LBB3_6
	b	LBB3_115
LBB3_5:                                 ;   in Loop: Header=BB3_3 Depth=1
	ldr	x11, [x19, #8]
	sxtw	x10, w28
	cmp	x11, x10
	b.ls	LBB3_115
LBB3_6:                                 ;   in Loop: Header=BB3_3 Depth=1
	mov	x11, x19
	tbnz	w9, #31, LBB3_8
; %bb.7:                                ;   in Loop: Header=BB3_3 Depth=1
	ldrsb	w0, [x11, x10]
	strb	w0, [sp, #47]
	tbz	w0, #31, LBB3_9
	b	LBB3_10
LBB3_8:                                 ;   in Loop: Header=BB3_3 Depth=1
	ldr	x11, [x19]
	ldrsb	w0, [x11, x10]
	strb	w0, [sp, #47]
	tbnz	w0, #31, LBB3_10
LBB3_9:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	x11, x23, w0, uxtw #2
	ldr	w11, [x11, #60]
	tbnz	w11, #10, LBB3_22
LBB3_10:                                ;   in Loop: Header=BB3_3 Depth=1
	cmp	w0, #40
	b.eq	LBB3_1
; %bb.11:                               ;   in Loop: Header=BB3_3 Depth=1
	and	w11, w0, #0xff
	cmp	w11, #42
	b.eq	LBB3_54
; %bb.12:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	w11, #41
	b.ne	LBB3_56
; %bb.13:                               ;   in Loop: Header=BB3_3 Depth=1
	ldr	x8, [x19, #112]
	cbnz	x8, LBB3_15
	b	LBB3_2
LBB3_14:                                ;   in Loop: Header=BB3_15 Depth=2
	cbz	x8, LBB3_2
LBB3_15:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x9, [x19, #104]
	sub	x10, x8, #1
	add	x12, x10, x9
	ldr	x11, [x19, #80]
	umulh	x13, x12, x25
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x26, x12
	madd	x1, x12, x27, x14
	ldrsb	w12, [x1, #23]
	tbnz	w12, #31, LBB3_17
; %bb.16:                               ;   in Loop: Header=BB3_15 Depth=2
	ldrb	w12, [x1]
	cmp	w12, #40
	b.ne	LBB3_18
	b	LBB3_113
LBB3_17:                                ;   in Loop: Header=BB3_15 Depth=2
	ldr	x0, [x1]
	ldrb	w8, [x0]
	cmp	w8, #40
	b.eq	LBB3_112
LBB3_18:                                ;   in Loop: Header=BB3_15 Depth=2
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
	ldp	x10, x9, [x19, #104]
	sub	x8, x9, #1
	add	x12, x8, x10
	ldr	x11, [x19, #80]
	umulh	x13, x12, x25
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x26, x12
	madd	x12, x12, x27, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB3_20
; %bb.19:                               ;   in Loop: Header=BB3_15 Depth=2
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #80]
	ldp	x10, x9, [x19, #104]
	sub	x8, x9, #1
LBB3_20:                                ;   in Loop: Header=BB3_15 Depth=2
	ldr	x12, [x19, #88]
	subs	x11, x12, x11
	asr	x11, x11, #3
	mov	x13, #-1                        ; =0xffffffffffffffff
	madd	x11, x11, x26, x13
	str	x8, [x19, #112]
	csel	x11, xzr, x11, eq
	add	x9, x10, x9
	sub	x9, x11, x9
	add	x9, x9, #1
	cmp	x9, #340
	b.lo	LBB3_14
; %bb.21:                               ;   in Loop: Header=BB3_15 Depth=2
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #88]
	sub	x8, x8, #8
	str	x8, [x19, #88]
	ldr	x8, [x19, #112]
	b	LBB3_14
LBB3_22:                                ;   in Loop: Header=BB3_3 Depth=1
	strb	w21, [sp, #39]
	strb	w0, [sp, #16]
	add	x27, x10, #1
	strb	wzr, [sp, #17]
	b	LBB3_25
LBB3_23:                                ;   in Loop: Header=BB3_25 Depth=2
	and	x22, x8, #0xff
	add	w8, w9, #1
	and	w8, w8, #0x7f
	strb	w8, [sp, #39]
	add	x24, sp, #16
LBB3_24:                                ;   in Loop: Header=BB3_25 Depth=2
	add	x8, x24, x22
	strb	w21, [x8]
	strb	wzr, [x8, #1]
	ldrb	w8, [x19, #23]
	add	w28, w28, #1
	add	x27, x27, #1
LBB3_25:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	mov	x9, x8
	tbz	w8, #7, LBB3_27
; %bb.26:                               ;   in Loop: Header=BB3_25 Depth=2
	ldr	x9, [x19, #8]
LBB3_27:                                ;   in Loop: Header=BB3_25 Depth=2
	cmp	x9, x27
	b.ls	LBB3_51
; %bb.28:                               ;   in Loop: Header=BB3_25 Depth=2
	sxtb	w8, w8
	mov	x9, x19
	tbz	w8, #31, LBB3_30
; %bb.29:                               ;   in Loop: Header=BB3_25 Depth=2
	ldr	x9, [x19]
LBB3_30:                                ;   in Loop: Header=BB3_25 Depth=2
	ldrsb	w9, [x9, x27]
	tbnz	w9, #31, LBB3_51
; %bb.31:                               ;   in Loop: Header=BB3_25 Depth=2
	and	x9, x9, #0xff
	add	x9, x23, x9, lsl #2
	ldr	w9, [x9, #60]
	tbz	w9, #10, LBB3_51
; %bb.32:                               ;   in Loop: Header=BB3_25 Depth=2
	mov	x9, x19
	tbnz	w8, #31, LBB3_36
; %bb.33:                               ;   in Loop: Header=BB3_25 Depth=2
	ldrb	w21, [x9, x27]
	ldrsb	w8, [sp, #39]
	tbnz	w8, #31, LBB3_37
LBB3_34:                                ;   in Loop: Header=BB3_25 Depth=2
	and	w9, w8, #0xff
	cmp	w9, #22
	b.ne	LBB3_23
; %bb.35:                               ;   in Loop: Header=BB3_25 Depth=2
	add	x23, sp, #16
	mov	w22, #22                        ; =0x16
	b	LBB3_40
LBB3_36:                                ;   in Loop: Header=BB3_25 Depth=2
	ldr	x9, [x19]
	ldrb	w21, [x9, x27]
	ldrsb	w8, [sp, #39]
	tbz	w8, #31, LBB3_34
LBB3_37:                                ;   in Loop: Header=BB3_25 Depth=2
	ldp	x8, x9, [sp, #24]
	and	x9, x9, #0x7fffffffffffffff
	sub	x22, x9, #1
	cmp	x8, x22
	b.ne	LBB3_43
; %bb.38:                               ;   in Loop: Header=BB3_25 Depth=2
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x9, x8
	b.eq	LBB3_123
; %bb.39:                               ;   in Loop: Header=BB3_25 Depth=2
	ldr	x23, [sp, #16]
	mov	x8, #-14                        ; =0xfffffffffffffff2
	movk	x8, #16383, lsl #48
	cmp	x22, x8
	b.hi	LBB3_44
LBB3_40:                                ;   in Loop: Header=BB3_25 Depth=2
	add	x8, x22, #1
	lsl	x9, x22, #1
	cmp	x8, x9
	csinc	x8, x9, x22, ls
	cmp	x8, #23
	b.hs	LBB3_42
; %bb.41:                               ;   in Loop: Header=BB3_25 Depth=2
	mov	w25, #23                        ; =0x17
	b	LBB3_45
LBB3_42:                                ;   in Loop: Header=BB3_25 Depth=2
	and	x9, x8, #0x7ffffffffffffff8
	add	x9, x9, #8
	orr	x8, x8, #0x7
	cmp	x8, #23
	csel	x8, x9, x8, eq
	add	x25, x8, #1
	b	LBB3_45
LBB3_43:                                ;   in Loop: Header=BB3_25 Depth=2
	ldr	x24, [sp, #16]
	mov	x22, x8
	b	LBB3_50
LBB3_44:                                ;   in Loop: Header=BB3_25 Depth=2
	mov	x25, #-9                        ; =0xfffffffffffffff7
	movk	x25, #32767, lsl #48
LBB3_45:                                ;   in Loop: Header=BB3_25 Depth=2
Ltmp42:
	mov	x0, x25
	bl	__Znwm
Ltmp43:
; %bb.46:                               ;   in Loop: Header=BB3_25 Depth=2
	mov	x24, x0
	cbz	x22, LBB3_48
; %bb.47:                               ;   in Loop: Header=BB3_25 Depth=2
	mov	x0, x24
	mov	x1, x23
	mov	x2, x22
	bl	_memmove
	cmp	x22, #22
	b.eq	LBB3_49
LBB3_48:                                ;   in Loop: Header=BB3_25 Depth=2
	mov	x0, x23
	bl	__ZdlPv
LBB3_49:                                ;   in Loop: Header=BB3_25 Depth=2
	orr	x8, x25, #0x8000000000000000
	str	x24, [sp, #16]
	str	x8, [sp, #32]
Lloh22:
	adrp	x23, __DefaultRuneLocale@GOTPAGE
Lloh23:
	ldr	x23, [x23, __DefaultRuneLocale@GOTPAGEOFF]
LBB3_50:                                ;   in Loop: Header=BB3_25 Depth=2
	add	x8, x22, #1
	str	x8, [sp, #24]
	b	LBB3_24
LBB3_51:                                ;   in Loop: Header=BB3_3 Depth=1
Ltmp48:
	add	x1, sp, #16
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
Ltmp49:
; %bb.52:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrsb	w8, [sp, #39]
	mov	w21, #1                         ; =0x1
	mov	w24, #10794                     ; =0x2a2a
	mov	x25, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x25, #49345
	mov	w27, #24                        ; =0x18
	tbz	w8, #31, LBB3_2
; %bb.53:                               ;   in Loop: Header=BB3_3 Depth=1
	ldr	x0, [sp, #16]
	bl	__ZdlPv
	add	w28, w28, #1
	b	LBB3_3
LBB3_54:                                ;   in Loop: Header=BB3_3 Depth=1
	tbnz	w9, #31, LBB3_58
; %bb.55:                               ;   in Loop: Header=BB3_3 Depth=1
	add	x22, x10, #1
	cmp	x8, x22
	b.hi	LBB3_59
	b	LBB3_91
LBB3_56:                                ;   in Loop: Header=BB3_3 Depth=1
	tbz	w0, #31, LBB3_91
; %bb.57:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	w1, #16384                      ; =0x4000
	bl	___maskrune
	cbnz	w0, LBB3_2
	b	LBB3_92
LBB3_58:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x8, [x19, #8]
	add	x22, x10, #1
	cmp	x8, x22
	b.ls	LBB3_91
LBB3_59:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, x19
	tbnz	w9, #31, LBB3_90
; %bb.60:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x8, x22]
	cmp	w8, #42
	b.ne	LBB3_91
LBB3_61:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	w8, #2                          ; =0x2
	strb	w8, [sp, #39]
	strh	w24, [sp, #16]
	strb	wzr, [sp, #18]
	ldr	x8, [x19, #112]
	add	x23, sp, #16
	cbnz	x8, LBB3_67
LBB3_62:                                ;   in Loop: Header=BB3_3 Depth=1
Ltmp54:
	add	x1, sp, #16
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
Ltmp55:
; %bb.63:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrsb	w8, [sp, #39]
Lloh24:
	adrp	x23, __DefaultRuneLocale@GOTPAGE
Lloh25:
	ldr	x23, [x23, __DefaultRuneLocale@GOTPAGEOFF]
	tbz	w8, #31, LBB3_65
; %bb.64:                               ;   in Loop: Header=BB3_3 Depth=1
	ldr	x0, [sp, #16]
	bl	__ZdlPv
LBB3_65:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x28, x22
	add	w28, w28, #1
	b	LBB3_3
LBB3_66:                                ;   in Loop: Header=BB3_67 Depth=2
	cbz	x8, LBB3_62
LBB3_67:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x9, [x19, #104]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #80]
	umulh	x10, x8, x25
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x26, x8
	madd	x1, x8, x27, x9
	ldrb	w9, [x1, #23]
	sxtb	w8, w9
	ldr	x10, [x1, #8]
	cmp	w8, #0
	csel	x9, x10, x9, lt
	cmp	x9, #2
	b.eq	LBB3_73
; %bb.68:                               ;   in Loop: Header=BB3_67 Depth=2
	cmp	x9, #1
	b.ne	LBB3_74
; %bb.69:                               ;   in Loop: Header=BB3_67 Depth=2
	ldr	x9, [x1]
	cmp	w8, #0
	csel	x8, x9, x1, lt
	ldrb	w9, [x8]
	cmp	w9, #42
	b.eq	LBB3_75
; %bb.70:                               ;   in Loop: Header=BB3_67 Depth=2
	mov	w8, #1                          ; =0x1
	cmp	w9, #43
	b.eq	LBB3_76
; %bb.71:                               ;   in Loop: Header=BB3_67 Depth=2
	cmp	w9, #45
	b.eq	LBB3_76
; %bb.72:                               ;   in Loop: Header=BB3_67 Depth=2
	cmp	w9, #47
	cset	w8, eq
	lsl	w8, w8, #1
	b	LBB3_76
LBB3_73:                                ;   in Loop: Header=BB3_67 Depth=2
	ldr	x9, [x1]
	cmp	w8, #0
	csel	x8, x9, x1, lt
	ldrh	w8, [x8]
	rev	w8, w8
	cmp	w24, w8, lsr #16
	mov	w8, #3                          ; =0x3
	csel	w8, w8, wzr, eq
	b	LBB3_76
LBB3_74:                                ;   in Loop: Header=BB3_67 Depth=2
	mov	w8, #0                          ; =0x0
	b	LBB3_76
LBB3_75:                                ;   in Loop: Header=BB3_67 Depth=2
	mov	w8, #2                          ; =0x2
LBB3_76:                                ;   in Loop: Header=BB3_67 Depth=2
	ldrb	w10, [sp, #39]
	sxtb	w9, w10
	ldr	x11, [sp, #24]
	cmp	w9, #0
	csel	x10, x11, x10, lt
	cmp	x10, #2
	b.eq	LBB3_81
; %bb.77:                               ;   in Loop: Header=BB3_67 Depth=2
	cmp	x10, #1
	b.ne	LBB3_82
; %bb.78:                               ;   in Loop: Header=BB3_67 Depth=2
	ldr	x10, [sp, #16]
	cmp	w9, #0
	csel	x9, x10, x23, lt
	ldrb	w10, [x9]
	cmp	w10, #42
	b.eq	LBB3_89
; %bb.79:                               ;   in Loop: Header=BB3_67 Depth=2
	mov	w9, #1                          ; =0x1
	cmp	w10, #43
	b.eq	LBB3_83
; %bb.80:                               ;   in Loop: Header=BB3_67 Depth=2
	cmp	w10, #47
	cset	w11, eq
	lsl	w11, w11, #1
	cmp	w10, #45
	csel	w9, w9, w11, eq
	cmp	w8, w9
	b.hs	LBB3_84
	b	LBB3_62
LBB3_81:                                ;   in Loop: Header=BB3_67 Depth=2
	ldr	x10, [sp, #16]
	cmp	w9, #0
	csel	x9, x10, x23, lt
	ldrh	w9, [x9]
	rev	w9, w9
	cmp	w24, w9, lsr #16
	mov	w9, #3                          ; =0x3
	csel	w9, w9, wzr, eq
	cmp	w8, w9
	b.hs	LBB3_84
	b	LBB3_62
LBB3_82:                                ;   in Loop: Header=BB3_67 Depth=2
	mov	w9, #0                          ; =0x0
LBB3_83:                                ;   in Loop: Header=BB3_67 Depth=2
	cmp	w8, w9
	b.lo	LBB3_62
LBB3_84:                                ;   in Loop: Header=BB3_67 Depth=2
Ltmp51:
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
Ltmp52:
; %bb.85:                               ;   in Loop: Header=BB3_67 Depth=2
	ldp	x10, x9, [x19, #104]
	sub	x8, x9, #1
	add	x12, x8, x10
	ldr	x11, [x19, #80]
	umulh	x13, x12, x25
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x26, x12
	madd	x12, x12, x27, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB3_87
; %bb.86:                               ;   in Loop: Header=BB3_67 Depth=2
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #80]
	ldp	x10, x9, [x19, #104]
	sub	x8, x9, #1
LBB3_87:                                ;   in Loop: Header=BB3_67 Depth=2
	ldr	x12, [x19, #88]
	subs	x11, x12, x11
	asr	x11, x11, #3
	mov	x13, #-1                        ; =0xffffffffffffffff
	madd	x11, x11, x26, x13
	str	x8, [x19, #112]
	csel	x11, xzr, x11, eq
	add	x9, x10, x9
	sub	x9, x11, x9
	add	x9, x9, #1
	cmp	x9, #340
	b.lo	LBB3_66
; %bb.88:                               ;   in Loop: Header=BB3_67 Depth=2
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #88]
	sub	x8, x8, #8
	str	x8, [x19, #88]
	ldr	x8, [x19, #112]
	b	LBB3_66
LBB3_89:                                ;   in Loop: Header=BB3_67 Depth=2
	mov	w9, #2                          ; =0x2
	cmp	w8, w9
	b.hs	LBB3_84
	b	LBB3_62
LBB3_90:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x8, [x19]
	ldrb	w8, [x8, x22]
	cmp	w8, #42
	b.eq	LBB3_61
LBB3_91:                                ;   in Loop: Header=BB3_3 Depth=1
	add	x8, x23, w0, uxtw #2
	ldr	w8, [x8, #60]
	and	w0, w8, #0x4000
	cbnz	w0, LBB3_2
LBB3_92:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x8, [x19, #112]
	cbnz	x8, LBB3_94
	b	LBB3_1
LBB3_93:                                ;   in Loop: Header=BB3_94 Depth=2
	cbz	x8, LBB3_1
LBB3_94:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x9, [x19, #104]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #80]
	umulh	x10, x8, x25
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x26, x8
	madd	x1, x8, x27, x9
	ldrb	w9, [x1, #23]
	sxtb	w8, w9
	ldr	x10, [x1, #8]
	cmp	w8, #0
	csel	x9, x10, x9, lt
	cmp	x9, #2
	b.eq	LBB3_100
; %bb.95:                               ;   in Loop: Header=BB3_94 Depth=2
	cmp	x9, #1
	b.ne	LBB3_101
; %bb.96:                               ;   in Loop: Header=BB3_94 Depth=2
	ldr	x9, [x1]
	cmp	w8, #0
	csel	x8, x9, x1, lt
	ldrb	w9, [x8]
	cmp	w9, #42
	b.eq	LBB3_110
; %bb.97:                               ;   in Loop: Header=BB3_94 Depth=2
	mov	w8, #1                          ; =0x1
	cmp	w9, #43
	b.eq	LBB3_102
; %bb.98:                               ;   in Loop: Header=BB3_94 Depth=2
	cmp	w9, #45
	b.eq	LBB3_102
; %bb.99:                               ;   in Loop: Header=BB3_94 Depth=2
	cmp	w9, #47
	cset	w8, eq
	lsl	w8, w8, #1
	ldrb	w10, [sp, #47]
	cmp	w10, #42
	b.ne	LBB3_103
	b	LBB3_111
LBB3_100:                               ;   in Loop: Header=BB3_94 Depth=2
	ldr	x9, [x1]
	cmp	w8, #0
	csel	x8, x9, x1, lt
	ldrh	w8, [x8]
	rev	w8, w8
	cmp	w24, w8, lsr #16
	mov	w8, #3                          ; =0x3
	csel	w8, w8, wzr, eq
	ldrb	w10, [sp, #47]
	cmp	w10, #42
	b.ne	LBB3_103
	b	LBB3_111
LBB3_101:                               ;   in Loop: Header=BB3_94 Depth=2
	mov	w8, #0                          ; =0x0
LBB3_102:                               ;   in Loop: Header=BB3_94 Depth=2
	ldrb	w10, [sp, #47]
	cmp	w10, #42
	b.eq	LBB3_111
LBB3_103:                               ;   in Loop: Header=BB3_94 Depth=2
	mov	w9, #1                          ; =0x1
	cmp	w10, #43
	b.eq	LBB3_105
; %bb.104:                              ;   in Loop: Header=BB3_94 Depth=2
	cmp	w10, #47
	cset	w11, eq
	lsl	w11, w11, #1
	cmp	w10, #45
	csel	w9, w9, w11, eq
LBB3_105:                               ;   in Loop: Header=BB3_94 Depth=2
	cmp	w8, w9
	b.lo	LBB3_1
LBB3_106:                               ;   in Loop: Header=BB3_94 Depth=2
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
	ldp	x10, x9, [x19, #104]
	sub	x8, x9, #1
	add	x12, x8, x10
	ldr	x11, [x19, #80]
	umulh	x13, x12, x25
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x26, x12
	madd	x12, x12, x27, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB3_108
; %bb.107:                              ;   in Loop: Header=BB3_94 Depth=2
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #80]
	ldp	x10, x9, [x19, #104]
	sub	x8, x9, #1
LBB3_108:                               ;   in Loop: Header=BB3_94 Depth=2
	ldr	x12, [x19, #88]
	subs	x11, x12, x11
	asr	x11, x11, #3
	mov	x13, #-1                        ; =0xffffffffffffffff
	madd	x11, x11, x26, x13
	str	x8, [x19, #112]
	csel	x11, xzr, x11, eq
	add	x9, x10, x9
	sub	x9, x11, x9
	add	x9, x9, #1
	cmp	x9, #340
	b.lo	LBB3_93
; %bb.109:                              ;   in Loop: Header=BB3_94 Depth=2
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #88]
	sub	x8, x8, #8
	str	x8, [x19, #88]
	ldr	x8, [x19, #112]
	b	LBB3_93
LBB3_110:                               ;   in Loop: Header=BB3_94 Depth=2
	mov	w8, #2                          ; =0x2
	ldrb	w10, [sp, #47]
	cmp	w10, #42
	b.ne	LBB3_103
LBB3_111:                               ;   in Loop: Header=BB3_94 Depth=2
	mov	w9, #2                          ; =0x2
	cmp	w8, w9
	b.hs	LBB3_106
	b	LBB3_1
LBB3_112:                               ;   in Loop: Header=BB3_3 Depth=1
	bl	__ZdlPv
	ldr	x11, [x19, #80]
	ldp	x9, x8, [x19, #104]
	sub	x10, x8, #1
LBB3_113:                               ;   in Loop: Header=BB3_3 Depth=1
	ldr	x12, [x19, #88]
	subs	x11, x12, x11
	asr	x11, x11, #3
	mov	x13, #-1                        ; =0xffffffffffffffff
	madd	x11, x11, x26, x13
	str	x10, [x19, #112]
	csel	x10, xzr, x11, eq
	add	x8, x9, x8
	sub	x8, x10, x8
	add	x8, x8, #1
	cmp	x8, #340
	b.lo	LBB3_2
; %bb.114:                              ;   in Loop: Header=BB3_3 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #88]
	sub	x8, x8, #8
	str	x8, [x19, #88]
	add	w28, w28, #1
	b	LBB3_3
LBB3_115:
	ldr	x8, [x19, #112]
	cbz	x8, LBB3_122
; %bb.116:
	mov	x21, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x21, #49345
	mov	w22, #170                       ; =0xaa
	mov	w23, #24                        ; =0x18
	mov	x24, #-1                        ; =0xffffffffffffffff
	b	LBB3_118
LBB3_117:                               ;   in Loop: Header=BB3_118 Depth=1
	cbz	x8, LBB3_122
LBB3_118:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [x19, #104]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #80]
	umulh	x10, x8, x21
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x22, x8
	madd	x1, x8, x23, x9
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
	ldp	x10, x9, [x19, #104]
	sub	x8, x9, #1
	add	x12, x8, x10
	ldr	x11, [x19, #80]
	umulh	x13, x12, x21
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x22, x12
	madd	x12, x12, x23, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB3_120
; %bb.119:                              ;   in Loop: Header=BB3_118 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #80]
	ldp	x10, x9, [x19, #104]
	sub	x8, x9, #1
LBB3_120:                               ;   in Loop: Header=BB3_118 Depth=1
	ldr	x12, [x19, #88]
	subs	x11, x12, x11
	asr	x11, x11, #3
	madd	x11, x11, x22, x24
	str	x8, [x19, #112]
	csel	x11, xzr, x11, eq
	add	x9, x10, x9
	sub	x9, x11, x9
	add	x9, x9, #1
	cmp	x9, #340
	b.lo	LBB3_117
; %bb.121:                              ;   in Loop: Header=BB3_118 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #88]
	sub	x8, x8, #8
	str	x8, [x19, #88]
	ldr	x8, [x19, #112]
	b	LBB3_117
LBB3_122:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB3_123:
Ltmp45:
	add	x0, sp, #16
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
Ltmp46:
; %bb.124:
	brk	#0x1
LBB3_125:
Ltmp56:
	b	LBB3_130
LBB3_126:
Ltmp50:
	b	LBB3_130
LBB3_127:
Ltmp53:
	b	LBB3_130
LBB3_128:
Ltmp47:
	b	LBB3_130
LBB3_129:
Ltmp44:
LBB3_130:
	mov	x19, x0
	ldrsb	w8, [sp, #39]
	tbz	w8, #31, LBB3_132
; %bb.131:
	ldr	x0, [sp, #16]
	bl	__ZdlPv
LBB3_132:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh20, Lloh21
	.loh AdrpLdrGot	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh24, Lloh25
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp42-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp42
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp43-Ltmp42                  ;   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin1            ;     jumps to Ltmp44
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp43-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp48-Ltmp43                  ;   Call between Ltmp43 and Ltmp48
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp49-Ltmp48                  ;   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin1            ;     jumps to Ltmp50
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp54-Ltmp49                  ;   Call between Ltmp49 and Ltmp54
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp54-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Ltmp55-Ltmp54                  ;   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin1            ;     jumps to Ltmp56
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin1            ; >> Call Site 7 <<
	.uleb128 Ltmp52-Ltmp51                  ;   Call between Ltmp51 and Ltmp52
	.uleb128 Ltmp53-Lfunc_begin1            ;     jumps to Ltmp53
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp52-Lfunc_begin1            ; >> Call Site 8 <<
	.uleb128 Ltmp45-Ltmp52                  ;   Call between Ltmp52 and Ltmp45
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin1            ; >> Call Site 9 <<
	.uleb128 Ltmp46-Ltmp45                  ;   Call between Ltmp45 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin1            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin1            ; >> Call Site 10 <<
	.uleb128 Lfunc_end1-Ltmp46              ;   Call between Ltmp46 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN9Evaluator15evaluatePostfixEv ; -- Begin function _ZN9Evaluator15evaluatePostfixEv
	.weak_def_can_be_hidden	__ZN9Evaluator15evaluatePostfixEv
	.p2align	2
__ZN9Evaluator15evaluatePostfixEv:      ; @_ZN9Evaluator15evaluatePostfixEv
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #160
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x0
	ldr	x24, [x0, #64]
	cbz	x24, LBB4_99
; %bb.1:
	mov	x25, #0                         ; =0x0
	add	x20, x19, #120
	mov	x26, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x26, #49345
	mov	w27, #170                       ; =0xaa
	mov	w28, #24                        ; =0x18
	mov	w22, #10794                     ; =0x2a2a
	mov	w23, #1                         ; =0x1
Lloh26:
	adrp	x21, __DefaultRuneLocale@GOTPAGE
Lloh27:
	ldr	x21, [x21, __DefaultRuneLocale@GOTPAGEOFF]
	str	x20, [sp]                       ; 8-byte Folded Spill
	b	LBB4_4
LBB4_2:                                 ;   in Loop: Header=BB4_4 Depth=1
	sxtb	w14, w13
	ldr	x8, [x1]
	cmp	w14, #0
	csel	x14, x8, x1, lt
	ldrh	w14, [x14]
	cmp	w14, w22
	b.eq	LBB4_16
LBB4_3:                                 ;   in Loop: Header=BB4_4 Depth=1
	add	x25, x25, #1
	cmp	x25, x24
	b.eq	LBB4_99
LBB4_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_9 Depth 2
	ldr	x10, [x19, #32]
	ldr	x9, [x19, #56]
	umulh	x8, x9, x26
	lsr	x11, x8, #7
	ldr	x8, [x10, x11, lsl #3]
	msub	x12, x11, x27, x9
	madd	x1, x12, x28, x8
	ldrsb	w8, [x1, #23]
	and	x13, x8, #0xff
	tbnz	w8, #31, LBB4_7
; %bb.5:                                ;   in Loop: Header=BB4_4 Depth=1
	cbz	w13, LBB4_13
; %bb.6:                                ;   in Loop: Header=BB4_4 Depth=1
	mov	x8, x13
	mov	x14, x1
	b	LBB4_9
LBB4_7:                                 ;   in Loop: Header=BB4_4 Depth=1
	ldr	x8, [x1, #8]
	cbz	x8, LBB4_13
; %bb.8:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x14, [x1]
LBB4_9:                                 ;   Parent Loop BB4_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w15, [x14]
	add	x15, x21, x15, lsl #2
	ldr	w15, [x15, #60]
	tbz	w15, #10, LBB4_13
; %bb.10:                               ;   in Loop: Header=BB4_9 Depth=2
	add	x14, x14, #1
	subs	x8, x8, #1
	b.ne	LBB4_9
; %bb.11:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
	ldr	x9, [x19, #32]
	ldr	x8, [x19, #56]
	umulh	x10, x8, x26
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x10, x10, x27, x8
	madd	x9, x10, x28, x9
	ldrsb	w10, [x9, #23]
	tbnz	w10, #31, LBB4_38
; %bb.12:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x9, [x19, #64]
	sub	x9, x9, #1
	add	x8, x8, #1
	stp	x8, x9, [x19, #56]
	cmp	x8, #340
	b.lo	LBB4_3
	b	LBB4_39
LBB4_13:                                ;   in Loop: Header=BB4_4 Depth=1
	sxtb	w8, w13
	ldr	x2, [x1, #8]
	cmp	w8, #0
	csel	x8, x2, x13, lt
	cmp	x8, #2
	b.eq	LBB4_2
; %bb.14:                               ;   in Loop: Header=BB4_4 Depth=1
	cmp	x8, #1
	b.ne	LBB4_3
; %bb.15:                               ;   in Loop: Header=BB4_4 Depth=1
	sxtb	w14, w13
	ldr	x8, [x1]
	cmp	w14, #0
	csel	x14, x8, x1, lt
	ldrb	w14, [x14]
	cmp	w14, #47
	lsl	x14, x23, x14
	mov	x15, #189115999977472           ; =0xac0000000000
	and	x14, x14, x15
	ccmp	x14, #0, #4, ls
	b.eq	LBB4_3
LBB4_16:                                ;   in Loop: Header=BB4_4 Depth=1
	tbnz	w13, #7, LBB4_40
; %bb.17:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	q0, [x1]
	ldr	x8, [x1, #16]
	str	x8, [sp, #48]
	str	q0, [sp, #32]
	ldr	x8, [x10, x11, lsl #3]
	madd	x8, x12, x28, x8
	ldrsb	w10, [x8, #23]
	tbz	w10, #31, LBB4_19
LBB4_18:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x8]
	bl	__ZdlPv
	ldr	x9, [x19, #56]
LBB4_19:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x8, [x19, #64]
	sub	x8, x8, #1
	add	x9, x9, #1
	stp	x9, x8, [x19, #56]
	cmp	x9, #340
	b.lo	LBB4_21
; %bb.20:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x8, [x19, #32]
	ldr	x0, [x8]
	bl	__ZdlPv
	ldr	x8, [x19, #32]
	add	x8, x8, #8
	str	x8, [x19, #32]
	ldr	x8, [x19, #56]
	sub	x8, x8, #170
	str	x8, [x19, #56]
LBB4_21:                                ;   in Loop: Header=BB4_4 Depth=1
	ldrb	w9, [sp, #55]
	sxtb	w8, w9
	ldr	x10, [sp, #40]
	cmp	w8, #0
	csel	x2, x10, x9, lt
	cmp	x2, #2
	b.eq	LBB4_41
; %bb.22:                               ;   in Loop: Header=BB4_4 Depth=1
	cmp	x2, #1
	b.ne	LBB4_97
; %bb.23:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x9, [sp, #32]
	cmp	w8, #0
	add	x8, sp, #32
	csel	x8, x9, x8, lt
	ldrb	w8, [x8]
	sub	w8, w8, #42
	cmp	w8, #5
	b.hi	LBB4_96
; %bb.24:                               ;   in Loop: Header=BB4_4 Depth=1
Lloh28:
	adrp	x11, lJTI4_0@PAGE
Lloh29:
	add	x11, x11, lJTI4_0@PAGEOFF
	adr	x9, LBB4_25
	ldrh	w10, [x11, x8, lsl #1]
	add	x9, x9, x10, lsl #2
	br	x9
LBB4_25:                                ;   in Loop: Header=BB4_4 Depth=1
	ldp	x9, x8, [x19, #152]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #128]
	umulh	x10, x8, x26
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x27, x8
	madd	x0, x8, x28, x9
Ltmp81:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp82:
; %bb.26:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x22, x0
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
	add	x12, x10, x9
	ldr	x8, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x8, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_28
; %bb.27:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x8, [x19, #128]
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
LBB4_28:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x13, x12, x8
	asr	x13, x13, #3
	mov	x20, #-1                        ; =0xffffffffffffffff
	madd	x13, x13, x27, x20
	str	x10, [x19, #160]
	csel	x13, xzr, x13, eq
	add	x11, x9, x11
	sub	x11, x13, x11
	add	x11, x11, #1
	cmp	x11, #340
	b.lo	LBB4_30
; %bb.29:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldp	x8, x9, [x19, #128]
	sub	x9, x9, #8
	str	x9, [x19, #136]
	ldp	x9, x10, [x19, #152]
LBB4_30:                                ;   in Loop: Header=BB4_4 Depth=1
	add	x9, x10, x9
	sub	x9, x9, #1
	umulh	x10, x9, x26
	lsr	x10, x10, #7
	ldr	x8, [x8, x10, lsl #3]
	msub	x9, x10, x27, x9
	madd	x0, x9, x28, x8
Ltmp84:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp85:
; %bb.31:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x23, x0
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
	add	x12, x10, x9
	ldr	x11, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_33
; %bb.32:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #128]
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
LBB4_33:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x11, x12, x11
	asr	x11, x11, #3
	madd	x11, x11, x27, x20
	str	x10, [x19, #160]
	csel	x10, xzr, x11, eq
	add	x8, x9, x8
	sub	x8, x10, x8
	add	x8, x8, #1
	cmp	x8, #340
	b.lo	LBB4_35
; %bb.34:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #136]
	sub	x8, x8, #8
	str	x8, [x19, #136]
LBB4_35:                                ;   in Loop: Header=BB4_4 Depth=1
	mul	w0, w23, w22
Ltmp87:
	add	x8, sp, #8
	bl	__ZNSt3__19to_stringEi
Ltmp88:
; %bb.36:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	q0, [x19, #128]
	mov.d	x9, v0[1]
	fmov	x8, d0
	subs	x9, x9, x8
	asr	x9, x9, #3
	madd	x9, x9, x27, x20
	csel	x10, xzr, x9, eq
	ldp	x9, x11, [x19, #152]
	add	x9, x11, x9
	cmp	x10, x9
	ldr	x20, [sp]                       ; 8-byte Folded Reload
	mov	w22, #10794                     ; =0x2a2a
	mov	w23, #1                         ; =0x1
	b.ne	LBB4_95
; %bb.37:                               ;   in Loop: Header=BB4_4 Depth=1
Ltmp90:
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
Ltmp91:
	b	LBB4_94
LBB4_38:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x9]
	bl	__ZdlPv
	ldp	x8, x9, [x19, #56]
	sub	x9, x9, #1
	add	x8, x8, #1
	stp	x8, x9, [x19, #56]
	cmp	x8, #340
	b.lo	LBB4_3
LBB4_39:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x8, [x19, #32]
	ldr	x0, [x8]
	bl	__ZdlPv
	ldr	x8, [x19, #32]
	add	x8, x8, #8
	str	x8, [x19, #32]
	ldr	x8, [x19, #56]
	sub	x8, x8, #170
	str	x8, [x19, #56]
	b	LBB4_3
LBB4_40:                                ;   in Loop: Header=BB4_4 Depth=1
	add	x0, sp, #32
	mov	x1, x8
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
	ldr	x10, [x19, #32]
	ldr	x9, [x19, #56]
	umulh	x8, x9, x26
	lsr	x11, x8, #7
	msub	x12, x11, x27, x9
	ldr	x8, [x10, x11, lsl #3]
	madd	x8, x12, x28, x8
	ldrsb	w10, [x8, #23]
	tbz	w10, #31, LBB4_19
	b	LBB4_18
LBB4_41:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x9, [sp, #32]
	cmp	w8, #0
	add	x8, sp, #32
	csel	x0, x9, x8, lt
Lloh30:
	adrp	x1, l_.str.4@PAGE
Lloh31:
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_memcmp
	cbnz	w0, LBB4_96
; %bb.42:                               ;   in Loop: Header=BB4_4 Depth=1
	ldp	x9, x8, [x19, #152]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #128]
	umulh	x10, x8, x26
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x27, x8
	madd	x0, x8, x28, x9
Ltmp57:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp58:
; %bb.43:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x22, x0
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
	add	x12, x10, x9
	ldr	x8, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x8, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_45
; %bb.44:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x8, [x19, #128]
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
LBB4_45:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x13, x12, x8
	asr	x13, x13, #3
	mov	x20, #-1                        ; =0xffffffffffffffff
	madd	x13, x13, x27, x20
	str	x10, [x19, #160]
	csel	x13, xzr, x13, eq
	add	x11, x9, x11
	sub	x11, x13, x11
	add	x11, x11, #1
	cmp	x11, #340
	b.lo	LBB4_47
; %bb.46:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldp	x8, x9, [x19, #128]
	sub	x9, x9, #8
	str	x9, [x19, #136]
	ldp	x9, x10, [x19, #152]
LBB4_47:                                ;   in Loop: Header=BB4_4 Depth=1
	add	x9, x10, x9
	sub	x9, x9, #1
	umulh	x10, x9, x26
	lsr	x10, x10, #7
	ldr	x8, [x8, x10, lsl #3]
	msub	x9, x10, x27, x9
	madd	x0, x9, x28, x8
Ltmp60:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp61:
; %bb.48:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x23, x0
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
	add	x12, x10, x9
	ldr	x11, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_50
; %bb.49:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #128]
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
LBB4_50:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x11, x12, x11
	asr	x11, x11, #3
	madd	x11, x11, x27, x20
	str	x10, [x19, #160]
	csel	x10, xzr, x11, eq
	add	x8, x9, x8
	sub	x8, x10, x8
	add	x8, x8, #1
	cmp	x8, #340
	b.lo	LBB4_52
; %bb.51:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #136]
	sub	x8, x8, #8
	str	x8, [x19, #136]
LBB4_52:                                ;   in Loop: Header=BB4_4 Depth=1
	scvtf	d0, w23
	scvtf	d1, w22
	bl	_pow
Ltmp63:
	add	x8, sp, #8
	bl	__ZNSt3__19to_stringEd
Ltmp64:
; %bb.53:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	q0, [x19, #128]
	mov.d	x9, v0[1]
	fmov	x8, d0
	subs	x9, x9, x8
	asr	x9, x9, #3
	madd	x9, x9, x27, x20
	csel	x10, xzr, x9, eq
	ldp	x9, x11, [x19, #152]
	add	x9, x11, x9
	cmp	x10, x9
	ldr	x20, [sp]                       ; 8-byte Folded Reload
	mov	w22, #10794                     ; =0x2a2a
	mov	w23, #1                         ; =0x1
	b.ne	LBB4_95
; %bb.54:                               ;   in Loop: Header=BB4_4 Depth=1
Ltmp66:
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
Ltmp67:
	b	LBB4_94
LBB4_55:                                ;   in Loop: Header=BB4_4 Depth=1
	ldp	x9, x8, [x19, #152]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #128]
	umulh	x10, x8, x26
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x27, x8
	madd	x0, x8, x28, x9
Ltmp105:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp106:
; %bb.56:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x22, x0
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
	add	x12, x10, x9
	ldr	x8, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x8, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_58
; %bb.57:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x8, [x19, #128]
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
LBB4_58:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x13, x12, x8
	asr	x13, x13, #3
	mov	x20, #-1                        ; =0xffffffffffffffff
	madd	x13, x13, x27, x20
	str	x10, [x19, #160]
	csel	x13, xzr, x13, eq
	add	x11, x9, x11
	sub	x11, x13, x11
	add	x11, x11, #1
	cmp	x11, #340
	b.lo	LBB4_60
; %bb.59:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldp	x8, x9, [x19, #128]
	sub	x9, x9, #8
	str	x9, [x19, #136]
	ldp	x9, x10, [x19, #152]
LBB4_60:                                ;   in Loop: Header=BB4_4 Depth=1
	add	x9, x10, x9
	sub	x9, x9, #1
	umulh	x10, x9, x26
	lsr	x10, x10, #7
	ldr	x8, [x8, x10, lsl #3]
	msub	x9, x10, x27, x9
	madd	x0, x9, x28, x8
Ltmp108:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp109:
; %bb.61:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x23, x0
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
	add	x12, x10, x9
	ldr	x11, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_63
; %bb.62:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #128]
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
LBB4_63:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x11, x12, x11
	asr	x11, x11, #3
	madd	x11, x11, x27, x20
	str	x10, [x19, #160]
	csel	x10, xzr, x11, eq
	add	x8, x9, x8
	sub	x8, x10, x8
	add	x8, x8, #1
	cmp	x8, #340
	b.lo	LBB4_65
; %bb.64:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #136]
	sub	x8, x8, #8
	str	x8, [x19, #136]
LBB4_65:                                ;   in Loop: Header=BB4_4 Depth=1
	add	w0, w23, w22
Ltmp111:
	add	x8, sp, #8
	bl	__ZNSt3__19to_stringEi
Ltmp112:
; %bb.66:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	q0, [x19, #128]
	mov.d	x9, v0[1]
	fmov	x8, d0
	subs	x9, x9, x8
	asr	x9, x9, #3
	madd	x9, x9, x27, x20
	csel	x10, xzr, x9, eq
	ldp	x9, x11, [x19, #152]
	add	x9, x11, x9
	cmp	x10, x9
	ldr	x20, [sp]                       ; 8-byte Folded Reload
	mov	w22, #10794                     ; =0x2a2a
	mov	w23, #1                         ; =0x1
	b.ne	LBB4_95
; %bb.67:                               ;   in Loop: Header=BB4_4 Depth=1
Ltmp114:
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
Ltmp115:
	b	LBB4_94
LBB4_68:                                ;   in Loop: Header=BB4_4 Depth=1
	ldp	x9, x8, [x19, #152]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #128]
	umulh	x10, x8, x26
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x27, x8
	madd	x0, x8, x28, x9
Ltmp93:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp94:
; %bb.69:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x22, x0
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
	add	x12, x10, x9
	ldr	x8, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x8, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_71
; %bb.70:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x8, [x19, #128]
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
LBB4_71:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x13, x12, x8
	asr	x13, x13, #3
	mov	x20, #-1                        ; =0xffffffffffffffff
	madd	x13, x13, x27, x20
	str	x10, [x19, #160]
	csel	x13, xzr, x13, eq
	add	x11, x9, x11
	sub	x11, x13, x11
	add	x11, x11, #1
	cmp	x11, #340
	b.lo	LBB4_73
; %bb.72:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldp	x8, x9, [x19, #128]
	sub	x9, x9, #8
	str	x9, [x19, #136]
	ldp	x9, x10, [x19, #152]
LBB4_73:                                ;   in Loop: Header=BB4_4 Depth=1
	add	x9, x10, x9
	sub	x9, x9, #1
	umulh	x10, x9, x26
	lsr	x10, x10, #7
	ldr	x8, [x8, x10, lsl #3]
	msub	x9, x10, x27, x9
	madd	x0, x9, x28, x8
Ltmp96:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp97:
; %bb.74:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x23, x0
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
	add	x12, x10, x9
	ldr	x11, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_76
; %bb.75:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #128]
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
LBB4_76:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x11, x12, x11
	asr	x11, x11, #3
	madd	x11, x11, x27, x20
	str	x10, [x19, #160]
	csel	x10, xzr, x11, eq
	add	x8, x9, x8
	sub	x8, x10, x8
	add	x8, x8, #1
	cmp	x8, #340
	b.lo	LBB4_78
; %bb.77:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #136]
	sub	x8, x8, #8
	str	x8, [x19, #136]
LBB4_78:                                ;   in Loop: Header=BB4_4 Depth=1
	sub	w0, w23, w22
Ltmp99:
	add	x8, sp, #8
	bl	__ZNSt3__19to_stringEi
Ltmp100:
; %bb.79:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	q0, [x19, #128]
	mov.d	x9, v0[1]
	fmov	x8, d0
	subs	x9, x9, x8
	asr	x9, x9, #3
	madd	x9, x9, x27, x20
	csel	x10, xzr, x9, eq
	ldp	x9, x11, [x19, #152]
	add	x9, x11, x9
	cmp	x10, x9
	ldr	x20, [sp]                       ; 8-byte Folded Reload
	mov	w22, #10794                     ; =0x2a2a
	mov	w23, #1                         ; =0x1
	b.ne	LBB4_95
; %bb.80:                               ;   in Loop: Header=BB4_4 Depth=1
Ltmp102:
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
Ltmp103:
	b	LBB4_94
LBB4_81:                                ;   in Loop: Header=BB4_4 Depth=1
	ldp	x9, x8, [x19, #152]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #128]
	umulh	x10, x8, x26
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	msub	x8, x10, x27, x8
	madd	x0, x8, x28, x9
Ltmp69:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp70:
; %bb.82:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x22, x0
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
	add	x12, x10, x9
	ldr	x8, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x8, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_84
; %bb.83:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x8, [x19, #128]
	ldp	x9, x11, [x19, #152]
	sub	x10, x11, #1
LBB4_84:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x13, x12, x8
	asr	x13, x13, #3
	mov	x20, #-1                        ; =0xffffffffffffffff
	madd	x13, x13, x27, x20
	str	x10, [x19, #160]
	csel	x13, xzr, x13, eq
	add	x11, x9, x11
	sub	x11, x13, x11
	add	x11, x11, #1
	cmp	x11, #340
	b.lo	LBB4_86
; %bb.85:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldp	x8, x9, [x19, #128]
	sub	x9, x9, #8
	str	x9, [x19, #136]
	ldp	x9, x10, [x19, #152]
LBB4_86:                                ;   in Loop: Header=BB4_4 Depth=1
	add	x9, x10, x9
	sub	x9, x9, #1
	umulh	x10, x9, x26
	lsr	x10, x10, #7
	ldr	x8, [x8, x10, lsl #3]
	msub	x9, x10, x27, x9
	madd	x0, x9, x28, x8
Ltmp72:
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp73:
; %bb.87:                               ;   in Loop: Header=BB4_4 Depth=1
	mov	x23, x0
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
	add	x12, x10, x9
	ldr	x11, [x19, #128]
	umulh	x13, x12, x26
	lsr	x13, x13, #7
	ldr	x14, [x11, x13, lsl #3]
	msub	x12, x13, x27, x12
	madd	x12, x12, x28, x14
	ldrsb	w13, [x12, #23]
	tbz	w13, #31, LBB4_89
; %bb.88:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [x12]
	bl	__ZdlPv
	ldr	x11, [x19, #128]
	ldp	x9, x8, [x19, #152]
	sub	x10, x8, #1
LBB4_89:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x12, [x19, #136]
	subs	x11, x12, x11
	asr	x11, x11, #3
	madd	x11, x11, x27, x20
	str	x10, [x19, #160]
	csel	x10, xzr, x11, eq
	add	x8, x9, x8
	sub	x8, x10, x8
	add	x8, x8, #1
	cmp	x8, #340
	b.lo	LBB4_91
; %bb.90:                               ;   in Loop: Header=BB4_4 Depth=1
	ldur	x0, [x12, #-8]
	bl	__ZdlPv
	ldr	x8, [x19, #136]
	sub	x8, x8, #8
	str	x8, [x19, #136]
LBB4_91:                                ;   in Loop: Header=BB4_4 Depth=1
	sdiv	w0, w23, w22
Ltmp75:
	add	x8, sp, #8
	bl	__ZNSt3__19to_stringEi
Ltmp76:
; %bb.92:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	q0, [x19, #128]
	mov.d	x9, v0[1]
	fmov	x8, d0
	subs	x9, x9, x8
	asr	x9, x9, #3
	madd	x9, x9, x27, x20
	csel	x10, xzr, x9, eq
	ldp	x9, x11, [x19, #152]
	add	x9, x11, x9
	cmp	x10, x9
	ldr	x20, [sp]                       ; 8-byte Folded Reload
	mov	w22, #10794                     ; =0x2a2a
	mov	w23, #1                         ; =0x1
	b.ne	LBB4_95
; %bb.93:                               ;   in Loop: Header=BB4_4 Depth=1
Ltmp78:
	mov	x0, x20
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
Ltmp79:
LBB4_94:                                ;   in Loop: Header=BB4_4 Depth=1
	ldr	x8, [x19, #128]
	ldp	x9, x10, [x19, #152]
	add	x9, x10, x9
LBB4_95:                                ;   in Loop: Header=BB4_4 Depth=1
	umulh	x10, x9, x26
	lsr	x10, x10, #7
	ldr	x8, [x8, x10, lsl #3]
	msub	x9, x10, x27, x9
	madd	x8, x9, x28, x8
	ldur	q0, [sp, #8]
	ldr	x9, [sp, #24]
	str	x9, [x8, #16]
	str	q0, [x8]
	ldr	x8, [x19, #160]
	add	x8, x8, #1
	str	x8, [x19, #160]
LBB4_96:                                ;   in Loop: Header=BB4_4 Depth=1
	ldrb	w8, [sp, #55]
LBB4_97:                                ;   in Loop: Header=BB4_4 Depth=1
	tbz	w8, #7, LBB4_3
; %bb.98:                               ;   in Loop: Header=BB4_4 Depth=1
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	b	LBB4_3
LBB4_99:
	ldp	x9, x8, [x19, #152]
	add	x8, x8, x9
	sub	x8, x8, #1
	ldr	x9, [x19, #128]
	mov	x10, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x10, #49345
	umulh	x10, x8, x10
	lsr	x10, x10, #7
	ldr	x9, [x9, x10, lsl #3]
	mov	w11, #170                       ; =0xaa
	msub	x8, x10, x11, x8
	mov	w10, #24                        ; =0x18
	madd	x8, x8, x10, x9
	add	x0, x19, #168
	cmp	x0, x8
	b.eq	LBB4_105
; %bb.100:
	ldrsb	w10, [x19, #191]
	ldrb	w9, [x8, #23]
	tbnz	w10, #31, LBB4_103
; %bb.101:
	tbnz	w9, #7, LBB4_104
; %bb.102:
	ldr	q0, [x8]
	ldr	x8, [x8, #16]
	str	x8, [x0, #16]
	str	q0, [x0]
	b	LBB4_105
LBB4_103:
	sxtb	w10, w9
	ldp	x11, x12, [x8]
	cmp	w10, #0
	csel	x1, x11, x8, lt
	csel	x2, x12, x9, lt
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm
	b	LBB4_105
LBB4_104:
	ldp	x1, x2, [x8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
LBB4_105:
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB4_106:
Ltmp92:
	b	LBB4_111
LBB4_107:
Ltmp80:
	b	LBB4_111
LBB4_108:
Ltmp104:
	b	LBB4_111
LBB4_109:
Ltmp116:
	b	LBB4_111
LBB4_110:
Ltmp68:
LBB4_111:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB4_114
; %bb.112:
	ldrsb	w8, [sp, #55]
	tbnz	w8, #31, LBB4_131
LBB4_113:
	mov	x0, x19
	bl	__Unwind_Resume
LBB4_114:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB4_113
	b	LBB4_131
LBB4_115:
Ltmp77:
	b	LBB4_130
LBB4_116:
Ltmp74:
	b	LBB4_130
LBB4_117:
Ltmp71:
	b	LBB4_130
LBB4_118:
Ltmp101:
	b	LBB4_130
LBB4_119:
Ltmp98:
	b	LBB4_130
LBB4_120:
Ltmp95:
	b	LBB4_130
LBB4_121:
Ltmp113:
	b	LBB4_130
LBB4_122:
Ltmp110:
	b	LBB4_130
LBB4_123:
Ltmp107:
	b	LBB4_130
LBB4_124:
Ltmp89:
	b	LBB4_130
LBB4_125:
Ltmp86:
	b	LBB4_130
LBB4_126:
Ltmp83:
	b	LBB4_130
LBB4_127:
Ltmp65:
	b	LBB4_130
LBB4_128:
Ltmp62:
	b	LBB4_130
LBB4_129:
Ltmp59:
LBB4_130:
	mov	x19, x0
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB4_113
LBB4_131:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh26, Lloh27
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh30, Lloh31
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__const
	.p2align	1, 0x0
lJTI4_0:
	.short	(LBB4_25-LBB4_25)>>2
	.short	(LBB4_55-LBB4_25)>>2
	.short	(LBB4_96-LBB4_25)>>2
	.short	(LBB4_68-LBB4_25)>>2
	.short	(LBB4_96-LBB4_25)>>2
	.short	(LBB4_81-LBB4_25)>>2
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp81-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp81
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp82-Ltmp81                  ;   Call between Ltmp81 and Ltmp82
	.uleb128 Ltmp83-Lfunc_begin2            ;     jumps to Ltmp83
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp84-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp85-Ltmp84                  ;   Call between Ltmp84 and Ltmp85
	.uleb128 Ltmp86-Lfunc_begin2            ;     jumps to Ltmp86
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp87-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp88-Ltmp87                  ;   Call between Ltmp87 and Ltmp88
	.uleb128 Ltmp89-Lfunc_begin2            ;     jumps to Ltmp89
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp90-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Ltmp91-Ltmp90                  ;   Call between Ltmp90 and Ltmp91
	.uleb128 Ltmp92-Lfunc_begin2            ;     jumps to Ltmp92
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp91-Lfunc_begin2            ; >> Call Site 6 <<
	.uleb128 Ltmp57-Ltmp91                  ;   Call between Ltmp91 and Ltmp57
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin2            ; >> Call Site 7 <<
	.uleb128 Ltmp58-Ltmp57                  ;   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin2            ;     jumps to Ltmp59
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin2            ; >> Call Site 8 <<
	.uleb128 Ltmp61-Ltmp60                  ;   Call between Ltmp60 and Ltmp61
	.uleb128 Ltmp62-Lfunc_begin2            ;     jumps to Ltmp62
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp61-Lfunc_begin2            ; >> Call Site 9 <<
	.uleb128 Ltmp63-Ltmp61                  ;   Call between Ltmp61 and Ltmp63
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp63-Lfunc_begin2            ; >> Call Site 10 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin2            ;     jumps to Ltmp65
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp66-Lfunc_begin2            ; >> Call Site 11 <<
	.uleb128 Ltmp67-Ltmp66                  ;   Call between Ltmp66 and Ltmp67
	.uleb128 Ltmp68-Lfunc_begin2            ;     jumps to Ltmp68
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp105-Lfunc_begin2           ; >> Call Site 12 <<
	.uleb128 Ltmp106-Ltmp105                ;   Call between Ltmp105 and Ltmp106
	.uleb128 Ltmp107-Lfunc_begin2           ;     jumps to Ltmp107
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp108-Lfunc_begin2           ; >> Call Site 13 <<
	.uleb128 Ltmp109-Ltmp108                ;   Call between Ltmp108 and Ltmp109
	.uleb128 Ltmp110-Lfunc_begin2           ;     jumps to Ltmp110
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp111-Lfunc_begin2           ; >> Call Site 14 <<
	.uleb128 Ltmp112-Ltmp111                ;   Call between Ltmp111 and Ltmp112
	.uleb128 Ltmp113-Lfunc_begin2           ;     jumps to Ltmp113
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp114-Lfunc_begin2           ; >> Call Site 15 <<
	.uleb128 Ltmp115-Ltmp114                ;   Call between Ltmp114 and Ltmp115
	.uleb128 Ltmp116-Lfunc_begin2           ;     jumps to Ltmp116
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp93-Lfunc_begin2            ; >> Call Site 16 <<
	.uleb128 Ltmp94-Ltmp93                  ;   Call between Ltmp93 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin2            ;     jumps to Ltmp95
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp96-Lfunc_begin2            ; >> Call Site 17 <<
	.uleb128 Ltmp97-Ltmp96                  ;   Call between Ltmp96 and Ltmp97
	.uleb128 Ltmp98-Lfunc_begin2            ;     jumps to Ltmp98
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin2            ; >> Call Site 18 <<
	.uleb128 Ltmp100-Ltmp99                 ;   Call between Ltmp99 and Ltmp100
	.uleb128 Ltmp101-Lfunc_begin2           ;     jumps to Ltmp101
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp102-Lfunc_begin2           ; >> Call Site 19 <<
	.uleb128 Ltmp103-Ltmp102                ;   Call between Ltmp102 and Ltmp103
	.uleb128 Ltmp104-Lfunc_begin2           ;     jumps to Ltmp104
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin2            ; >> Call Site 20 <<
	.uleb128 Ltmp70-Ltmp69                  ;   Call between Ltmp69 and Ltmp70
	.uleb128 Ltmp71-Lfunc_begin2            ;     jumps to Ltmp71
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin2            ; >> Call Site 21 <<
	.uleb128 Ltmp73-Ltmp72                  ;   Call between Ltmp72 and Ltmp73
	.uleb128 Ltmp74-Lfunc_begin2            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp75-Lfunc_begin2            ; >> Call Site 22 <<
	.uleb128 Ltmp76-Ltmp75                  ;   Call between Ltmp75 and Ltmp76
	.uleb128 Ltmp77-Lfunc_begin2            ;     jumps to Ltmp77
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin2            ; >> Call Site 23 <<
	.uleb128 Ltmp79-Ltmp78                  ;   Call between Ltmp78 and Ltmp79
	.uleb128 Ltmp80-Lfunc_begin2            ;     jumps to Ltmp80
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp79-Lfunc_begin2            ; >> Call Site 24 <<
	.uleb128 Lfunc_end2-Ltmp79              ;   Call between Ltmp79 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN9EvaluatorD1Ev              ; -- Begin function _ZN9EvaluatorD1Ev
	.weak_def_can_be_hidden	__ZN9EvaluatorD1Ev
	.p2align	2
__ZN9EvaluatorD1Ev:                     ; @_ZN9EvaluatorD1Ev
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldrsb	w8, [x0, #191]
	tbz	w8, #31, LBB5_2
; %bb.1:
	ldr	x0, [x19, #168]
	bl	__ZdlPv
LBB5_2:
	add	x0, x19, #120
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	add	x0, x19, #72
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	add	x0, x19, #24
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	ldrsb	w8, [x19, #23]
	tbnz	w8, #31, LBB5_4
; %bb.3:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB5_4:
	ldr	x0, [x19]
	bl	__ZdlPv
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh32:
	adrp	x0, l_.str.7@PAGE
Lloh33:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.loh AdrpAdd	Lloh32, Lloh33
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne180100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne180100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne180100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne180100EPKc
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp117:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne180100EPKc
Ltmp118:
; %bb.1:
Lloh34:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh35:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh36:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh37:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB8_2:
Ltmp119:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh36, Lloh37
	.loh AdrpLdrGot	Lloh34, Lloh35
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp117-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp117
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp117-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp118-Ltmp117                ;   Call between Ltmp117 and Ltmp118
	.uleb128 Ltmp119-Lfunc_begin3           ;     jumps to Ltmp119
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp118-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp118             ;   Call between Ltmp118 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne180100EPKc ; -- Begin function _ZNSt12length_errorC1B8ne180100EPKc
	.globl	__ZNSt12length_errorC1B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne180100EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne180100EPKc:   ; @_ZNSt12length_errorC1B8ne180100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh38:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh39:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh38, Lloh39
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne180100v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne180100v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne180100v: ; @_ZSt28__throw_bad_array_new_lengthB8ne180100v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh40:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh41:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh42:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh43:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh42, Lloh43
	.loh AdrpLdrGot	Lloh40, Lloh41
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_ ; -- Begin function _ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
	.weak_def_can_be_hidden	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
	.p2align	2
__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_: ; @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJRS6_EEESA_DpOT_
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x1
	mov	x19, x0
	ldp	x8, x9, [x0, #8]
	subs	x10, x9, x8
	asr	x10, x10, #3
	mov	w11, #170                       ; =0xaa
	mov	x12, #-1                        ; =0xffffffffffffffff
	madd	x10, x10, x11, x12
	cmp	x9, x8
	csel	x10, xzr, x10, eq
	ldp	x11, x12, [x0, #32]
	add	x11, x12, x11
	cmp	x10, x11
	b.ne	LBB11_2
; %bb.1:
	mov	x0, x19
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
	ldp	x8, x9, [x19, #8]
LBB11_2:
	cmp	x9, x8
	b.eq	LBB11_5
; %bb.3:
	ldp	x9, x10, [x19, #32]
	add	x9, x10, x9
	mov	x10, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x10, #49345
	umulh	x10, x9, x10
	lsr	x10, x10, #7
	ldr	x8, [x8, x10, lsl #3]
	mov	w11, #170                       ; =0xaa
	msub	x9, x10, x11, x9
	mov	w10, #24                        ; =0x18
	madd	x0, x9, x10, x8
	ldrsb	w8, [x20, #23]
	tbnz	w8, #31, LBB11_6
LBB11_4:
	ldr	q0, [x20]
	ldr	x8, [x20, #16]
	str	x8, [x0, #16]
	str	q0, [x0]
	b	LBB11_7
LBB11_5:
	mov	x0, #0                          ; =0x0
	ldrsb	w8, [x20, #23]
	tbz	w8, #31, LBB11_4
LBB11_6:
	ldp	x1, x2, [x20]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
LBB11_7:
	ldp	x9, x8, [x19, #32]
	add	x8, x8, #1
	str	x8, [x19, #40]
	add	x9, x9, x8
	mov	x8, #-4557430888798830400       ; =0xc0c0c0c0c0c0c0c0
	movk	x8, #49345
	umulh	x8, x9, x8
	lsr	x10, x8, #7
	ldp	x11, x12, [x19, #8]
	add	x8, x11, x10, lsl #3
	ldr	x13, [x8]
	mov	w14, #170                       ; =0xaa
	msub	x9, x10, x14, x9
	mov	w10, #24                        ; =0x18
	madd	x9, x9, x10, x13
	cmp	x12, x11
	csel	x9, xzr, x9, eq
	cmp	x9, x13
	b.eq	LBB11_9
; %bb.8:
	sub	x0, x9, #24
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB11_9:
	ldur	x8, [x8, #-8]
	add	x9, x8, #4080
	sub	x0, x9, #24
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv ; -- Begin function _ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
	.globl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
	.weak_def_can_be_hidden	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
	.p2align	2
__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv: ; @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x0
	ldr	x8, [x0, #32]
	subs	x8, x8, #170
	b.lo	LBB12_6
; %bb.1:
	str	x8, [x19, #32]
	ldp	x25, x24, [x19, #8]
	mov	x20, x25
	ldr	x23, [x20], #8
	str	x20, [x19, #8]
	ldr	x8, [x19, #24]
	cmp	x24, x8
	b.ne	LBB12_55
; %bb.2:
	ldr	x21, [x19]
	subs	x8, x20, x21
	b.ls	LBB12_15
LBB12_3:
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	asr	x8, x8, #1
	neg	x25, x8
	sub	x21, x20, x8, lsl #3
	subs	x22, x24, x20
	b.eq	LBB12_5
; %bb.4:
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memmove
	ldr	x20, [x19, #8]
LBB12_5:
	add	x24, x21, x22
	add	x8, x20, x25, lsl #3
	stp	x8, x24, [x19, #8]
	b	LBB12_55
LBB12_6:
	ldp	x24, x8, [x19, #16]
	ldp	x9, x26, [x19]
	sub	x28, x24, x26
	asr	x27, x28, #3
	sub	x10, x8, x9
	cmp	x27, x10, asr #3
	b.hs	LBB12_9
; %bb.7:
	mov	w0, #4080                       ; =0xff0
	cmp	x8, x24
	b.eq	LBB12_19
; %bb.8:
	bl	__Znwm
	str	x0, [sp, #8]
	add	x1, sp, #8
	mov	x0, x19
	bl	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE9push_backEOS7_
	b	LBB12_56
LBB12_9:
	asr	x10, x10, #2
	cmp	x8, x9
	csinc	x22, x10, xzr, ne
	lsr	x8, x22, #61
	cbnz	x8, LBB12_63
; %bb.10:
	lsl	x23, x22, #3
	mov	x0, x23
	bl	__Znwm
	mov	x20, x0
Ltmp120:
	mov	w0, #4080                       ; =0xff0
	bl	__Znwm
Ltmp121:
; %bb.11:
	add	x21, x20, x27, lsl #3
	add	x25, x20, x23
	cmp	x27, x22
	b.eq	LBB12_13
; %bb.12:
	mov	x23, x21
	str	x0, [x23], #8
	cmp	x24, x26
	b.ne	LBB12_33
	b	LBB12_28
LBB12_13:
	str	x0, [sp]                        ; 8-byte Folded Spill
	cmp	x28, #1
	b.lt	LBB12_25
; %bb.14:
	cmn	x27, #1
	add	x8, x27, #2
	csinc	x8, x8, x27, lt
	lsr	x8, x8, #1
	sub	x21, x21, x8, lsl #3
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x23, x21
	str	x0, [x23], #8
	cmp	x24, x26
	b.ne	LBB12_33
	b	LBB12_28
LBB12_15:
	subs	x8, x24, x21
	asr	x8, x8, #2
	csinc	x8, x8, xzr, ne
	lsr	x9, x8, #61
	cbnz	x9, LBB12_63
; %bb.16:
	lsr	x26, x8, #2
	lsl	x22, x8, #3
	mov	x0, x22
	bl	__Znwm
	add	x8, x0, x26, lsl #3
	add	x9, x0, x22
	subs	x10, x24, x20
	mov	x24, x8
	b.eq	LBB12_53
; %bb.17:
	and	x11, x10, #0xfffffffffffffff8
	add	x24, x8, x11
	sub	x11, x10, #8
	cmp	x11, #56
	b.hs	LBB12_48
; %bb.18:
	mov	x10, x8
	b	LBB12_52
LBB12_19:
	bl	__Znwm
	str	x0, [sp, #8]
	add	x1, sp, #8
	mov	x0, x19
	bl	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE10push_frontEOS7_
	ldp	x25, x24, [x19, #8]
	mov	x20, x25
	ldr	x23, [x20], #8
	str	x20, [x19, #8]
	ldr	x8, [x19, #24]
	cmp	x24, x8
	b.ne	LBB12_55
; %bb.20:
	ldr	x21, [x19]
	subs	x8, x20, x21
	b.hi	LBB12_3
; %bb.21:
	subs	x8, x24, x21
	asr	x8, x8, #2
	csinc	x8, x8, xzr, ne
	lsr	x9, x8, #61
	cbnz	x9, LBB12_63
; %bb.22:
	lsr	x26, x8, #2
	lsl	x22, x8, #3
	mov	x0, x22
	bl	__Znwm
	add	x8, x0, x26, lsl #3
	add	x9, x0, x22
	subs	x10, x24, x20
	mov	x24, x8
	b.eq	LBB12_53
; %bb.23:
	and	x11, x10, #0xfffffffffffffff8
	add	x24, x8, x11
	sub	x11, x10, #8
	cmp	x11, #56
	b.hs	LBB12_57
; %bb.24:
	mov	x10, x8
	b	LBB12_61
LBB12_25:
	asr	x8, x28, #2
	cmp	x24, x26
	csinc	x22, x8, xzr, ne
	lsr	x8, x22, #61
	cbnz	x8, LBB12_64
; %bb.26:
	lsl	x0, x22, #3
Ltmp123:
	bl	__Znwm
Ltmp124:
; %bb.27:
	mov	x23, x0
	lsr	x8, x22, #2
	add	x21, x0, x8, lsl #3
	add	x25, x0, x22, lsl #3
	mov	x0, x20
	bl	__ZdlPv
	ldp	x26, x24, [x19, #8]
	mov	x20, x23
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x23, x21
	str	x0, [x23], #8
	cmp	x24, x26
	b.ne	LBB12_33
LBB12_28:
	mov	x22, x21
LBB12_29:
	ldr	x0, [x19]
	stp	x20, x22, [x19]
	stp	x23, x25, [x19, #16]
	cbz	x0, LBB12_56
; %bb.30:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	__ZdlPv
LBB12_31:                               ;   in Loop: Header=BB12_33 Depth=1
	mov	x22, x21
LBB12_32:                               ;   in Loop: Header=BB12_33 Depth=1
	ldr	x8, [x24, #-8]!
	str	x8, [x22, #-8]!
	ldr	x8, [x19, #8]
	mov	x21, x22
	cmp	x24, x8
	b.eq	LBB12_29
LBB12_33:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB12_43 Depth 2
                                        ;     Child Loop BB12_45 Depth 2
	cmp	x21, x20
	b.ne	LBB12_31
; %bb.34:                               ;   in Loop: Header=BB12_33 Depth=1
	cmp	x23, x25
	b.hs	LBB12_37
; %bb.35:                               ;   in Loop: Header=BB12_33 Depth=1
	sub	x8, x25, x23
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	lsr	x8, x8, #1
	add	x8, x23, x8, lsl #3
	subs	x9, x23, x21
	sub	x22, x8, x9
	subs	x2, x23, x21
	mov	x23, x8
	b.eq	LBB12_47
; %bb.36:                               ;   in Loop: Header=BB12_33 Depth=1
	mov	x0, x22
	mov	x1, x21
	bl	_memmove
	mov	x20, x21
	b	LBB12_32
LBB12_37:                               ;   in Loop: Header=BB12_33 Depth=1
	subs	x8, x25, x21
	asr	x8, x8, #2
	csinc	x25, x8, xzr, ne
	lsr	x8, x25, #61
	cbnz	x8, LBB12_62
; %bb.38:                               ;   in Loop: Header=BB12_33 Depth=1
	lsl	x0, x25, #3
Ltmp128:
	bl	__Znwm
Ltmp129:
; %bb.39:                               ;   in Loop: Header=BB12_33 Depth=1
	mov	x20, x0
	add	x8, x25, #3
	lsr	x10, x8, #2
	add	x22, x0, x10, lsl #3
	subs	x8, x23, x21
	mov	x23, x22
	b.eq	LBB12_46
; %bb.40:                               ;   in Loop: Header=BB12_33 Depth=1
	and	x9, x8, #0xfffffffffffffff8
	add	x23, x22, x9
	sub	x11, x8, #8
	mov	x8, x22
	mov	x9, x21
	cmp	x11, #56
	b.lo	LBB12_45
; %bb.41:                               ;   in Loop: Header=BB12_33 Depth=1
	lsl	x12, x10, #3
	add	x8, x12, x20
	sub	x10, x8, x21
	mov	x8, x22
	mov	x9, x21
	cmp	x10, #64
	b.lo	LBB12_45
; %bb.42:                               ;   in Loop: Header=BB12_33 Depth=1
	lsr	x8, x11, #3
	add	x10, x8, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x9, x11, #3
	add	x8, x22, x9
	add	x9, x21, x9
	add	x12, x20, x12
	add	x12, x12, #32
	add	x13, x21, #32
	mov	x14, x11
LBB12_43:                               ;   Parent Loop BB12_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x13, #-32]
	ldp	q2, q3, [x13], #64
	stp	q0, q1, [x12, #-32]
	stp	q2, q3, [x12], #64
	subs	x14, x14, #8
	b.ne	LBB12_43
; %bb.44:                               ;   in Loop: Header=BB12_33 Depth=1
	cmp	x10, x11
	b.eq	LBB12_46
LBB12_45:                               ;   Parent Loop BB12_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x9], #8
	str	x10, [x8], #8
	cmp	x8, x23
	b.ne	LBB12_45
LBB12_46:                               ;   in Loop: Header=BB12_33 Depth=1
	add	x25, x20, x25, lsl #3
	mov	x0, x21
	bl	__ZdlPv
	b	LBB12_32
LBB12_47:                               ;   in Loop: Header=BB12_33 Depth=1
	mov	x20, x21
	b	LBB12_32
LBB12_48:
	lsl	x10, x26, #3
	add	x13, x10, x0
	sub	x12, x13, x20
	mov	x10, x8
	cmp	x12, #64
	b.lo	LBB12_52
; %bb.49:
	lsr	x10, x11, #3
	add	x11, x10, #1
	and	x12, x11, #0x3ffffffffffffff8
	lsl	x14, x12, #3
	add	x10, x8, x14
	add	x20, x20, x14
	add	x13, x13, #32
	add	x14, x25, #40
	mov	x15, x12
LBB12_50:                               ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x14, #-32]
	ldp	q2, q3, [x14], #64
	stp	q0, q1, [x13, #-32]
	stp	q2, q3, [x13], #64
	subs	x15, x15, #8
	b.ne	LBB12_50
; %bb.51:
	cmp	x11, x12
	b.eq	LBB12_53
LBB12_52:                               ; =>This Inner Loop Header: Depth=1
	ldr	x11, [x20], #8
	str	x11, [x10], #8
	cmp	x10, x24
	b.ne	LBB12_52
LBB12_53:
	stp	x0, x8, [x19]
	stp	x24, x9, [x19, #16]
	cbz	x21, LBB12_55
; %bb.54:
	mov	x0, x21
	bl	__ZdlPv
	ldr	x24, [x19, #16]
LBB12_55:
	str	x23, [x24]
	ldr	x8, [x19, #16]
	add	x8, x8, #8
	str	x8, [x19, #16]
LBB12_56:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB12_57:
	lsl	x10, x26, #3
	add	x13, x10, x0
	sub	x12, x13, x20
	mov	x10, x8
	cmp	x12, #64
	b.lo	LBB12_61
; %bb.58:
	lsr	x10, x11, #3
	add	x11, x10, #1
	and	x12, x11, #0x3ffffffffffffff8
	lsl	x14, x12, #3
	add	x10, x8, x14
	add	x20, x20, x14
	add	x13, x13, #32
	add	x14, x25, #40
	mov	x15, x12
LBB12_59:                               ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x14, #-32]
	ldp	q2, q3, [x14], #64
	stp	q0, q1, [x13, #-32]
	stp	q2, q3, [x13], #64
	subs	x15, x15, #8
	b.ne	LBB12_59
; %bb.60:
	cmp	x11, x12
	b.eq	LBB12_53
LBB12_61:                               ; =>This Inner Loop Header: Depth=1
	ldr	x11, [x20], #8
	str	x11, [x10], #8
	cmp	x10, x24
	b.ne	LBB12_61
	b	LBB12_53
LBB12_62:
Ltmp131:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp132:
	b	LBB12_65
LBB12_63:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
LBB12_64:
Ltmp125:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp126:
LBB12_65:
	brk	#0x1
LBB12_66:
Ltmp127:
	mov	x19, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZdlPv
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_67:
Ltmp122:
	mov	x19, x0
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_68:
Ltmp133:
	mov	x19, x0
	mov	x20, x21
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB12_69:
Ltmp130:
	mov	x19, x0
	mov	x20, x21
	mov	x0, x20
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table12:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp120-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp120
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp120-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp121-Ltmp120                ;   Call between Ltmp120 and Ltmp121
	.uleb128 Ltmp122-Lfunc_begin4           ;     jumps to Ltmp122
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp121-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp123-Ltmp121                ;   Call between Ltmp121 and Ltmp123
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp123-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp124-Ltmp123                ;   Call between Ltmp123 and Ltmp124
	.uleb128 Ltmp127-Lfunc_begin4           ;     jumps to Ltmp127
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp124-Lfunc_begin4           ; >> Call Site 5 <<
	.uleb128 Ltmp128-Ltmp124                ;   Call between Ltmp124 and Ltmp128
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp128-Lfunc_begin4           ; >> Call Site 6 <<
	.uleb128 Ltmp129-Ltmp128                ;   Call between Ltmp128 and Ltmp129
	.uleb128 Ltmp130-Lfunc_begin4           ;     jumps to Ltmp130
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp131-Lfunc_begin4           ; >> Call Site 7 <<
	.uleb128 Ltmp132-Ltmp131                ;   Call between Ltmp131 and Ltmp132
	.uleb128 Ltmp133-Lfunc_begin4           ;     jumps to Ltmp133
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin4           ; >> Call Site 8 <<
	.uleb128 Ltmp125-Ltmp132                ;   Call between Ltmp132 and Ltmp125
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin4           ; >> Call Site 9 <<
	.uleb128 Ltmp126-Ltmp125                ;   Call between Ltmp125 and Ltmp126
	.uleb128 Ltmp127-Lfunc_begin4           ;     jumps to Ltmp127
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp126-Lfunc_begin4           ; >> Call Site 10 <<
	.uleb128 Lfunc_end4-Ltmp126             ;   Call between Ltmp126 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE9push_backEOS7_ ; -- Begin function _ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE9push_backEOS7_
	.globl	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE9push_backEOS7_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE9push_backEOS7_
	.p2align	2
__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE9push_backEOS7_: ; @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE9push_backEOS7_
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x20, x1
	mov	x19, x0
	ldp	x24, x8, [x0, #16]
	cmp	x24, x8
	b.ne	LBB13_16
; %bb.1:
	ldp	x21, x22, [x19]
	subs	x8, x22, x21
	b.ls	LBB13_5
; %bb.2:
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	asr	x8, x8, #1
	neg	x25, x8
	sub	x21, x22, x8, lsl #3
	subs	x23, x24, x22
	b.eq	LBB13_4
; %bb.3:
	mov	x0, x21
	mov	x1, x22
	mov	x2, x23
	bl	_memmove
	ldr	x24, [x19, #8]
LBB13_4:
	add	x8, x24, x25, lsl #3
	add	x24, x21, x23
	stp	x8, x24, [x19, #8]
	b	LBB13_16
LBB13_5:
	subs	x8, x24, x21
	asr	x8, x8, #2
	csinc	x8, x8, xzr, ne
	lsr	x9, x8, #61
	cbnz	x9, LBB13_17
; %bb.6:
	lsr	x25, x8, #2
	lsl	x23, x8, #3
	mov	x0, x23
	bl	__Znwm
	add	x8, x0, x25, lsl #3
	add	x9, x0, x23
	subs	x10, x24, x22
	mov	x24, x8
	b.eq	LBB13_14
; %bb.7:
	and	x11, x10, #0xfffffffffffffff8
	add	x24, x8, x11
	sub	x11, x10, #8
	cmp	x11, #56
	b.hs	LBB13_9
; %bb.8:
	mov	x10, x8
	b	LBB13_13
LBB13_9:
	lsl	x10, x25, #3
	add	x14, x10, x0
	sub	x12, x14, x22
	mov	x10, x8
	cmp	x12, #64
	b.lo	LBB13_13
; %bb.10:
	lsr	x10, x11, #3
	add	x11, x10, #1
	and	x12, x11, #0x3ffffffffffffff8
	lsl	x13, x12, #3
	add	x10, x8, x13
	add	x13, x22, x13
	add	x14, x14, #32
	add	x15, x22, #32
	mov	x16, x12
LBB13_11:                               ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x15, #-32]
	ldp	q2, q3, [x15], #64
	stp	q0, q1, [x14, #-32]
	stp	q2, q3, [x14], #64
	subs	x16, x16, #8
	b.ne	LBB13_11
; %bb.12:
	mov	x22, x13
	cmp	x11, x12
	b.eq	LBB13_14
LBB13_13:                               ; =>This Inner Loop Header: Depth=1
	ldr	x11, [x22], #8
	str	x11, [x10], #8
	cmp	x10, x24
	b.ne	LBB13_13
LBB13_14:
	stp	x0, x8, [x19]
	stp	x24, x9, [x19, #16]
	cbz	x21, LBB13_16
; %bb.15:
	mov	x0, x21
	bl	__ZdlPv
	ldr	x24, [x19, #16]
LBB13_16:
	ldr	x8, [x20]
	str	x8, [x24]
	ldr	x8, [x19, #16]
	add	x8, x8, #8
	str	x8, [x19, #16]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB13_17:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE10push_frontEOS7_ ; -- Begin function _ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE10push_frontEOS7_
	.globl	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE10push_frontEOS7_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE10push_frontEOS7_
	.p2align	2
__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE10push_frontEOS7_: ; @_ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE10push_frontEOS7_
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x20, x1
	mov	x19, x0
	ldp	x8, x21, [x0]
	cmp	x21, x8
	b.eq	LBB14_2
; %bb.1:
	mov	x22, x21
	b	LBB14_16
LBB14_2:
	ldp	x24, x8, [x19, #16]
	cmp	x24, x8
	b.hs	LBB14_6
; %bb.3:
	sub	x8, x8, x24
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	asr	x23, x8, #1
	add	x8, x24, x23, lsl #3
	subs	x9, x24, x21
	sub	x22, x8, x9
	subs	x2, x24, x21
	b.eq	LBB14_5
; %bb.4:
	mov	x0, x22
	mov	x1, x21
	bl	_memmove
	ldr	x21, [x19, #16]
LBB14_5:
	add	x8, x21, x23, lsl #3
	stp	x22, x8, [x19, #8]
	b	LBB14_16
LBB14_6:
	subs	x8, x8, x21
	asr	x8, x8, #2
	csinc	x8, x8, xzr, ne
	lsr	x9, x8, #61
	cbnz	x9, LBB14_17
; %bb.7:
	add	x9, x8, #3
	lsr	x25, x9, #2
	lsl	x23, x8, #3
	mov	x0, x23
	bl	__Znwm
	add	x22, x0, x25, lsl #3
	add	x8, x0, x23
	mov	x9, x22
	subs	x10, x24, x21
	b.eq	LBB14_14
; %bb.8:
	and	x9, x10, #0xfffffffffffffff8
	add	x9, x22, x9
	sub	x12, x10, #8
	mov	x10, x22
	mov	x11, x21
	cmp	x12, #56
	b.lo	LBB14_13
; %bb.9:
	lsl	x10, x25, #3
	add	x14, x10, x0
	sub	x13, x14, x21
	mov	x10, x22
	mov	x11, x21
	cmp	x13, #64
	b.lo	LBB14_13
; %bb.10:
	lsr	x10, x12, #3
	add	x12, x10, #1
	and	x13, x12, #0x3ffffffffffffff8
	lsl	x11, x13, #3
	add	x10, x22, x11
	add	x11, x21, x11
	add	x14, x14, #32
	add	x15, x21, #32
	mov	x16, x13
LBB14_11:                               ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x15, #-32]
	ldp	q2, q3, [x15], #64
	stp	q0, q1, [x14, #-32]
	stp	q2, q3, [x14], #64
	subs	x16, x16, #8
	b.ne	LBB14_11
; %bb.12:
	cmp	x12, x13
	b.eq	LBB14_14
LBB14_13:                               ; =>This Inner Loop Header: Depth=1
	ldr	x12, [x11], #8
	str	x12, [x10], #8
	cmp	x10, x9
	b.ne	LBB14_13
LBB14_14:
	stp	x0, x22, [x19]
	stp	x9, x8, [x19, #16]
	cbz	x21, LBB14_16
; %bb.15:
	mov	x0, x21
	bl	__ZdlPv
	ldr	x22, [x19, #8]
LBB14_16:
	ldr	x8, [x20]
	stur	x8, [x22, #-8]
	ldr	x8, [x19, #8]
	sub	x8, x8, #8
	str	x8, [x19, #8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB14_17:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x21, x2
	mov	x19, x1
	mov	x20, x0
	cmp	x2, #22
	b.hi	LBB15_2
; %bb.1:
	strb	w21, [x20, #23]
	b	LBB15_4
LBB15_2:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x21, x8
	b.hs	LBB15_5
; %bb.3:
	and	x8, x21, #0xfffffffffffffff8
	add	x8, x8, #8
	orr	x9, x21, #0x7
	cmp	x9, #23
	csel	x8, x8, x9, eq
	add	x22, x8, #1
	mov	x0, x22
	bl	__Znwm
	orr	x8, x22, #0x8000000000000000
	stp	x21, x8, [x20, #8]
	str	x0, [x20]
	mov	x20, x0
LBB15_4:
	add	x2, x21, #1
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	b	_memmove
LBB15_5:
	mov	x0, x20
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJiRcEEERS6_DpOT_ ; -- Begin function _ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJiRcEEERS6_DpOT_
	.weak_def_can_be_hidden	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJiRcEEERS6_DpOT_
	.p2align	2
__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJiRcEEERS6_DpOT_: ; @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE12emplace_backIJiRcEEERS6_DpOT_
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	ldp	x8, x9, [x0, #8]
	subs	x10, x9, x8
	asr	x10, x10, #3
	mov	w11, #170                       ; =0xaa
	mov	x12, #-1                        ; =0xffffffffffffffff
	madd	x10, x10, x11, x12
	cmp	x9, x8
	csel	x10, xzr, x10, eq
	ldp	x11, x12, [x0, #32]
	add	x11, x12, x11
	cmp	x10, x11
	b.ne	LBB16_2
; %bb.1:
	mov	x0, x19
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEv
	ldp	x8, x9, [x19, #8]
LBB16_2:
	cmp	x9, x8
	b.eq	LBB16_10
; %bb.3:
	ldp	x9, x10, [x19, #32]
	add	x9, x10, x9
	mov	x10, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x10, #49345
	umulh	x10, x9, x10
	lsr	x10, x10, #7
	ldr	x8, [x8, x10, lsl #3]
	mov	w11, #170                       ; =0xaa
	msub	x9, x10, x11, x9
	mov	w10, #24                        ; =0x18
	madd	x22, x9, x10, x8
	ldrsw	x21, [x21]
	tbnz	w21, #31, LBB16_11
LBB16_4:
	ldrb	w20, [x20]
	cmp	w21, #23
	b.hs	LBB16_6
; %bb.5:
	strb	w21, [x22, #23]
	cbnz	w21, LBB16_7
	b	LBB16_8
LBB16_6:
	and	x8, x21, #0xfffffffffffffff8
	add	x8, x8, #8
	orr	x9, x21, #0x7
	cmp	x9, #23
	csel	x8, x8, x9, eq
	add	x23, x8, #1
	mov	x0, x23
	bl	__Znwm
	orr	x8, x23, #0x8000000000000000
	stp	x21, x8, [x22, #8]
	str	x0, [x22]
	mov	x22, x0
LBB16_7:
	mov	x0, x22
	mov	x1, x20
	mov	x2, x21
	bl	_memset
LBB16_8:
	strb	wzr, [x22, x21]
	ldp	x9, x8, [x19, #32]
	add	x8, x8, #1
	str	x8, [x19, #40]
	add	x9, x9, x8
	mov	x8, #-4557430888798830400       ; =0xc0c0c0c0c0c0c0c0
	movk	x8, #49345
	umulh	x8, x9, x8
	lsr	x10, x8, #7
	ldp	x11, x12, [x19, #8]
	add	x8, x11, x10, lsl #3
	ldr	x13, [x8]
	mov	w14, #170                       ; =0xaa
	msub	x9, x10, x14, x9
	mov	w10, #24                        ; =0x18
	madd	x9, x9, x10, x13
	cmp	x12, x11
	csel	x9, xzr, x9, eq
	cmp	x9, x13
	b.eq	LBB16_12
; %bb.9:
	sub	x0, x9, #24
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB16_10:
	mov	x22, #0                         ; =0x0
	ldrsw	x21, [x21]
	tbz	w21, #31, LBB16_4
LBB16_11:
	mov	x0, x22
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
LBB16_12:
	ldur	x8, [x8, #-8]
	add	x9, x8, #4080
	sub	x0, x9, #24
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_ ; -- Begin function _ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_
	.globl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_
	.weak_def_can_be_hidden	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_
	.p2align	2
__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_: ; @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEC1ERKS8_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x8, x1
	mov	x19, x0
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x0, #16]
	str	q0, [x0]
	ldr	x12, [x1, #32]
	mov	x11, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x11, #49345
	umulh	x9, x12, x11
	lsr	x9, x9, #7
	ldp	x10, x13, [x1, #8]
	add	x1, x10, x9, lsl #3
	cmp	x13, x10
	b.eq	LBB17_3
; %bb.1:
	ldr	x13, [x10, x9, lsl #3]
	mov	w14, #170                       ; =0xaa
	msub	x9, x9, x14, x12
	mov	w15, #24                        ; =0x18
	madd	x2, x9, x15, x13
	ldr	x8, [x8, #40]
	add	x9, x8, x12
	umulh	x8, x9, x11
	lsr	x11, x8, #7
	add	x8, x10, x11, lsl #3
	ldr	x10, [x8]
	msub	x9, x11, x14, x9
	madd	x9, x9, x15, x10
	cmp	x9, x2
	b.eq	LBB17_4
LBB17_2:
	sub	x10, x8, x1
	asr	x10, x10, #3
	mov	w11, #170                       ; =0xaa
	mul	x10, x10, x11
	ldr	x8, [x8]
	sub	x8, x9, x8
	asr	x8, x8, #3
	mov	x9, #-6148914691236517206       ; =0xaaaaaaaaaaaaaaaa
	movk	x9, #43691
	madd	x8, x8, x9, x10
	ldr	x9, [x1]
	sub	x9, x2, x9
	asr	x9, x9, #3
	mov	x10, #6148914691236517205       ; =0x5555555555555555
	madd	x3, x9, x10, x8
	b	LBB17_5
LBB17_3:
	mov	x2, #0                          ; =0x0
	mov	x9, #0                          ; =0x0
	ldr	x8, [x8, #40]
	add	x8, x8, x12
	umulh	x8, x8, x11
	lsr	x8, x8, #7
	add	x8, x10, x8, lsl #3
	cmp	x9, x2
	b.ne	LBB17_2
LBB17_4:
	mov	x3, #0                          ; =0x0
LBB17_5:
Ltmp134:
	mov	x0, x19
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__append_with_sizeB8ne180100INS_16__deque_iteratorIS6_PKS6_RSB_PKSC_lLl170EEEEEvT_m
Ltmp135:
; %bb.6:
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB17_7:
Ltmp136:
	mov	x20, x0
	ldp	x9, x8, [x19, #8]
	cmp	x8, x9
	b.ne	LBB17_10
; %bb.8:
	ldr	x0, [x19]
	cbnz	x0, LBB17_11
LBB17_9:
	mov	x0, x20
	bl	__Unwind_Resume
LBB17_10:
	sub	x9, x9, x8
	add	x9, x9, #7
	and	x9, x9, #0xfffffffffffffff8
	add	x8, x8, x9
	str	x8, [x19, #16]
	ldr	x0, [x19]
	cbz	x0, LBB17_9
LBB17_11:
	bl	__ZdlPv
	mov	x0, x20
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table17:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp134-Lfunc_begin5           ; >> Call Site 1 <<
	.uleb128 Ltmp135-Ltmp134                ;   Call between Ltmp134 and Ltmp135
	.uleb128 Ltmp136-Lfunc_begin5           ;     jumps to Ltmp136
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp135-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Lfunc_end5-Ltmp135             ;   Call between Ltmp135 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__append_with_sizeB8ne180100INS_16__deque_iteratorIS6_PKS6_RSB_PKSC_lLl170EEEEEvT_m ; -- Begin function _ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__append_with_sizeB8ne180100INS_16__deque_iteratorIS6_PKS6_RSB_PKSC_lLl170EEEEEvT_m
	.weak_def_can_be_hidden	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__append_with_sizeB8ne180100INS_16__deque_iteratorIS6_PKS6_RSB_PKSC_lLl170EEEEEvT_m
	.p2align	2
__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__append_with_sizeB8ne180100INS_16__deque_iteratorIS6_PKS6_RSB_PKSC_lLl170EEEEEvT_m: ; @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE18__append_with_sizeB8ne180100INS_16__deque_iteratorIS6_PKS6_RSB_PKSC_lLl170EEEEEvT_m
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x22, x3
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
	ldp	x9, x10, [x0, #8]
	subs	x8, x10, x9
	asr	x8, x8, #3
	mov	w11, #170                       ; =0xaa
	mov	x12, #-1                        ; =0xffffffffffffffff
	madd	x8, x8, x11, x12
	cmp	x10, x9
	csel	x12, xzr, x8, eq
	ldp	x11, x8, [x0, #32]
	add	x11, x8, x11
	sub	x12, x12, x11
	subs	x1, x3, x12
	b.ls	LBB18_2
; %bb.1:
	mov	x0, x19
	bl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEm
	ldp	x11, x8, [x19, #32]
	ldp	x9, x10, [x19, #8]
	add	x11, x11, x8
LBB18_2:
	mov	x12, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x12, #49345
	umulh	x12, x11, x12
	lsr	x12, x12, #7
	add	x23, x9, x12, lsl #3
	cmp	x10, x9
	b.eq	LBB18_6
; %bb.3:
	ldr	x9, [x23]
	mov	w10, #170                       ; =0xaa
	msub	x10, x12, x10, x11
	mov	w11, #24                        ; =0x18
	madd	x24, x10, x11, x9
	cbz	x22, LBB18_7
LBB18_4:
	ldr	x9, [x23]
	sub	x9, x24, x9
	asr	x9, x9, #3
	mov	x10, #-6148914691236517206      ; =0xaaaaaaaaaaaaaaaa
	movk	x10, #43691
	madd	x9, x9, x10, x22
	cmp	x9, #1
	b.lt	LBB18_8
; %bb.5:
	mov	x10, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x10, #49345
	umulh	x10, x9, x10
	lsr	x10, x10, #7
	add	x22, x23, x10, lsl #3
	ldr	x11, [x22]
	mov	w12, #170                       ; =0xaa
	msub	x9, x10, x12, x9
	mov	w10, #24                        ; =0x18
	madd	x25, x9, x10, x11
	cmp	x24, x25
	b.ne	LBB18_9
	b	LBB18_23
LBB18_6:
	mov	x24, #0                         ; =0x0
	cbnz	x22, LBB18_4
LBB18_7:
	mov	x25, x24
	mov	x22, x23
	cmp	x24, x24
	b.ne	LBB18_9
	b	LBB18_23
LBB18_8:
	mov	w10, #169                       ; =0xa9
	mov	x11, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x11, #49345
	sub	x9, x10, x9
	neg	x10, x9
	umulh	x9, x9, x11
	lsr	x9, x9, #7
	sub	x22, x23, x9, lsl #3
	ldr	x11, [x22]
	mov	w12, #170                       ; =0xaa
	madd	x9, x9, x12, x10
	mov	w10, #24                        ; =0x18
	madd	x9, x9, x10, x11
	add	x25, x9, #4056
	cmp	x24, x25
	b.eq	LBB18_23
LBB18_9:
	mov	x26, #-6148914691236517206      ; =0xaaaaaaaaaaaaaaaa
	movk	x26, #43691
LBB18_10:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB18_15 Depth 2
	mov	x27, x25
	cmp	x23, x22
	b.eq	LBB18_12
; %bb.11:                               ;   in Loop: Header=BB18_10 Depth=1
	ldr	x9, [x23]
	add	x27, x9, #4080
LBB18_12:                               ;   in Loop: Header=BB18_10 Depth=1
	cmp	x24, x27
	b.eq	LBB18_21
; %bb.13:                               ;   in Loop: Header=BB18_10 Depth=1
	mov	x28, #0                         ; =0x0
	b	LBB18_15
LBB18_14:                               ;   in Loop: Header=BB18_15 Depth=2
	add	x28, x28, #24
	add	x8, x24, x28
	cmp	x8, x27
	b.eq	LBB18_20
LBB18_15:                               ;   Parent Loop BB18_10 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	add	x0, x24, x28
	ldrsb	w8, [x21, #23]
	tbnz	w8, #31, LBB18_17
; %bb.16:                               ;   in Loop: Header=BB18_15 Depth=2
	ldr	q0, [x21]
	ldr	x8, [x21, #16]
	str	x8, [x0, #16]
	str	q0, [x0]
	b	LBB18_18
LBB18_17:                               ;   in Loop: Header=BB18_15 Depth=2
	ldp	x1, x2, [x21]
Ltmp137:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm
Ltmp138:
LBB18_18:                               ;   in Loop: Header=BB18_15 Depth=2
	add	x21, x21, #24
	ldr	x8, [x20]
	sub	x8, x21, x8
	cmp	x8, #4080
	b.ne	LBB18_14
; %bb.19:                               ;   in Loop: Header=BB18_15 Depth=2
	ldr	x21, [x20, #8]!
	b	LBB18_14
LBB18_20:                               ;   in Loop: Header=BB18_10 Depth=1
	ldr	x8, [x19, #40]
	sub	x9, x27, x24
	asr	x9, x9, #3
	madd	x8, x9, x26, x8
	str	x8, [x19, #40]
	cmp	x23, x22
	b.ne	LBB18_22
	b	LBB18_23
LBB18_21:                               ;   in Loop: Header=BB18_10 Depth=1
	mov	x27, x24
	sub	x9, x24, x24
	asr	x9, x9, #3
	madd	x8, x9, x26, x8
	str	x8, [x19, #40]
	cmp	x23, x22
	b.eq	LBB18_23
LBB18_22:                               ;   in Loop: Header=BB18_10 Depth=1
	ldr	x24, [x23, #8]!
	cmp	x24, x25
	b.ne	LBB18_10
LBB18_23:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB18_24:
Ltmp139:
	asr	x8, x28, #3
	mov	x9, #-6148914691236517206       ; =0xaaaaaaaaaaaaaaaa
	movk	x9, #43691
	ldr	x10, [x19, #40]
	madd	x8, x8, x9, x10
	str	x8, [x19, #40]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table18:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp137-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp137
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp137-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp138-Ltmp137                ;   Call between Ltmp137 and Ltmp138
	.uleb128 Ltmp139-Lfunc_begin6           ;     jumps to Ltmp139
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp138-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp138             ;   Call between Ltmp138 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEm ; -- Begin function _ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEm
	.globl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEm
	.weak_def_can_be_hidden	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEm
	.p2align	2
__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEm: ; @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEE19__add_back_capacityEm
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #112
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x19, x0
	ldp	x8, x23, [x0, #8]
	subs	x8, x23, x8
	cinc	x9, x1, eq
	mov	x10, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x10, #49345
	umulh	x11, x9, x10
	lsr	x11, x11, #7
	mov	w12, #170                       ; =0xaa
	msub	x9, x11, x12, x9
	cmp	x9, #0
	cinc	x20, x11, ne
	ldr	x9, [x0, #32]
	umulh	x10, x9, x10
	lsr	x10, x10, #7
	cmp	x20, x10
	csel	x25, x20, x10, lo
	cmp	x20, x10
	b.ls	LBB19_5
; %bb.1:
	sub	x28, x20, x25
	ldr	x9, [x19, #24]
	ldr	x10, [x19]
	sub	x9, x9, x10
	asr	x10, x9, #3
	asr	x21, x8, #3
	sub	x8, x10, x21
	cmp	x28, x8
	b.ls	LBB19_23
; %bb.2:
	asr	x8, x9, #2
	add	x9, x28, x21
	cmp	x8, x9
	csel	x20, x8, x9, hi
	cbz	x20, LBB19_26
; %bb.3:
	lsr	x8, x20, #61
	cbnz	x8, LBB19_115
; %bb.4:
	lsl	x0, x20, #3
	bl	__Znwm
	b	LBB19_27
LBB19_5:
	mov	x8, #-170                       ; =0xffffffffffffff56
	madd	x8, x25, x8, x9
	str	x8, [x19, #32]
	cbnz	x25, LBB19_8
	b	LBB19_114
LBB19_6:                                ;   in Loop: Header=BB19_8 Depth=1
	neg	x8, x26
	add	x8, x23, x8, lsl #3
	add	x23, x21, x22
	stp	x8, x23, [x19, #8]
LBB19_7:                                ;   in Loop: Header=BB19_8 Depth=1
	str	x24, [x23]
	ldr	x8, [x19, #16]
	add	x23, x8, #8
	str	x23, [x19, #16]
	subs	x25, x25, #1
	b.eq	LBB19_114
LBB19_8:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB19_18 Depth 2
                                        ;     Child Loop BB19_20 Depth 2
	ldr	x26, [x19, #8]
	mov	x20, x26
	ldr	x24, [x20], #8
	str	x20, [x19, #8]
	ldr	x8, [x19, #24]
	cmp	x23, x8
	b.ne	LBB19_7
; %bb.9:                                ;   in Loop: Header=BB19_8 Depth=1
	ldr	x21, [x19]
	subs	x8, x20, x21
	b.ls	LBB19_12
; %bb.10:                               ;   in Loop: Header=BB19_8 Depth=1
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	asr	x26, x8, #1
	sub	x21, x20, x26, lsl #3
	subs	x22, x23, x20
	b.eq	LBB19_6
; %bb.11:                               ;   in Loop: Header=BB19_8 Depth=1
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memmove
	ldr	x23, [x19, #8]
	b	LBB19_6
LBB19_12:                               ;   in Loop: Header=BB19_8 Depth=1
	subs	x8, x23, x21
	asr	x8, x8, #2
	csinc	x8, x8, xzr, ne
	lsr	x9, x8, #61
	cbnz	x9, LBB19_115
; %bb.13:                               ;   in Loop: Header=BB19_8 Depth=1
	lsr	x27, x8, #2
	lsl	x22, x8, #3
	mov	x0, x22
	bl	__Znwm
	add	x8, x0, x27, lsl #3
	subs	x9, x23, x20
	mov	x23, x8
	b.eq	LBB19_21
; %bb.14:                               ;   in Loop: Header=BB19_8 Depth=1
	and	x10, x9, #0xfffffffffffffff8
	add	x23, x8, x10
	sub	x10, x9, #8
	cmp	x10, #56
	b.hs	LBB19_16
; %bb.15:                               ;   in Loop: Header=BB19_8 Depth=1
	mov	x9, x8
	b	LBB19_20
LBB19_16:                               ;   in Loop: Header=BB19_8 Depth=1
	lsl	x12, x27, #3
	add	x9, x12, x0
	sub	x11, x9, x20
	mov	x9, x8
	cmp	x11, #64
	b.lo	LBB19_20
; %bb.17:                               ;   in Loop: Header=BB19_8 Depth=1
	lsr	x9, x10, #3
	add	x10, x9, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x13, x11, #3
	add	x9, x8, x13
	add	x20, x20, x13
	add	x12, x0, x12
	add	x12, x12, #32
	add	x13, x26, #40
	mov	x14, x11
LBB19_18:                               ;   Parent Loop BB19_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x13, #-32]
	ldp	q2, q3, [x13], #64
	stp	q0, q1, [x12, #-32]
	stp	q2, q3, [x12], #64
	subs	x14, x14, #8
	b.ne	LBB19_18
; %bb.19:                               ;   in Loop: Header=BB19_8 Depth=1
	cmp	x10, x11
	b.eq	LBB19_21
LBB19_20:                               ;   Parent Loop BB19_8 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x20], #8
	str	x10, [x9], #8
	cmp	x9, x23
	b.ne	LBB19_20
LBB19_21:                               ;   in Loop: Header=BB19_8 Depth=1
	add	x9, x0, x22
	stp	x0, x8, [x19]
	stp	x23, x9, [x19, #16]
	cbz	x21, LBB19_7
; %bb.22:                               ;   in Loop: Header=BB19_8 Depth=1
	mov	x0, x21
	bl	__ZdlPv
	ldr	x23, [x19, #16]
	b	LBB19_7
LBB19_23:
	cbz	x28, LBB19_95
LBB19_24:                               ; =>This Inner Loop Header: Depth=1
	ldp	x9, x8, [x19, #16]
	cmp	x8, x9
	b.eq	LBB19_91
; %bb.25:                               ;   in Loop: Header=BB19_24 Depth=1
	mov	w0, #4080                       ; =0xff0
	bl	__Znwm
	str	x0, [sp, #8]
	add	x1, sp, #8
	mov	x0, x19
	bl	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE9push_backEOS7_
	sub	x20, x20, #1
	sub	x28, x28, #1
	cbnz	x28, LBB19_24
	b	LBB19_95
LBB19_26:
	mov	x0, #0                          ; =0x0
LBB19_27:
	mov	x8, #-170                       ; =0xffffffffffffff56
	mul	x8, x25, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	sub	x8, x21, x25
	add	x22, x0, x8, lsl #3
	add	x27, x0, x20, lsl #3
	mov	x24, x22
	mov	x20, x0
	b	LBB19_30
LBB19_28:                               ;   in Loop: Header=BB19_30 Depth=1
	neg	x9, x20
	add	x24, x23, x24
	add	x22, x8, x9, lsl #3
	mov	x20, x26
LBB19_29:                               ;   in Loop: Header=BB19_30 Depth=1
	str	x21, [x24], #8
	subs	x28, x28, #1
	b.eq	LBB19_48
LBB19_30:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB19_46 Depth 2
                                        ;     Child Loop BB19_41 Depth 2
Ltmp140:
	mov	w0, #4080                       ; =0xff0
	bl	__Znwm
Ltmp141:
; %bb.31:                               ;   in Loop: Header=BB19_30 Depth=1
	mov	x21, x0
	cmp	x24, x27
	b.ne	LBB19_29
; %bb.32:                               ;   in Loop: Header=BB19_30 Depth=1
	subs	x8, x22, x20
	b.ls	LBB19_35
; %bb.33:                               ;   in Loop: Header=BB19_30 Depth=1
	mov	x26, x20
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	asr	x20, x8, #1
	sub	x23, x22, x20, lsl #3
	mov	x8, x27
	subs	x24, x27, x22
	b.eq	LBB19_28
; %bb.34:                               ;   in Loop: Header=BB19_30 Depth=1
	mov	x0, x23
	mov	x1, x22
	mov	x2, x24
	bl	_memmove
	mov	x8, x22
	b	LBB19_28
LBB19_35:                               ;   in Loop: Header=BB19_30 Depth=1
	subs	x8, x27, x20
	asr	x8, x8, #2
	csinc	x26, x8, xzr, ne
	lsr	x8, x26, #61
	cbnz	x8, LBB19_116
; %bb.36:                               ;   in Loop: Header=BB19_30 Depth=1
	lsl	x0, x26, #3
Ltmp142:
	mov	x24, x27
	bl	__Znwm
Ltmp143:
; %bb.37:                               ;   in Loop: Header=BB19_30 Depth=1
	mov	x23, x0
	mov	x0, x20
	lsr	x8, x26, #2
	add	x20, x23, x8, lsl #3
	mov	x24, x20
	subs	x9, x27, x22
	b.eq	LBB19_42
; %bb.38:                               ;   in Loop: Header=BB19_30 Depth=1
	and	x10, x9, #0xfffffffffffffff8
	add	x24, x20, x10
	sub	x9, x9, #8
	cmp	x9, #56
	b.lo	LBB19_40
; %bb.39:                               ;   in Loop: Header=BB19_30 Depth=1
	lsl	x12, x8, #3
	add	x8, x12, x23
	sub	x8, x8, x22
	cmp	x8, #64
	b.hs	LBB19_45
LBB19_40:                               ;   in Loop: Header=BB19_30 Depth=1
	mov	x8, x20
	mov	x9, x22
LBB19_41:                               ;   Parent Loop BB19_30 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x9], #8
	str	x10, [x8], #8
	cmp	x8, x24
	b.ne	LBB19_41
LBB19_42:                               ;   in Loop: Header=BB19_30 Depth=1
	add	x27, x23, x26, lsl #3
	cbz	x0, LBB19_44
; %bb.43:                               ;   in Loop: Header=BB19_30 Depth=1
	bl	__ZdlPv
LBB19_44:                               ;   in Loop: Header=BB19_30 Depth=1
	mov	x22, x20
	mov	x20, x23
	b	LBB19_29
LBB19_45:                               ;   in Loop: Header=BB19_30 Depth=1
	lsr	x8, x9, #3
	add	x10, x8, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x9, x11, #3
	add	x8, x20, x9
	add	x9, x22, x9
	add	x12, x23, x12
	add	x12, x12, #32
	add	x13, x22, #32
	mov	x14, x11
LBB19_46:                               ;   Parent Loop BB19_30 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x13, #-32]
	ldp	q2, q3, [x13], #64
	stp	q0, q1, [x12, #-32]
	stp	q2, q3, [x12], #64
	subs	x14, x14, #8
	b.ne	LBB19_46
; %bb.47:                               ;   in Loop: Header=BB19_30 Depth=1
	cmp	x10, x11
	b.ne	LBB19_41
	b	LBB19_42
LBB19_48:
	ldr	x28, [x19, #8]
	cbnz	x25, LBB19_55
; %bb.49:
	mov	x21, x22
LBB19_50:
	ldr	x23, [x19, #16]
	cmp	x23, x28
	b.ne	LBB19_76
LBB19_51:
	ldr	x0, [x19]
	stp	x20, x21, [x19]
	stp	x24, x27, [x19, #16]
	ldr	x8, [x19, #32]
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	add	x8, x8, x9
	str	x8, [x19, #32]
	cbz	x0, LBB19_114
; %bb.52:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	b	__ZdlPv
LBB19_53:                               ;   in Loop: Header=BB19_55 Depth=1
	mov	x21, x22
LBB19_54:                               ;   in Loop: Header=BB19_55 Depth=1
	ldr	x8, [x28]
	str	x8, [x24], #8
	ldr	x8, [x19, #8]
	add	x28, x8, #8
	str	x28, [x19, #8]
	mov	x22, x21
	subs	x25, x25, #1
	b.eq	LBB19_50
LBB19_55:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB19_71 Depth 2
                                        ;     Child Loop BB19_66 Depth 2
	cmp	x24, x27
	b.ne	LBB19_53
; %bb.56:                               ;   in Loop: Header=BB19_55 Depth=1
	subs	x8, x22, x20
	b.ls	LBB19_60
; %bb.57:                               ;   in Loop: Header=BB19_55 Depth=1
	mov	x26, x20
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	asr	x20, x8, #1
	sub	x21, x22, x20, lsl #3
	mov	x8, x27
	subs	x23, x27, x22
	b.eq	LBB19_59
; %bb.58:                               ;   in Loop: Header=BB19_55 Depth=1
	mov	x0, x21
	mov	x1, x22
	mov	x2, x23
	bl	_memmove
	mov	x8, x22
LBB19_59:                               ;   in Loop: Header=BB19_55 Depth=1
	neg	x9, x20
	add	x24, x21, x23
	add	x21, x8, x9, lsl #3
	mov	x20, x26
	b	LBB19_54
LBB19_60:                               ;   in Loop: Header=BB19_55 Depth=1
	subs	x8, x27, x20
	asr	x8, x8, #2
	csinc	x26, x8, xzr, ne
	lsr	x8, x26, #61
	cbnz	x8, LBB19_117
; %bb.61:                               ;   in Loop: Header=BB19_55 Depth=1
	lsl	x0, x26, #3
Ltmp154:
	bl	__Znwm
Ltmp155:
; %bb.62:                               ;   in Loop: Header=BB19_55 Depth=1
	mov	x23, x0
	lsr	x8, x26, #2
	add	x21, x0, x8, lsl #3
	mov	x24, x21
	subs	x9, x27, x22
	b.eq	LBB19_67
; %bb.63:                               ;   in Loop: Header=BB19_55 Depth=1
	and	x10, x9, #0xfffffffffffffff8
	add	x24, x21, x10
	sub	x9, x9, #8
	cmp	x9, #56
	b.lo	LBB19_65
; %bb.64:                               ;   in Loop: Header=BB19_55 Depth=1
	lsl	x12, x8, #3
	add	x8, x12, x23
	sub	x8, x8, x22
	cmp	x8, #64
	b.hs	LBB19_70
LBB19_65:                               ;   in Loop: Header=BB19_55 Depth=1
	mov	x8, x21
	mov	x9, x22
LBB19_66:                               ;   Parent Loop BB19_55 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x9], #8
	str	x10, [x8], #8
	cmp	x8, x24
	b.ne	LBB19_66
LBB19_67:                               ;   in Loop: Header=BB19_55 Depth=1
	add	x27, x23, x26, lsl #3
	cbz	x20, LBB19_69
; %bb.68:                               ;   in Loop: Header=BB19_55 Depth=1
	mov	x0, x20
	bl	__ZdlPv
LBB19_69:                               ;   in Loop: Header=BB19_55 Depth=1
	mov	x20, x23
	b	LBB19_54
LBB19_70:                               ;   in Loop: Header=BB19_55 Depth=1
	lsr	x8, x9, #3
	add	x10, x8, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x9, x11, #3
	add	x8, x21, x9
	add	x9, x22, x9
	add	x12, x23, x12
	add	x12, x12, #32
	add	x13, x22, #32
	mov	x14, x11
LBB19_71:                               ;   Parent Loop BB19_55 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x13, #-32]
	ldp	q2, q3, [x13], #64
	stp	q0, q1, [x12, #-32]
	stp	q2, q3, [x12], #64
	subs	x14, x14, #8
	b.ne	LBB19_71
; %bb.72:                               ;   in Loop: Header=BB19_55 Depth=1
	cmp	x10, x11
	b.ne	LBB19_66
	b	LBB19_67
LBB19_73:                               ;   in Loop: Header=BB19_76 Depth=1
	add	x24, x8, x20, lsl #3
LBB19_74:                               ;   in Loop: Header=BB19_76 Depth=1
	mov	x20, x22
LBB19_75:                               ;   in Loop: Header=BB19_76 Depth=1
	ldr	x8, [x23, #-8]!
	str	x8, [x21, #-8]!
	ldr	x8, [x19, #8]
	cmp	x23, x8
	b.eq	LBB19_51
LBB19_76:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB19_86 Depth 2
                                        ;     Child Loop BB19_88 Depth 2
	cmp	x21, x20
	b.ne	LBB19_75
; %bb.77:                               ;   in Loop: Header=BB19_76 Depth=1
	cmp	x24, x27
	b.hs	LBB19_80
; %bb.78:                               ;   in Loop: Header=BB19_76 Depth=1
	sub	x8, x27, x24
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	mov	x22, x20
	asr	x20, x8, #1
	add	x8, x24, x20, lsl #3
	subs	x9, x24, x22
	sub	x21, x8, x9
	mov	x8, x22
	subs	x2, x24, x22
	b.eq	LBB19_73
; %bb.79:                               ;   in Loop: Header=BB19_76 Depth=1
	mov	x0, x21
	mov	x1, x22
	bl	_memmove
	mov	x8, x24
	b	LBB19_73
LBB19_80:                               ;   in Loop: Header=BB19_76 Depth=1
	subs	x8, x27, x20
	asr	x8, x8, #2
	csinc	x25, x8, xzr, ne
	lsr	x8, x25, #61
	cbnz	x8, LBB19_118
; %bb.81:                               ;   in Loop: Header=BB19_76 Depth=1
	lsl	x0, x25, #3
Ltmp160:
	bl	__Znwm
Ltmp161:
; %bb.82:                               ;   in Loop: Header=BB19_76 Depth=1
	mov	x22, x0
	add	x8, x25, #3
	lsr	x10, x8, #2
	add	x21, x0, x10, lsl #3
	subs	x8, x24, x20
	mov	x24, x21
	b.eq	LBB19_89
; %bb.83:                               ;   in Loop: Header=BB19_76 Depth=1
	and	x9, x8, #0xfffffffffffffff8
	add	x24, x21, x9
	sub	x11, x8, #8
	mov	x8, x21
	mov	x9, x20
	cmp	x11, #56
	b.lo	LBB19_88
; %bb.84:                               ;   in Loop: Header=BB19_76 Depth=1
	lsl	x12, x10, #3
	add	x8, x12, x22
	sub	x10, x8, x20
	mov	x8, x21
	mov	x9, x20
	cmp	x10, #64
	b.lo	LBB19_88
; %bb.85:                               ;   in Loop: Header=BB19_76 Depth=1
	lsr	x8, x11, #3
	add	x10, x8, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x9, x11, #3
	add	x8, x21, x9
	add	x9, x20, x9
	add	x12, x22, x12
	add	x12, x12, #32
	add	x13, x20, #32
	mov	x14, x11
LBB19_86:                               ;   Parent Loop BB19_76 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x13, #-32]
	ldp	q2, q3, [x13], #64
	stp	q0, q1, [x12, #-32]
	stp	q2, q3, [x12], #64
	subs	x14, x14, #8
	b.ne	LBB19_86
; %bb.87:                               ;   in Loop: Header=BB19_76 Depth=1
	cmp	x10, x11
	b.eq	LBB19_89
LBB19_88:                               ;   Parent Loop BB19_76 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x9], #8
	str	x10, [x8], #8
	cmp	x8, x24
	b.ne	LBB19_88
LBB19_89:                               ;   in Loop: Header=BB19_76 Depth=1
	add	x27, x22, x25, lsl #3
	cbz	x20, LBB19_74
; %bb.90:                               ;   in Loop: Header=BB19_76 Depth=1
	mov	x0, x20
	bl	__ZdlPv
	b	LBB19_74
LBB19_91:
	cbz	x28, LBB19_95
; %bb.92:
	mov	x21, #0                         ; =0x0
	mov	w22, #169                       ; =0xa9
LBB19_93:                               ; =>This Inner Loop Header: Depth=1
	mov	w0, #4080                       ; =0xff0
	bl	__Znwm
	str	x0, [sp, #8]
	add	x1, sp, #8
	mov	x0, x19
	bl	__ZNSt3__114__split_bufferIPNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS7_EEE10push_frontEOS7_
	ldp	x9, x8, [x19, #8]
	sub	x8, x8, x9
	cmp	x8, #8
	cinc	x8, x22, ne
	ldr	x9, [x19, #32]
	add	x8, x8, x9
	str	x8, [x19, #32]
	add	x21, x21, #1
	cmp	x28, x21
	b.ne	LBB19_93
; %bb.94:
	mov	x25, x20
	mov	x9, #-170                       ; =0xffffffffffffff56
	madd	x8, x20, x9, x8
	str	x8, [x19, #32]
	cbnz	x20, LBB19_96
	b	LBB19_114
LBB19_95:
	ldr	x8, [x19, #32]
	mov	x9, #-170                       ; =0xffffffffffffff56
	madd	x8, x25, x9, x8
	str	x8, [x19, #32]
	cbz	x25, LBB19_114
LBB19_96:
	ldr	x24, [x19, #16]
	b	LBB19_99
LBB19_97:                               ;   in Loop: Header=BB19_99 Depth=1
	neg	x8, x26
	add	x8, x24, x8, lsl #3
	add	x24, x21, x22
	stp	x8, x24, [x19, #8]
LBB19_98:                               ;   in Loop: Header=BB19_99 Depth=1
	str	x23, [x24]
	ldr	x8, [x19, #16]
	add	x24, x8, #8
	str	x24, [x19, #16]
	subs	x25, x25, #1
	b.eq	LBB19_114
LBB19_99:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB19_109 Depth 2
                                        ;     Child Loop BB19_111 Depth 2
	ldr	x26, [x19, #8]
	mov	x20, x26
	ldr	x23, [x20], #8
	str	x20, [x19, #8]
	ldr	x8, [x19, #24]
	cmp	x24, x8
	b.ne	LBB19_98
; %bb.100:                              ;   in Loop: Header=BB19_99 Depth=1
	ldr	x21, [x19]
	subs	x8, x20, x21
	b.ls	LBB19_103
; %bb.101:                              ;   in Loop: Header=BB19_99 Depth=1
	asr	x8, x8, #3
	cmn	x8, #1
	add	x9, x8, #2
	csinc	x8, x9, x8, lt
	asr	x26, x8, #1
	sub	x21, x20, x26, lsl #3
	subs	x22, x24, x20
	b.eq	LBB19_97
; %bb.102:                              ;   in Loop: Header=BB19_99 Depth=1
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memmove
	ldr	x24, [x19, #8]
	b	LBB19_97
LBB19_103:                              ;   in Loop: Header=BB19_99 Depth=1
	subs	x8, x24, x21
	asr	x8, x8, #2
	csinc	x8, x8, xzr, ne
	lsr	x9, x8, #61
	cbnz	x9, LBB19_115
; %bb.104:                              ;   in Loop: Header=BB19_99 Depth=1
	lsr	x27, x8, #2
	lsl	x22, x8, #3
	mov	x0, x22
	bl	__Znwm
	add	x8, x0, x27, lsl #3
	subs	x9, x24, x20
	mov	x24, x8
	b.eq	LBB19_112
; %bb.105:                              ;   in Loop: Header=BB19_99 Depth=1
	and	x10, x9, #0xfffffffffffffff8
	add	x24, x8, x10
	sub	x10, x9, #8
	cmp	x10, #56
	b.hs	LBB19_107
; %bb.106:                              ;   in Loop: Header=BB19_99 Depth=1
	mov	x9, x8
	b	LBB19_111
LBB19_107:                              ;   in Loop: Header=BB19_99 Depth=1
	lsl	x12, x27, #3
	add	x9, x12, x0
	sub	x11, x9, x20
	mov	x9, x8
	cmp	x11, #64
	b.lo	LBB19_111
; %bb.108:                              ;   in Loop: Header=BB19_99 Depth=1
	lsr	x9, x10, #3
	add	x10, x9, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x13, x11, #3
	add	x9, x8, x13
	add	x20, x20, x13
	add	x12, x0, x12
	add	x12, x12, #32
	add	x13, x26, #40
	mov	x14, x11
LBB19_109:                              ;   Parent Loop BB19_99 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q0, q1, [x13, #-32]
	ldp	q2, q3, [x13], #64
	stp	q0, q1, [x12, #-32]
	stp	q2, q3, [x12], #64
	subs	x14, x14, #8
	b.ne	LBB19_109
; %bb.110:                              ;   in Loop: Header=BB19_99 Depth=1
	cmp	x10, x11
	b.eq	LBB19_112
LBB19_111:                              ;   Parent Loop BB19_99 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x20], #8
	str	x10, [x9], #8
	cmp	x9, x24
	b.ne	LBB19_111
LBB19_112:                              ;   in Loop: Header=BB19_99 Depth=1
	add	x9, x0, x22
	stp	x0, x8, [x19]
	stp	x24, x9, [x19, #16]
	cbz	x21, LBB19_98
; %bb.113:                              ;   in Loop: Header=BB19_99 Depth=1
	mov	x0, x21
	bl	__ZdlPv
	ldr	x24, [x19, #16]
	b	LBB19_98
LBB19_114:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB19_115:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
LBB19_116:
Ltmp145:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp146:
	b	LBB19_128
LBB19_117:
Ltmp157:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp158:
	b	LBB19_128
LBB19_118:
Ltmp163:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp164:
	b	LBB19_128
LBB19_119:
Ltmp165:
	b	LBB19_123
LBB19_120:
Ltmp162:
	b	LBB19_123
LBB19_121:
Ltmp159:
	b	LBB19_123
LBB19_122:
Ltmp156:
LBB19_123:
	mov	x19, x0
	b	LBB19_130
LBB19_124:
Ltmp147:
	bl	___cxa_begin_catch
	cmp	x22, x27
	b.ne	LBB19_126
	b	LBB19_127
LBB19_125:
Ltmp144:
	mov	x27, x24
	bl	___cxa_begin_catch
	cmp	x22, x24
	b.eq	LBB19_127
LBB19_126:                              ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x22], #8
	bl	__ZdlPv
	cmp	x22, x27
	b.ne	LBB19_126
LBB19_127:
Ltmp148:
	bl	___cxa_rethrow
Ltmp149:
LBB19_128:
	brk	#0x1
LBB19_129:
Ltmp150:
	mov	x19, x0
Ltmp151:
	bl	___cxa_end_catch
Ltmp152:
LBB19_130:
	cbz	x20, LBB19_132
; %bb.131:
	mov	x0, x20
	bl	__ZdlPv
LBB19_132:
	mov	x0, x19
	bl	__Unwind_Resume
LBB19_133:
Ltmp153:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table19:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp140-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp140
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp140-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp141-Ltmp140                ;   Call between Ltmp140 and Ltmp141
	.uleb128 Ltmp144-Lfunc_begin7           ;     jumps to Ltmp144
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp141-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Ltmp142-Ltmp141                ;   Call between Ltmp141 and Ltmp142
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp142-Lfunc_begin7           ; >> Call Site 4 <<
	.uleb128 Ltmp143-Ltmp142                ;   Call between Ltmp142 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin7           ;     jumps to Ltmp144
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp143-Lfunc_begin7           ; >> Call Site 5 <<
	.uleb128 Ltmp154-Ltmp143                ;   Call between Ltmp143 and Ltmp154
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp154-Lfunc_begin7           ; >> Call Site 6 <<
	.uleb128 Ltmp155-Ltmp154                ;   Call between Ltmp154 and Ltmp155
	.uleb128 Ltmp156-Lfunc_begin7           ;     jumps to Ltmp156
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp155-Lfunc_begin7           ; >> Call Site 7 <<
	.uleb128 Ltmp160-Ltmp155                ;   Call between Ltmp155 and Ltmp160
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp160-Lfunc_begin7           ; >> Call Site 8 <<
	.uleb128 Ltmp161-Ltmp160                ;   Call between Ltmp160 and Ltmp161
	.uleb128 Ltmp162-Lfunc_begin7           ;     jumps to Ltmp162
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp161-Lfunc_begin7           ; >> Call Site 9 <<
	.uleb128 Ltmp145-Ltmp161                ;   Call between Ltmp161 and Ltmp145
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin7           ; >> Call Site 10 <<
	.uleb128 Ltmp146-Ltmp145                ;   Call between Ltmp145 and Ltmp146
	.uleb128 Ltmp147-Lfunc_begin7           ;     jumps to Ltmp147
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp157-Lfunc_begin7           ; >> Call Site 11 <<
	.uleb128 Ltmp158-Ltmp157                ;   Call between Ltmp157 and Ltmp158
	.uleb128 Ltmp159-Lfunc_begin7           ;     jumps to Ltmp159
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp163-Lfunc_begin7           ; >> Call Site 12 <<
	.uleb128 Ltmp164-Ltmp163                ;   Call between Ltmp163 and Ltmp164
	.uleb128 Ltmp165-Lfunc_begin7           ;     jumps to Ltmp165
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp164-Lfunc_begin7           ; >> Call Site 13 <<
	.uleb128 Ltmp148-Ltmp164                ;   Call between Ltmp164 and Ltmp148
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin7           ; >> Call Site 14 <<
	.uleb128 Ltmp149-Ltmp148                ;   Call between Ltmp148 and Ltmp149
	.uleb128 Ltmp150-Lfunc_begin7           ;     jumps to Ltmp150
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp151-Lfunc_begin7           ; >> Call Site 15 <<
	.uleb128 Ltmp152-Ltmp151                ;   Call between Ltmp151 and Ltmp152
	.uleb128 Ltmp153-Lfunc_begin7           ;     jumps to Ltmp153
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp152-Lfunc_begin7           ; >> Call Site 16 <<
	.uleb128 Lfunc_end7-Ltmp152             ;   Call between Ltmp152 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	cmp	x2, #22
	b.hi	LBB20_3
; %bb.1:
	strb	w20, [x19, #23]
	mov	x22, x19
	cbz	x20, LBB20_5
; %bb.2:
	mov	x0, x19
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
	mov	x22, x19
	b	LBB20_5
LBB20_3:
	mov	x8, #9                          ; =0x9
	movk	x8, #32768, lsl #48
	mov	x9, #30                         ; =0x1e
	movk	x9, #32768, lsl #48
	add	x8, x20, x8
	cmp	x8, x9
	b.ls	LBB20_6
; %bb.4:
	mov	w8, #44                         ; =0x2c
	cmp	x20, #44
	csel	x8, x20, x8, hi
	orr	x8, x8, #0x7
	add	x23, x8, #1
	mov	x0, x23
	bl	__Znwm
	mov	x22, x0
	mov	x1, x21
	mov	x2, x20
	bl	_memcpy
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [x19, #8]
	str	x22, [x19]
LBB20_5:
	strb	wzr, [x22, x20]
	mov	x0, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB20_6:
	mov	x0, x19
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	ldr	x8, [x0, #16]
	and	x9, x8, #0x7fffffffffffffff
	cmp	x9, x2
	b.ls	LBB21_3
; %bb.1:
	ldr	x24, [x19]
	str	x20, [x19, #8]
	cbz	x20, LBB21_11
; %bb.2:
	mov	x0, x24
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
	b	LBB21_11
LBB21_3:
	mov	x22, #-9                        ; =0xfffffffffffffff7
	movk	x22, #32767, lsl #48
	sub	x10, x20, x9
	add	x10, x10, #1
	sub	x11, x22, x9
	cmp	x11, x10
	b.lo	LBB21_14
; %bb.4:
	sub	x25, x9, #1
	mov	x23, x19
	tbnz	x8, #63, LBB21_12
; %bb.5:
	mov	x8, #-14                        ; =0xfffffffffffffff2
	movk	x8, #16383, lsl #48
	cmp	x25, x8
	b.ls	LBB21_13
LBB21_6:
	mov	x0, x22
	bl	__Znwm
	mov	x24, x0
	cbz	x20, LBB21_8
LBB21_7:
	mov	x0, x24
	mov	x1, x21
	mov	x2, x20
	bl	_memcpy
LBB21_8:
	cmp	x25, #22
	b.eq	LBB21_10
; %bb.9:
	mov	x0, x23
	bl	__ZdlPv
LBB21_10:
	orr	x8, x22, #0x8000000000000000
	stp	x20, x8, [x19, #8]
	str	x24, [x19]
LBB21_11:
	strb	wzr, [x24, x20]
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB21_12:
	ldr	x23, [x19]
	mov	x8, #-14                        ; =0xfffffffffffffff2
	movk	x8, #16383, lsl #48
	cmp	x25, x8
	b.hi	LBB21_6
LBB21_13:
	lsl	x8, x25, #1
	cmp	x20, x8
	csel	x8, x20, x8, hi
	mov	w9, #23                         ; =0x17
	and	x10, x8, #0xfffffffffffffff8
	add	x10, x10, #8
	orr	x11, x8, #0x7
	cmp	x11, #23
	csel	x10, x10, x11, eq
	cmp	x8, #23
	csinc	x22, x9, x10, lo
	mov	x0, x22
	bl	__Znwm
	mov	x24, x0
	cbnz	x20, LBB21_7
	b	LBB21_8
LBB21_14:
	mov	x0, x19
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev ; -- Begin function _ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	.globl	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	.p2align	2
__ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev: ; @_ZNSt3__15dequeINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEED2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	ldp	x20, x21, [x0, #8]
	cmp	x21, x20
	b.eq	LBB22_13
; %bb.1:
	mov	x22, x19
	ldr	x9, [x22, #40]!
	ldur	x10, [x22, #-8]
	mov	x11, #-4557430888798830400      ; =0xc0c0c0c0c0c0c0c0
	movk	x11, #49345
	umulh	x8, x10, x11
	lsr	x12, x8, #7
	add	x23, x20, x12, lsl #3
	ldr	x8, [x23]
	mov	w13, #170                       ; =0xaa
	msub	x12, x12, x13, x10
	mov	w14, #24                        ; =0x18
	madd	x25, x12, x14, x8
	add	x9, x9, x10
	umulh	x10, x9, x11
	lsr	x10, x10, #7
	ldr	x11, [x20, x10, lsl #3]
	msub	x9, x10, x13, x9
	madd	x24, x9, x14, x11
	cmp	x25, x24
	b.ne	LBB22_3
	b	LBB22_8
LBB22_2:                                ;   in Loop: Header=BB22_3 Depth=1
	cmp	x25, x24
	b.eq	LBB22_7
LBB22_3:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w9, [x25, #23]
	tbnz	w9, #31, LBB22_5
; %bb.4:                                ;   in Loop: Header=BB22_3 Depth=1
	add	x25, x25, #24
	sub	x9, x25, x8
	cmp	x9, #4080
	b.ne	LBB22_2
	b	LBB22_6
LBB22_5:                                ;   in Loop: Header=BB22_3 Depth=1
	ldr	x0, [x25], #24
	bl	__ZdlPv
	ldr	x8, [x23]
	sub	x9, x25, x8
	cmp	x9, #4080
	b.ne	LBB22_2
LBB22_6:                                ;   in Loop: Header=BB22_3 Depth=1
	ldr	x8, [x23, #8]!
	mov	x25, x8
	b	LBB22_2
LBB22_7:
	ldp	x20, x21, [x19, #8]
LBB22_8:
	str	xzr, [x22]
	sub	x8, x21, x20
	cmp	x8, #17
	b.lo	LBB22_10
LBB22_9:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x20]
	bl	__ZdlPv
	ldp	x8, x21, [x19, #8]
	add	x20, x8, #8
	str	x20, [x19, #8]
	sub	x8, x21, x20
	cmp	x8, #16
	b.hi	LBB22_9
LBB22_10:
	lsr	x8, x8, #3
	cmp	x8, #1
	b.eq	LBB22_14
; %bb.11:
	cmp	x8, #2
	b.ne	LBB22_16
; %bb.12:
	mov	w8, #170                        ; =0xaa
	b	LBB22_15
LBB22_13:
	add	x22, x19, #40
	mov	x21, x20
	str	xzr, [x22]
	sub	x8, x20, x20
	cmp	x8, #17
	b.hs	LBB22_9
	b	LBB22_10
LBB22_14:
	mov	w8, #85                         ; =0x55
LBB22_15:
	str	x8, [x19, #32]
LBB22_16:
	cmp	x20, x21
	b.eq	LBB22_20
LBB22_17:                               ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x20], #8
	bl	__ZdlPv
	cmp	x20, x21
	b.ne	LBB22_17
; %bb.18:
	ldp	x9, x8, [x19, #8]
	cmp	x8, x9
	b.eq	LBB22_20
; %bb.19:
	sub	x9, x9, x8
	add	x9, x9, #7
	and	x9, x9, #0xfffffffffffffff8
	add	x8, x8, x9
	str	x8, [x19, #16]
LBB22_20:
	ldr	x0, [x19]
	cbz	x0, LBB22_22
; %bb.21:
	bl	__ZdlPv
LBB22_22:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp166:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp167:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB23_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB23_7
; %bb.3:
Ltmp169:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp170:
; %bb.4:
Ltmp171:
Lloh44:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh45:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp172:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp173:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp174:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB23_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp176:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp177:
; %bb.8:
	cbnz	x0, LBB23_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
	orr	w1, w8, w9
Ltmp179:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp180:
LBB23_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB23_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB23_12:
Ltmp181:
	b	LBB23_15
LBB23_13:
Ltmp175:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB23_16
LBB23_14:
Ltmp178:
LBB23_15:
	mov	x20, x0
LBB23_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB23_18
LBB23_17:
Ltmp168:
	mov	x20, x0
LBB23_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp182:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp183:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB23_11
LBB23_20:
Ltmp184:
	mov	x19, x0
Ltmp185:
	bl	___cxa_end_catch
Ltmp186:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB23_22:
Ltmp187:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh44, Lloh45
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table23:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp166-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp167-Ltmp166                ;   Call between Ltmp166 and Ltmp167
	.uleb128 Ltmp168-Lfunc_begin8           ;     jumps to Ltmp168
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp169-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp170-Ltmp169                ;   Call between Ltmp169 and Ltmp170
	.uleb128 Ltmp178-Lfunc_begin8           ;     jumps to Ltmp178
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp171-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Ltmp174-Ltmp171                ;   Call between Ltmp171 and Ltmp174
	.uleb128 Ltmp175-Lfunc_begin8           ;     jumps to Ltmp175
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp176-Lfunc_begin8           ; >> Call Site 4 <<
	.uleb128 Ltmp177-Ltmp176                ;   Call between Ltmp176 and Ltmp177
	.uleb128 Ltmp178-Lfunc_begin8           ;     jumps to Ltmp178
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp179-Lfunc_begin8           ; >> Call Site 5 <<
	.uleb128 Ltmp180-Ltmp179                ;   Call between Ltmp179 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin8           ;     jumps to Ltmp181
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp180-Lfunc_begin8           ; >> Call Site 6 <<
	.uleb128 Ltmp182-Ltmp180                ;   Call between Ltmp180 and Ltmp182
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp182-Lfunc_begin8           ; >> Call Site 7 <<
	.uleb128 Ltmp183-Ltmp182                ;   Call between Ltmp182 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin8           ;     jumps to Ltmp184
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp183-Lfunc_begin8           ; >> Call Site 8 <<
	.uleb128 Ltmp185-Ltmp183                ;   Call between Ltmp183 and Ltmp185
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp185-Lfunc_begin8           ; >> Call Site 9 <<
	.uleb128 Ltmp186-Ltmp185                ;   Call between Ltmp185 and Ltmp186
	.uleb128 Ltmp187-Lfunc_begin8           ;     jumps to Ltmp187
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp186-Lfunc_begin8           ; >> Call Site 10 <<
	.uleb128 Lfunc_end8-Ltmp186             ;   Call between Ltmp186 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB24_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB24_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB24_15
LBB24_3:
	cmp	x23, #1
	b.lt	LBB24_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB24_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB24_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB24_8
LBB24_7:
	and	x8, x23, #0xfffffffffffffff8
	add	x8, x8, #8
	orr	x9, x23, #0x7
	cmp	x9, #23
	csel	x8, x8, x9, eq
	add	x26, x8, #1
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB24_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp188:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp189:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB24_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB24_15
	b	LBB24_12
LBB24_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB24_15
LBB24_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB24_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB24_15
LBB24_14:
	str	xzr, [x20, #24]
	b	LBB24_16
LBB24_15:
	mov	x19, #0                         ; =0x0
LBB24_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB24_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
LBB24_18:
Ltmp190:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB24_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB24_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table24:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9      ; >> Call Site 1 <<
	.uleb128 Ltmp188-Lfunc_begin9           ;   Call between Lfunc_begin9 and Ltmp188
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp189-Ltmp188                ;   Call between Ltmp188 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin9           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp189-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Lfunc_end9-Ltmp189             ;   Call between Ltmp189 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.4:                               ; @.str.4
	.asciz	"**"

l_.str.6:                               ; @.str.6
	.asciz	" "

l_.str.7:                               ; @.str.7
	.asciz	"basic_string"

.subsections_via_symbols
