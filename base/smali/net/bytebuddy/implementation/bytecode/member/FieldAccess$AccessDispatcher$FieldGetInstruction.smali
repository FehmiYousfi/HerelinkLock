.class public Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;
.super Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;
.source "FieldAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FieldGetInstruction"
.end annotation


# instance fields
.field final synthetic this$1:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;)V
    .locals 1

    .line 260
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;->this$1:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$AbstractFieldInstruction;-><init>(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$1;)V

    return-void
.end method

.method private getAccessDispatcher()Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;
    .locals 1

    .line 290
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;->this$1:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 276
    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;->getAccessDispatcher()Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;

    invoke-direct {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;->getAccessDispatcher()Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method protected getOpcode()I
    .locals 1

    .line 264
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;->this$1:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    iget-object v0, v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->this$0:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->access$200(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 281
    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;->getAccessDispatcher()Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method protected resolveSize(Lnet/bytebuddy/implementation/bytecode/StackSize;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 269
    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p1

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher$FieldGetInstruction;->this$1:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;

    iget-object v0, v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$AccessDispatcher;->this$0:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->access$300(Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 270
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-direct {v0, p1, p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method
