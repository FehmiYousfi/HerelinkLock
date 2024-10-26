.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Simple;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;
    }
.end annotation


# virtual methods
.method public abstract classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
.end method
