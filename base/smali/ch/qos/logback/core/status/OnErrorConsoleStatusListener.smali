.class public Lch/qos/logback/core/status/OnErrorConsoleStatusListener;
.super Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lch/qos/logback/core/status/OnPrintStreamStatusListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPrintStream()Ljava/io/PrintStream;
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    return-object v0
.end method
