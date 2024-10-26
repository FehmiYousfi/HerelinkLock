.class final enum Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$1;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 3649
    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;-><init>(Ljava/lang/String;IZZLnet/bytebuddy/agent/builder/AgentBuilder$1;)V

    return-void
.end method


# virtual methods
.method protected check(Ljava/lang/instrument/Instrumentation;)V
    .locals 1

    .line 3652
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot apply redefinition on disabled strategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected make()Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
    .locals 2

    .line 3657
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A disabled redefinition strategy cannot create a collector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
