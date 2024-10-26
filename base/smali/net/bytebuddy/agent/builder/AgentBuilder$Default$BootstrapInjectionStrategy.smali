.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "BootstrapInjectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Enabled;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Unsafe;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$BootstrapInjectionStrategy$Disabled;
    }
.end annotation


# virtual methods
.method public abstract make(Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/loading/ClassInjector;
.end method
