.class public interface abstract Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;
.super Ljava/lang/Object;
.source "InterceptedInvocation.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuperMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$FromCallable;,
        Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;
    }
.end annotation


# virtual methods
.method public abstract invoke()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract isInvokable()Z
.end method
