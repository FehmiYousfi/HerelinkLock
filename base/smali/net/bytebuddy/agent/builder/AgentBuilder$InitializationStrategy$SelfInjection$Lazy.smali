.class public Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Lazy;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lazy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Lazy$Dispatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2774
    new-instance v0, Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-direct {v0}, Lnet/bytebuddy/dynamic/NexusAccessor;-><init>()V

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Lazy;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V
    .locals 0

    .line 2783
    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;)V

    return-void
.end method


# virtual methods
.method protected dispatcher(I)Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;
    .locals 2

    .line 2788
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Lazy$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Lazy;->nexusAccessor:Lnet/bytebuddy/dynamic/NexusAccessor;

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$SelfInjection$Lazy$Dispatcher;-><init>(Lnet/bytebuddy/dynamic/NexusAccessor;I)V

    return-object v0
.end method
