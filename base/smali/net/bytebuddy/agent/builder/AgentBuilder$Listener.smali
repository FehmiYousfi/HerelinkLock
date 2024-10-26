.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Compound;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$ModuleReadEdgeCompleting;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Filtering;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$StreamWriting;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$Adapter;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$NoOp;
    }
.end annotation


# static fields
.field public static final LOADED:Z = true


# virtual methods
.method public abstract onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
.end method

.method public abstract onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
.end method

.method public abstract onIgnored(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
.end method

.method public abstract onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V
.end method
