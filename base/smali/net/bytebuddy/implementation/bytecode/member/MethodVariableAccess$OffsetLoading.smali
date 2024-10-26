.class public Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;
.super Ljava/lang/Object;
.source "MethodVariableAccess.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OffsetLoading"
.end annotation


# instance fields
.field private final offset:I

.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;I)V
    .locals 0

    .line 327
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->offset:I

    return-void
.end method

.method private getMethodVariableAccess()Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;
    .locals 1

    .line 348
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 338
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->access$000(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;)I

    move-result p2

    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->offset:I

    invoke-virtual {p1, p2, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 339
    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->access$100(Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;

    .line 354
    invoke-direct {p1}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->getMethodVariableAccess()Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->offset:I

    iget p1, p1, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->offset:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 360
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->this$0:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->hashCode()I

    move-result v0

    iget v1, p0, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess$OffsetLoading;->offset:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
