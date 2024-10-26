.class public interface abstract Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher;
.super Ljava/lang/Object;
.source "NexusAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/NexusAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Unavailable;,
        Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$Available;,
        Lnet/bytebuddy/dynamic/NexusAccessor$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract clean(Ljava/lang/ref/Reference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isAlive()Z
.end method

.method public abstract register(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ref/ReferenceQueue;ILnet/bytebuddy/implementation/LoadedTypeInitializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;I",
            "Lnet/bytebuddy/implementation/LoadedTypeInitializer;",
            ")V"
        }
    .end annotation
.end method
