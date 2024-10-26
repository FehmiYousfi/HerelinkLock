.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;
.super Ljava/lang/Object;
.source "JavaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Initializable"
.end annotation


# virtual methods
.method public abstract initialize()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
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

.method public abstract publicLookup()Ljava/lang/Object;
.end method
