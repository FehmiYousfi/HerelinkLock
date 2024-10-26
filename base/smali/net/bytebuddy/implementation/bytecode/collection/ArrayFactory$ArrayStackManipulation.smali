.class public Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;
.super Ljava/lang/Object;
.source "ArrayFactory.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ArrayStackManipulation"
.end annotation


# instance fields
.field private final stackManipulations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            ">;)V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    return-void
.end method

.method private getArrayFactory()Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;
    .locals 1

    .line 299
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 5

    .line 278
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {v1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->access$000(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/16 v4, 0x59

    .line 283
    invoke-virtual {p1, v4}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 284
    sget-object v4, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v4}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    .line 285
    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/IntegerConstant;->forValue(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 286
    invoke-interface {v3, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->access$000(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;->getStorageOpcode()I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 288
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->access$100(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->aggregate(Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;

    .line 305
    invoke-direct {p1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->getArrayFactory()Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    .line 306
    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    .line 311
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 268
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->stackManipulations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 269
    invoke-interface {v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 273
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayStackManipulation;->this$0:Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;->access$000(Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory;)Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/collection/ArrayFactory$ArrayCreator;->isValid()Z

    move-result v0

    return v0
.end method
