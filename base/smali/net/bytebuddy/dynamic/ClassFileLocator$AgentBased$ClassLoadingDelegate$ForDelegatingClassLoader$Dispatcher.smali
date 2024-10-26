.class public interface abstract Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher;
.super Ljava/lang/Object;
.source "ClassFileLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Unresolved;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Resolved;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$CreationAction;,
        Lnet/bytebuddy/dynamic/ClassFileLocator$AgentBased$ClassLoadingDelegate$ForDelegatingClassLoader$Dispatcher$Initializable;
    }
.end annotation


# virtual methods
.method public abstract extract(Ljava/lang/ClassLoader;)Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method
