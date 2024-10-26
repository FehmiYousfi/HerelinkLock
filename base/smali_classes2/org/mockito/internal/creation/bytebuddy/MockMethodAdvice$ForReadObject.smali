.class public Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$ForReadObject;
.super Ljava/lang/Object;
.source "MockMethodAdvice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForReadObject"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doReadObject(Ljava/lang/String;Lorg/mockito/internal/creation/bytebuddy/MockAccess;Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice$Identifier;
        .end annotation
    .end param
    .param p1    # Lorg/mockito/internal/creation/bytebuddy/MockAccess;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/This;
        .end annotation
    .end param
    .param p2    # Ljava/io/ObjectInputStream;
        .annotation runtime Lnet/bytebuddy/implementation/bind/annotation/Argument;
            value = 0x0
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 284
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 285
    invoke-static {p0, p1}, Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;->get(Ljava/lang/String;Ljava/lang/Object;)Lorg/mockito/internal/creation/bytebuddy/MockMethodDispatcher;

    move-result-object p0

    check-cast p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;

    if-eqz p0, :cond_0

    .line 287
    iget-object p0, p0, Lorg/mockito/internal/creation/bytebuddy/MockMethodAdvice;->interceptors:Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;

    invoke-interface {p1}, Lorg/mockito/internal/creation/bytebuddy/MockAccess;->getMockitoInterceptor()Lorg/mockito/internal/creation/bytebuddy/MockMethodInterceptor;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/util/concurrent/WeakConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
