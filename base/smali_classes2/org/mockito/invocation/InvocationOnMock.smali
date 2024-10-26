.class public interface abstract Lorg/mockito/invocation/InvocationOnMock;
.super Ljava/lang/Object;
.source "InvocationOnMock.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract callRealMethod()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract getArgument(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract getArguments()[Ljava/lang/Object;
.end method

.method public abstract getMethod()Ljava/lang/reflect/Method;
.end method

.method public abstract getMock()Ljava/lang/Object;
.end method
