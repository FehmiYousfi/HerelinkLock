.class public interface abstract Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForJava8CapableVm;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract describe(Ljava/lang/reflect/Constructor;)Lnet/bytebuddy/description/method/ParameterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract describe(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/method/ParameterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameterCount(Ljava/lang/Object;)I
.end method
