.class public Lorg/mockito/exceptions/base/MockitoException;
.super Ljava/lang/RuntimeException;
.source "MockitoException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private unfilteredStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lorg/mockito/exceptions/base/MockitoException;->filterStackTrace()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    invoke-direct {p0}, Lorg/mockito/exceptions/base/MockitoException;->filterStackTrace()V

    return-void
.end method

.method private filterStackTrace()V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/mockito/exceptions/base/MockitoException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/exceptions/base/MockitoException;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    .line 43
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    .line 44
    invoke-virtual {v0, p0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getUnfilteredStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/mockito/exceptions/base/MockitoException;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method
