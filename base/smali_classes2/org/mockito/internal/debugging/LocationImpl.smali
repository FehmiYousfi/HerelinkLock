.class public Lorg/mockito/internal/debugging/LocationImpl;
.super Ljava/lang/Object;
.source "LocationImpl.java"

# interfaces
.implements Lorg/mockito/invocation/Location;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7da9543f78c59610L


# instance fields
.field private final stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

.field private final stackTraceHolder:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;-><init>()V

    invoke-direct {p0, v0}, Lorg/mockito/internal/debugging/LocationImpl;-><init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    .line 23
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceHolder:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 29
    iget-object v0, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceFilter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    iget-object v1, p0, Lorg/mockito/internal/debugging/LocationImpl;->stackTraceHolder:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->filter([Ljava/lang/StackTraceElement;Z)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 30
    array-length v1, v0

    if-nez v1, :cond_0

    const-string v0, "-> at <<unknown line>>"

    return-object v0

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-> at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
