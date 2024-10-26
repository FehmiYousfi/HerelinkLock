.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAdvice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;
    }
.end annotation


# instance fields
.field private final advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

.field private final poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1824
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;)V
    .locals 9

    .line 1833
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1834
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/Removal;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    sget-object v4, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v5, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    sget-object v6, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    sget-object v7, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->STRONG:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    .line 1839
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    .line 1833
    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;",
            ">;)V"
        }
    .end annotation

    .line 1859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1860
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    .line 1861
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1862
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 1863
    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 1864
    iput-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    .line 1865
    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 1866
    iput-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public advice(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 1976
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object p1

    return-object p1
.end method

.method public advice(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 2005
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object p1

    return-object p1
.end method

.method public advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 1987
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    new-instance v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForUnifiedAdvice;

    invoke-direct {v7, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForUnifiedAdvice;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)V

    .line 1993
    invoke-static {v0, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 2017
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    new-instance v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;

    invoke-direct {v7, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-static {v0, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 1782
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1782
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

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
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    if-nez v1, :cond_b

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    :goto_4
    return v2

    :cond_c
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    goto :goto_5

    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    :goto_5
    return v2

    :cond_e
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    if-nez v1, :cond_f

    if-eqz p1, :cond_10

    goto :goto_6

    :cond_f
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    :goto_6
    return v2

    :cond_10
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1782
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

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

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    mul-int/2addr v0, v2

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    mul-int/2addr v0, v2

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 1959
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    new-instance v4, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 1962
    invoke-static {v0, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v4, p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>(Ljava/util/List;)V

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public varargs include([Ljava/lang/ClassLoader;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 4

    .line 1935
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1936
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1937
    invoke-static {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1939
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object p1

    return-object p1
.end method

.method public varargs include([Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 0

    .line 1949
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 1874
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    invoke-interface {v2, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    const/4 v3, 0x1

    aput-object p4, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    .line 1875
    iget-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    invoke-interface {p4, v0, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;->typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object p3

    .line 1876
    new-instance p4, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {p4}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    .line 1877
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;

    .line 1878
    invoke-virtual {v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;->getMatcher()Lnet/bytebuddy/matcher/LatentMatcher;

    move-result-object v5

    invoke-interface {v5, p2}, Lnet/bytebuddy/matcher/LatentMatcher;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v5

    new-array v6, v3, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-virtual {v4, v7, p3, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;->resolve(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v4

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 1879
    invoke-virtual {v4, v7}, Lnet/bytebuddy/asm/Advice;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/asm/Advice;

    move-result-object v4

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1880
    invoke-virtual {v4, v7}, Lnet/bytebuddy/asm/Advice;->withExceptionHandler(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice;

    move-result-object v4

    aput-object v4, v6, v2

    .line 1878
    invoke-virtual {p4, v5, v6}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p4

    goto :goto_0

    .line 1882
    :cond_0
    invoke-interface {p1, p4}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9

    .line 1903
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9

    .line 1892
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public with(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9

    .line 1925
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public withExceptionHandler(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9

    .line 1914
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method
