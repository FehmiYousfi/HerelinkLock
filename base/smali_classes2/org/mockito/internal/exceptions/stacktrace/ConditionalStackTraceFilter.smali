.class public Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;
.super Ljava/lang/Object;
.source "ConditionalStackTraceFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7036b576f4edb8a1L


# instance fields
.field private final config:Lorg/mockito/configuration/IMockitoConfiguration;

.field private final filter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/mockito/internal/configuration/GlobalConfiguration;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/GlobalConfiguration;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->config:Lorg/mockito/configuration/IMockitoConfiguration;

    .line 17
    new-instance v0, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    invoke-direct {v0}, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Throwable;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->config:Lorg/mockito/configuration/IMockitoConfiguration;

    invoke-interface {v0}, Lorg/mockito/configuration/IMockitoConfiguration;->cleansStackTrace()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/mockito/internal/exceptions/stacktrace/ConditionalStackTraceFilter;->filter:Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/exceptions/stacktrace/StackTraceFilter;->filter([Ljava/lang/StackTraceElement;Z)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method
