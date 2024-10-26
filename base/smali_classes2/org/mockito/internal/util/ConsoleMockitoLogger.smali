.class public Lorg/mockito/internal/util/ConsoleMockitoLogger;
.super Ljava/lang/Object;
.source "ConsoleMockitoLogger.java"

# interfaces
.implements Lorg/mockito/internal/util/MockitoLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/Object;)V
    .locals 1

    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
