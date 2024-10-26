.class public interface abstract Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;
.super Ljava/lang/Object;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;,
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;
    }
.end annotation


# virtual methods
.method public abstract resolve(Ljava/lang/reflect/AnnotatedElement;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public abstract resolveExceptionType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract resolveFieldType(Ljava/lang/reflect/Field;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract resolveInterfaceType(Ljava/lang/Class;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation
.end method

.method public abstract resolveParameterType(Ljava/lang/reflect/AccessibleObject;I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract resolveReceiverType(Ljava/lang/reflect/AccessibleObject;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
.end method

.method public abstract resolveReturnType(Ljava/lang/reflect/Method;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
.end method

.method public abstract resolveSuperClassType(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation
.end method

.method public abstract resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;"
        }
    .end annotation
.end method
