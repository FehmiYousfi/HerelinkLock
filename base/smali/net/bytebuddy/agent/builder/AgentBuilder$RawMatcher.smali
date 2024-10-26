.class public interface abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RawMatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForElementMatchers;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Inversion;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Disjunction;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$Conjunction;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForResolvableTypes;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher$ForLoadState;
    }
.end annotation


# virtual methods
.method public abstract matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")Z"
        }
    .end annotation
.end method
