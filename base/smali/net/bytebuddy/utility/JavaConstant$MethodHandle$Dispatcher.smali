.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.super Ljava/lang/Object;
.source "JavaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$AbstractBase;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;,
        Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;
    }
.end annotation


# virtual methods
.method public abstract getDeclaringClass(Ljava/lang/Object;)Ljava/lang/Class;
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

.method public abstract getMethodType(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getName(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getReferenceKind(Ljava/lang/Object;)I
.end method

.method public abstract parameterArray(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract returnType(Ljava/lang/Object;)Ljava/lang/Class;
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

.method public abstract reveal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
