.class public Lnet/bytebuddy/implementation/MethodDelegation$Appender;
.super Ljava/lang/Object;
.source "MethodDelegation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodDelegation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Appender"
.end annotation


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

.field private final implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

.field private final processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;

.field private final terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;)V
    .locals 0

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    .line 1024
    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;

    .line 1025
    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    .line 1026
    iput-object p4, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 1027
    iput-object p5, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 10

    .line 1032
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    .line 1033
    invoke-interface {v2, p3}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;->prepare(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    .line 1034
    invoke-interface {v2}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;->invoke()Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;

    move-result-object v8

    iget-object v9, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v6, p3

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;->bind(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodInvoker;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$MethodBinding;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 1035
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    .line 1036
    new-instance p2, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result p1

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object p2
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 981
    instance-of p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 981
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    if-nez v1, :cond_b

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_4
    return v2

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 981
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->implementationTarget:Lnet/bytebuddy/implementation/Implementation$Target;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->processor:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;->compiled:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method
