.class public interface abstract Lorg/mockito/internal/invocation/MockitoMethod;
.super Ljava/lang/Object;
.source "MockitoMethod.java"

# interfaces
.implements Lorg/mockito/internal/invocation/AbstractAwareMethod;


# virtual methods
.method public abstract getExceptionTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getJavaMethod()Ljava/lang/reflect/Method;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getReturnType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract isVarArgs()Z
.end method
