.class public Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByThrowableType"
.end annotation


# instance fields
.field private final types:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 3608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3609
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;->types:Ljava/util/Set;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 3600
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method public static ofOptionalTypes()Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;
    .locals 4

    .line 3619
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/LinkageError;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/TypeNotPresentException;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 3585
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3585
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;->types:Ljava/util/Set;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;->types:Ljava/util/Set;

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

    .line 3585
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;->types:Ljava/util/Set;

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

.method public isFallback(Ljava/lang/Class;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .line 3624
    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy$ByThrowableType;->types:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 3625
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
