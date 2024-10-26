.class public interface abstract Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher;
.super Ljava/lang/Object;
.source "ParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$ForJava8CapableVm;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract getModifiers(Ljava/lang/reflect/AccessibleObject;I)I
.end method

.method public abstract getName(Ljava/lang/reflect/AccessibleObject;I)Ljava/lang/String;
.end method

.method public abstract isNamePresent(Ljava/lang/reflect/AccessibleObject;I)Z
.end method
