.class public Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$MethodSizeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;
    }
.end annotation


# instance fields
.field private final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private localVariableLength:I

.field private final requiredTypes:Lnet/bytebuddy/description/type/TypeList;

.field private stackSize:I

.field private final yieldedTypes:Lnet/bytebuddy/description/type/TypeList;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;)V
    .locals 0

    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 761
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 762
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    return-void
.end method

.method static synthetic access$000(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;)I
    .locals 0

    .line 725
    iget p0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    return p0
.end method

.method static synthetic access$002(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;I)I
    .locals 0

    .line 725
    iput p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    return p1
.end method

.method static synthetic access$100(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;)I
    .locals 0

    .line 725
    iget p0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

    return p0
.end method

.method static synthetic access$102(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;I)I
    .locals 0

    .line 725
    iput p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

    return p1
.end method

.method static synthetic access$200(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;)Lnet/bytebuddy/description/method/MethodDescription;
    .locals 0

    .line 725
    iget-object p0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    return-object p0
.end method

.method protected static of(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;I)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;I)",
            "Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;"
        }
    .end annotation

    and-int/lit8 p3, p3, 0x3

    if-eqz p3, :cond_0

    .line 778
    sget-object p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$NoOp;

    goto :goto_0

    :cond_0
    new-instance p3, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    new-instance p1, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {p1, p2}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    invoke-direct {p3, p0, v0, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;)V

    move-object p0, p3

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bindEntry(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 4

    .line 785
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    .line 786
    new-instance v0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;

    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v1}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    new-instance v2, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;)V

    return-object v0
.end method

.method public bindExit(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForAdvice;
    .locals 3

    .line 791
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v1

    if-eqz p2, :cond_0

    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    goto :goto_0

    :cond_0
    sget-object p2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    :goto_0
    invoke-virtual {v1, p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->maximum(Lnet/bytebuddy/implementation/bytecode/StackSize;)Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object p2

    .line 793
    invoke-virtual {p2}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result p2

    .line 791
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    .line 794
    new-instance p2, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;

    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    invoke-static {v1, v2}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Empty;

    invoke-direct {v1}, Lnet/bytebuddy/description/type/TypeList$Empty;-><init>()V

    invoke-direct {p2, p0, p1, v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeList;Lnet/bytebuddy/description/type/TypeList;)V

    return-object p2
.end method

.method public compoundLocalVariableLength(I)I
    .locals 2

    .line 804
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->requiredTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 805
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->getStackSize()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->yieldedTypes:Lnet/bytebuddy/description/type/TypeList;

    .line 806
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->getStackSize()I

    move-result v1

    add-int/2addr p1, v1

    .line 804
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public compoundStackSize(I)I
    .locals 1

    .line 799
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->stackSize:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public requireLocalVariableLength(I)V
    .locals 1

    .line 811
    iget v0, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->localVariableLength:I

    return-void
.end method
