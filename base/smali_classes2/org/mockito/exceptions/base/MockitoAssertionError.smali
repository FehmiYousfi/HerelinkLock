.class public Lorg/mockito/exceptions/base/MockitoAssertionError;
.super Ljava/lang/AssertionError;
.source "MockitoAssertionError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final unfilteredStackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/exceptions/base/MockitoAssertionError;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    .line 34
    new-instance p1, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;

    invoke-direct {p1}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;-><init>()V

    .line 35
    invoke-virtual {p1, p0}, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lorg/mockito/exceptions/base/MockitoAssertionError;Ljava/lang/String;)V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-super {p0, p2}, Ljava/lang/AssertionError;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 47
    invoke-virtual {p1}, Lorg/mockito/exceptions/base/MockitoAssertionError;->getUnfilteredStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lorg/mockito/exceptions/base/MockitoAssertionError;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public getUnfilteredStackTrace()[Ljava/lang/StackTraceElement;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/mockito/exceptions/base/MockitoAssertionError;->unfilteredStackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method
