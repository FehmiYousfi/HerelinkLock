.class public interface abstract Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
.super Ljava/lang/Object;
.source "ClassInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;
    }
.end annotation


# virtual methods
.method public abstract defineClass(Ljava/lang/Object;[B)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract dropLookupMode(Ljava/lang/Object;I)Ljava/lang/Object;
.end method

.method public abstract isAlive()Z
.end method

.method public abstract lookupModes(Ljava/lang/Object;)I
.end method

.method public abstract lookupType(Ljava/lang/Object;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
