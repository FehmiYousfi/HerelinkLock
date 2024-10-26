.class public Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;
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
    name = "Simple"
.end annotation


# instance fields
.field private final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/dynamic/ClassFileLocator;)V
    .locals 0

    .line 3472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3473
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 3459
    instance-of p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;

    return p1
.end method

.method public classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 0

    .line 3478
    iget-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3459
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

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

    .line 3459
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

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
