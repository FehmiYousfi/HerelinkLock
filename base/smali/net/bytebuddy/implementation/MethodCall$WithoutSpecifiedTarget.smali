.class public Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;
.super Lnet/bytebuddy/implementation/MethodCall;
.source "MethodCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithoutSpecifiedTarget"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator;)V
    .locals 8

    .line 2244
    sget-object v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    .line 2246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForContextualInvocation;

    sget-object v5, Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;->RETURNING:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    sget-object v6, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v7, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->STATIC:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, p0

    move-object v1, p1

    .line 2244
    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator;Lnet/bytebuddy/implementation/MethodCall$TargetHandler;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method


# virtual methods
.method public on(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 1

    .line 2261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->on(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public on(Ljava/lang/Object;Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lnet/bytebuddy/implementation/MethodCall;"
        }
    .end annotation

    .line 2273
    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForValue;

    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;

    invoke-direct {v0, p2}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, p1, v0}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForValue;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->argumentLoaders:Ljava/util/List;

    new-instance v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation;

    invoke-direct {v4, p2}, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation;-><init>(Ljava/lang/Class;)V

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator;Lnet/bytebuddy/implementation/MethodCall$TargetHandler;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public onArgument(I)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    if-ltz p1, :cond_0

    .line 2292
    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodParameter;

    invoke-direct {v2, p1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodParameter;-><init>(I)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator;Lnet/bytebuddy/implementation/MethodCall$TargetHandler;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8

    .line 2290
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An argument index cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDefault()Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    .line 2352
    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    sget-object v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForDefaultMethodInvocation;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator;Lnet/bytebuddy/implementation/MethodCall$TargetHandler;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public onField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 1

    .line 2308
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/FieldLocator$ForClassHierarchy$Factory;

    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->onField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodCall;

    move-result-object p1

    return-object p1
.end method

.method public onField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    .line 2319
    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    new-instance v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField;

    invoke-direct {v2, p1, p2}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForField;-><init>(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)V

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForVirtualInvocation$WithImplicitType;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator;Lnet/bytebuddy/implementation/MethodCall$TargetHandler;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method

.method public onSuper()Lnet/bytebuddy/implementation/MethodCall;
    .locals 9

    .line 2337
    new-instance v8, Lnet/bytebuddy/implementation/MethodCall;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->methodLocator:Lnet/bytebuddy/implementation/MethodCall$MethodLocator;

    sget-object v2, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForSelfOrStaticInvocation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->argumentLoaders:Ljava/util/List;

    sget-object v4, Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;->INSTANCE:Lnet/bytebuddy/implementation/MethodCall$MethodInvoker$ForSuperMethodInvocation;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->terminationHandler:Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodCall$WithoutSpecifiedTarget;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/implementation/MethodCall;-><init>(Lnet/bytebuddy/implementation/MethodCall$MethodLocator;Lnet/bytebuddy/implementation/MethodCall$TargetHandler;Ljava/util/List;Lnet/bytebuddy/implementation/MethodCall$MethodInvoker;Lnet/bytebuddy/implementation/MethodCall$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-object v8
.end method
