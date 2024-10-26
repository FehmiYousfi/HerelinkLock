.class public Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation


# instance fields
.field private final locationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            ">;)V"
        }
    .end annotation

    .line 3507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    .line 3509
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 3510
    instance-of v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    if-eqz v1, :cond_1

    .line 3511
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    iget-object v0, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3512
    :cond_1
    instance-of v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    if-nez v1, :cond_0

    .line 3513
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)V
    .locals 0

    .line 3499
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 3485
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    return p1
.end method

.method public classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 3

    .line 3520
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3521
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 3522
    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3524
    :cond_0
    new-instance p1, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    invoke-direct {p1, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3485
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 3485
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v1, v0

    return v1
.end method
