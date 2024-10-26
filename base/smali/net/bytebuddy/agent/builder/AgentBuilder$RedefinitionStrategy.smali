.class public abstract enum Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.super Ljava/lang/Enum;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "RedefinitionStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionStrategy;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionScheduler;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field public static final enum DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field public static final enum REDEFINITION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

.field public static final enum RETRANSFORMATION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;


# instance fields
.field private final enabled:Z

.field private final retransforming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3649
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$1;

    const/4 v1, 0x0

    const-string v2, "DISABLED"

    invoke-direct {v0, v2, v1, v1, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$1;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 3677
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$2;

    const/4 v2, 0x1

    const-string v3, "REDEFINITION"

    invoke-direct {v0, v3, v2, v2, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$2;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->REDEFINITION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 3707
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$3;

    const/4 v3, 0x2

    const-string v4, "RETRANSFORMATION"

    invoke-direct {v0, v4, v3, v2, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$3;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->RETRANSFORMATION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 3644
    sget-object v4, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->DISABLED:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    aput-object v4, v0, v1

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->REDEFINITION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->RETRANSFORMATION:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 3737
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3738
    iput-boolean p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->enabled:Z

    .line 3739
    iput-boolean p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->retransforming:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZZLnet/bytebuddy/agent/builder/AgentBuilder$1;)V
    .locals 0

    .line 3644
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
    .locals 1

    .line 3644
    const-class v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
    .locals 1

    .line 3644
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->$VALUES:[Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    invoke-virtual {v0}, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)V
    .locals 18

    move-object/from16 v10, p2

    .line 3804
    invoke-virtual/range {p0 .. p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->check(Ljava/lang/instrument/Instrumentation;)V

    .line 3805
    invoke-virtual/range {p0 .. p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->make()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;

    move-result-object v11

    .line 3806
    invoke-interface/range {p1 .. p1}, Ljava/lang/instrument/Instrumentation;->getAllLoadedClasses()[Ljava/lang/Class;

    move-result-object v12

    array-length v13, v12

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_4

    aget-object v9, v12, v15

    move-object/from16 v8, p8

    .line 3807
    invoke-virtual {v8, v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->isInstrumented(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    move-object/from16 v8, p10

    goto/16 :goto_6

    .line 3810
    :cond_0
    invoke-static {v9}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v7

    const/4 v6, 0x1

    .line 3812
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object/from16 v5, p5

    invoke-interface {v5, v0, v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v4, p4

    invoke-interface {v4, v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;->typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3817
    :try_start_1
    invoke-static {v9}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v1, p9

    move-object/from16 v16, v3

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, p3

    move v14, v6

    move-object v6, v0

    move-object/from16 v17, v7

    :try_start_2
    invoke-interface/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->apply(Ljava/lang/String;Ljava/lang/Class;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    move-object/from16 v7, p1

    .line 3821
    invoke-interface {v7, v9}, Ljava/lang/instrument/Instrumentation;->isModifiableClass(Ljava/lang/Class;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_1

    move v0, v14

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    move-object v1, v11

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p2

    move-object v6, v9

    move-object v7, v9

    move-object/from16 v8, v17

    move-object v14, v9

    move v9, v0

    .line 3814
    :try_start_3
    invoke-virtual/range {v1 .. v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->consider(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/utility/JavaModule;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    :goto_3
    move-object v14, v9

    .line 3823
    :goto_4
    :try_start_4
    invoke-interface/range {p9 .. p9}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->isLoadedFirst()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v1, :cond_2

    move-object/from16 v8, p10

    :try_start_5
    invoke-interface {v8, v14, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;->isFallback(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3827
    invoke-static {v14}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v5

    move-object v1, v11

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p2

    move-object v6, v14

    move-object/from16 v7, v17

    .line 3824
    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->consider(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class;Lnet/bytebuddy/utility/JavaModule;)V

    goto :goto_6

    :cond_2
    move-object/from16 v8, p10

    .line 3831
    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v8, p10

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v8, p10

    move-object/from16 v17, v7

    move-object v14, v9

    :goto_5
    move-object v6, v0

    .line 3837
    :try_start_6
    invoke-static {v14}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v1, p2

    move-object/from16 v4, v17

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 3839
    :try_start_7
    invoke-static {v14}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object/from16 v2, v17

    const/4 v3, 0x1

    invoke-interface {v10, v0, v1, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object/from16 v2, v17

    invoke-static {v14}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v10, v1, v3, v2, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :catchall_7
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_4
    move-object v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 3846
    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)V

    return-void
.end method

.method protected abstract check(Ljava/lang/instrument/Instrumentation;)V
.end method

.method protected isEnabled()Z
    .locals 1

    .line 3765
    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->enabled:Z

    return v0
.end method

.method protected isRetransforming()Z
    .locals 1

    .line 3749
    iget-boolean v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->retransforming:Z

    return v0
.end method

.method protected abstract make()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.end method
