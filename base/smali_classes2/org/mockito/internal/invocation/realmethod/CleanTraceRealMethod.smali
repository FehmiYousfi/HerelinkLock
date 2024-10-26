.class public Lorg/mockito/internal/invocation/realmethod/CleanTraceRealMethod;
.super Ljava/lang/Object;
.source "CleanTraceRealMethod.java"

# interfaces
.implements Lorg/mockito/internal/invocation/realmethod/RealMethod;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x31e983e26563cc80L


# instance fields
.field private final realMethod:Lorg/mockito/internal/invocation/realmethod/RealMethod;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/creation/util/MockitoMethodProxy;)V
    .locals 1

    .line 21
    new-instance v0, Lorg/mockito/internal/invocation/realmethod/DefaultRealMethod;

    invoke-direct {v0, p1}, Lorg/mockito/internal/invocation/realmethod/DefaultRealMethod;-><init>(Lorg/mockito/internal/creation/util/MockitoMethodProxy;)V

    invoke-direct {p0, v0}, Lorg/mockito/internal/invocation/realmethod/CleanTraceRealMethod;-><init>(Lorg/mockito/internal/invocation/realmethod/RealMethod;)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/invocation/realmethod/RealMethod;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/mockito/internal/invocation/realmethod/CleanTraceRealMethod;->realMethod:Lorg/mockito/internal/invocation/realmethod/RealMethod;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/invocation/realmethod/CleanTraceRealMethod;->realMethod:Lorg/mockito/internal/invocation/realmethod/RealMethod;

    invoke-interface {v0, p1, p2}, Lorg/mockito/internal/invocation/realmethod/RealMethod;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 32
    new-instance p2, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {p2}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    invoke-virtual {p2, p1}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 33
    throw p1
.end method
