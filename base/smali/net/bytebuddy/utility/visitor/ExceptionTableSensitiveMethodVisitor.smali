.class public abstract Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "ExceptionTableSensitiveMethodVisitor.java"


# instance fields
.field private trigger:Z


# direct methods
.method protected constructor <init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->trigger:Z

    return-void
.end method

.method private considerEndOfExceptionTable()V
    .locals 1

    .line 32
    iget-boolean v0, p0, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->trigger:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->trigger:Z

    .line 34
    invoke-virtual {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onAfterExceptionTable()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract onAfterExceptionTable()V
.end method

.method protected onVisitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onVisitIincInsn(II)V
    .locals 0

    .line 231
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method protected onVisitInsn(I)V
    .locals 0

    .line 297
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method protected onVisitIntInsn(II)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIntInsn(II)V

    return-void
.end method

.method protected varargs onVisitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onVisitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method protected onVisitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method protected onVisitLdcInsn(Ljava/lang/Object;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method protected onVisitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 266
    invoke-super {p0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method protected onVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 166
    invoke-super/range {p0 .. p5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected onVisitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0

    .line 282
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method protected varargs onVisitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method protected onVisitTypeInsn(ILjava/lang/String;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method protected onVisitVarInsn(II)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public final visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 112
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final visitIincInsn(II)V
    .locals 0

    .line 220
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 221
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitIincInsn(II)V

    return-void
.end method

.method public final visitInsn(I)V
    .locals 0

    .line 287
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 288
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitInsn(I)V

    return-void
.end method

.method public final visitIntInsn(II)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 64
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitIntInsn(II)V

    return-void
.end method

.method public final varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 172
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public final visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 190
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public final visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 48
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public final visitLdcInsn(Ljava/lang/Object;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 206
    invoke-virtual {p0, p1}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public final visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 255
    invoke-virtual {p0, p1, p2, p3}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public final visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 131
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 153
    invoke-virtual/range {p0 .. p5}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0

    .line 271
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 272
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public final varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 237
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public final visitTypeInsn(ILjava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 96
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public final visitVarInsn(II)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->considerEndOfExceptionTable()V

    .line 80
    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;->onVisitVarInsn(II)V

    return-void
.end method
