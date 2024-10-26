.class public Lnet/bytebuddy/implementation/MethodDelegation;
.super Ljava/lang/Object;
.source "MethodDelegation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;,
        Lnet/bytebuddy/implementation/MethodDelegation$Appender;,
        Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;
    }
.end annotation


# instance fields
.field private final ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

.field private final parameterBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            ")V"
        }
    .end annotation

    .line 205
    sget-object v4, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;->RETURNING:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder<",
            "*>;>;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;",
            "Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            ")V"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    .line 223
    iput-object p2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    .line 224
    iput-object p4, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    .line 225
    iput-object p3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    .line 226
    iput-object p5, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    return-void
.end method

.method public static to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodDelegation;"
        }
    .end annotation

    .line 240
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 268
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 298
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 314
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 329
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 361
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 378
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 345
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Ljava/lang/reflect/Type;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Object;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 283
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Ljava/lang/Object;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 254
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toConstructor(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/MethodDelegation;"
        }
    .end annotation

    .line 392
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toConstructor(Ljava/lang/Class;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toConstructor(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 406
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toConstructor(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 420
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 435
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 466
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;
    .locals 1

    .line 450
    invoke-static {}, Lnet/bytebuddy/implementation/MethodDelegation;->withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;->toField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/implementation/MethodDelegation;

    move-result-object p0

    return-object p0
.end method

.method public static withDefaultConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 3

    .line 477
    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    sget-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;->DEFAULT:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    sget-object v2, Lnet/bytebuddy/implementation/bind/annotation/TargetMethodAnnotationDrivenBinder$ParameterBinder;->DEFAULTS:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;)V

    return-object v0
.end method

.method public static withEmptyConfiguration()Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;
    .locals 3

    .line 488
    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;

    sget-object v1, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;->INSTANCE:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver$NoOp;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/MethodDelegation$WithCustomProperties;-><init>(Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 9

    .line 507
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/Implementation;

    new-instance v8, Lnet/bytebuddy/implementation/MethodDelegation;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    sget-object v6, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;->DROPPING:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler$Default;

    iget-object v7, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/Implementation$Compound;-><init>([Lnet/bytebuddy/implementation/Implementation;)V

    return-object v0
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 8

    .line 521
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;->compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;

    move-result-object v7

    .line 522
    new-instance v0, Lnet/bytebuddy/implementation/MethodDelegation$Appender;

    new-instance v4, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;

    .line 523
    invoke-interface {v7}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;->getRecords()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    invoke-direct {v4, v1, v2}, Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;-><init>(Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;)V

    iget-object v5, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v6, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/implementation/MethodDelegation$Appender;-><init>(Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$Processor;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate$Compiled;)V

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 165
    instance-of p1, p1, Lnet/bytebuddy/implementation/MethodDelegation;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 165
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/implementation/MethodDelegation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/implementation/MethodDelegation;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/implementation/MethodDelegation;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    iget-object v3, p1, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

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
    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

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

    .line 165
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

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

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

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

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    .line 516
    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 7

    .line 498
    new-instance v6, Lnet/bytebuddy/implementation/MethodDelegation;

    iget-object v1, p0, Lnet/bytebuddy/implementation/MethodDelegation;->implementationDelegate:Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodDelegation;->parameterBinders:Ljava/util/List;

    iget-object v3, p0, Lnet/bytebuddy/implementation/MethodDelegation;->ambiguityResolver:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;

    iget-object v4, p0, Lnet/bytebuddy/implementation/MethodDelegation;->terminationHandler:Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/MethodDelegation;-><init>(Lnet/bytebuddy/implementation/MethodDelegation$ImplementationDelegate;Ljava/util/List;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$AmbiguityResolver;Lnet/bytebuddy/implementation/bind/MethodDelegationBinder$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)V

    return-object v6
.end method
