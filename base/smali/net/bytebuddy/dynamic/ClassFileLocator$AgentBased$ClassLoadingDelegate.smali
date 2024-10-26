.class public interface abstract Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClassLoadingDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Explicit;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$Default;
    }
.end annotation


# virtual methods
.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract locate(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
