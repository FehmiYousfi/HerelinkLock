.class public Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;
.super Ljava/lang/Object;
.source "ArrayAccess.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Loader"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getArrayAccess()Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;
    .locals 1

    .line 176
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 2

    .line 166
    iget-object p2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->access$000(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 167
    iget-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->access$100(Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;)Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p1

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    new-instance p2, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    invoke-virtual {p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->getArrayAccess()Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;

    invoke-direct {p1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->getArrayAccess()Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    move-result-object p1

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
    .locals 1

    .line 181
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess$Loader;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayAccess;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
