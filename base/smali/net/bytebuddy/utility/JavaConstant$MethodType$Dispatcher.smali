.class public interface abstract Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher;
.super Ljava/lang/Object;
.source "JavaConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$ForJava7CapableVm;,
        Lnet/bytebuddy/utility/JavaConstant$MethodType$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract parameterArray(Ljava/lang/Object;)[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
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
