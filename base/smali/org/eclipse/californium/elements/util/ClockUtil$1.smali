.class final Lorg/eclipse/californium/elements/util/ClockUtil$1;
.super Ljava/lang/Object;
.source "ClockUtil.java"

# interfaces
.implements Lorg/eclipse/californium/elements/util/ClockUtil$Realtime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/util/ClockUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nanoRealtime()J
    .locals 2

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
