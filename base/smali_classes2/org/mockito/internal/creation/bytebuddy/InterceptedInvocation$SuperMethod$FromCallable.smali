.class public Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$FromCallable;
.super Ljava/lang/Object;
.source "InterceptedInvocation.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromCallable"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xaa60f7eaa1f8a9L


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "*>;)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$FromCallable;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$FromCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 197
    new-instance v1, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v1}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    invoke-virtual {v1, v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    .line 198
    throw v0
.end method

.method public isInvokable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
