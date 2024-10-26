.class public Lorg/eclipse/californium/elements/util/ClockUtil;
.super Ljava/lang/Object;
.source "ClockUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/elements/util/ClockUtil$Realtime;
    }
.end annotation


# static fields
.field private static volatile handler:Lorg/eclipse/californium/elements/util/ClockUtil$Realtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lorg/eclipse/californium/elements/util/ClockUtil$1;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/util/ClockUtil$1;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/util/ClockUtil;->handler:Lorg/eclipse/californium/elements/util/ClockUtil$Realtime;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nanoRealtime()J
    .locals 2

    .line 80
    sget-object v0, Lorg/eclipse/californium/elements/util/ClockUtil;->handler:Lorg/eclipse/californium/elements/util/ClockUtil$Realtime;

    invoke-interface {v0}, Lorg/eclipse/californium/elements/util/ClockUtil$Realtime;->nanoRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setRealtimeHandler(Lorg/eclipse/californium/elements/util/ClockUtil$Realtime;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 68
    sput-object p0, Lorg/eclipse/californium/elements/util/ClockUtil;->handler:Lorg/eclipse/californium/elements/util/ClockUtil$Realtime;

    return-void

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "realtime system handler must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
