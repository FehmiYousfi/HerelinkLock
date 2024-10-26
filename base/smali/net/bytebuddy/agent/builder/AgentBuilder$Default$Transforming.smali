.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Extendable;
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Transforming"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;",
        ">;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Extendable;",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
    }
.end annotation


# instance fields
.field private final decorator:Z

.field private final rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

.field final synthetic this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

.field private final transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V
    .locals 0

    .line 9440
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;)V

    .line 9441
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    .line 9442
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    .line 9443
    iput-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->decorator:Z

    return-void
.end method

.method private getOuter()Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
    .locals 1

    .line 9495
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    return-object v0
.end method


# virtual methods
.method public and(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 4

    .line 9481
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    new-instance v2, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Conjunction;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-direct {v2, v3, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Conjunction;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-boolean v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->decorator:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V

    return-object v0
.end method

.method public bridge synthetic and(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable;
    .locals 0

    .line 9416
    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->and(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public asDecorator()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 5

    .line 9476
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 9500
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->decorator:Z

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;

    iget-boolean v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->decorator:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    .line 9502
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-object v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    .line 9503
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    .line 9504
    invoke-direct {p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->getOuter()Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .line 9509
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 9510
    iget-boolean v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->decorator:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9511
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9512
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 28

    move-object/from16 v0, p0

    .line 9448
    new-instance v21, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    move-object/from16 v1, v21

    iget-object v2, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v2, v2, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v3, v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v4, v4, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v5, v5, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v6, v6, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    iget-object v7, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v7, v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v8, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v8, v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    iget-object v9, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v9, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    iget-object v10, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v10, v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    iget-object v11, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v11, v11, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionBatchAllocator:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;

    iget-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v12, v12, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionListener:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    iget-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v13, v13, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->redefinitionResubmissionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;

    iget-object v14, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v14, v14, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->bootstrapInjectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;

    iget-object v15, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v15, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    move-object/from16 v22, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v1, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    move-object/from16 v16, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v1, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->installationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy;

    move-object/from16 v17, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v1, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    move-object/from16 v18, v1

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v1, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->ignoredTypeMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v19, v1

    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;

    move-object/from16 v20, v1

    move-object/from16 v23, v2

    const/4 v2, 0x2

    new-array v2, v2, [Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    move-object/from16 v24, v3

    new-instance v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple;

    move-object/from16 v25, v4

    iget-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object/from16 v26, v5

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    move-object/from16 v27, v6

    iget-boolean v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->decorator:Z

    invoke-direct {v3, v4, v5, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Simple;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v3, v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->transformation:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$Compound;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    invoke-direct/range {v1 .. v20}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;-><init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;)V

    return-object v21
.end method

.method public or(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 4

    .line 9486
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    new-instance v2, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    invoke-direct {v2, v3, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V

    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-boolean v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->decorator:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V

    return-object v0
.end method

.method public bridge synthetic or(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Matchable;
    .locals 0

    .line 9416
    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->or(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Extendable;
    .locals 7

    .line 9471
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->this$0:Lnet/bytebuddy/agent/builder/AgentBuilder$Default;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->rawMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    new-instance v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;

    const/4 v4, 0x2

    new-array v4, v4, [Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->transformer:Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$Compound;-><init>([Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;)V

    iget-boolean p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;->decorator:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transforming;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;Z)V

    return-object v0
.end method
