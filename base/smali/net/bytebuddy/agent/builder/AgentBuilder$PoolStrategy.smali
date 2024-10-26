.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PoolStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$WithTypePoolCache;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$ClassLoading;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Eager;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;
    }
.end annotation


# virtual methods
.method public abstract typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;
.end method
