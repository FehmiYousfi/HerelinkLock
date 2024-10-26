.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "NativeMethodStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$ForPrefix;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy$Disabled;
    }
.end annotation


# virtual methods
.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract isEnabled(Ljava/lang/instrument/Instrumentation;)Z
.end method

.method public abstract resolve()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;
.end method
