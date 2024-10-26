.class public final Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
.super Ljava/lang/Object;
.source "GsmLinkStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/asluav/GsmLinkStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmLinkType;",
            ">;"
        }
    .end annotation
.end field

.field private gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmModemType;",
            ">;"
        }
    .end annotation
.end field

.field private rsrpRscp:I

.field private rsrq:I

.field private rssi:I

.field private sinrEcio:I

.field private timestamp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lio/dronefleet/mavlink/asluav/GsmLinkStatus;
    .locals 10

    .line 362
    new-instance v9, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;

    iget-object v1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->timestamp:Ljava/math/BigInteger;

    iget-object v2, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v3, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    iget v4, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->rssi:I

    iget v5, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->rsrpRscp:I

    iget v6, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->sinrEcio:I

    iget v7, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->rsrq:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus;-><init>(Ljava/math/BigInteger;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;IIIILio/dronefleet/mavlink/asluav/GsmLinkStatus$1;)V

    return-object v9
.end method

.method public final gsmLinkType(Lio/dronefleet/mavlink/asluav/GsmLinkType;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0

    .line 290
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmLinkType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gsmLinkType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmLinkType;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GSM link type"
        enumType = Lio/dronefleet/mavlink/asluav/GsmLinkType;
        position = 0x3
        unitSize = 0x1
    .end annotation

    .line 282
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmLinkType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final gsmLinkType(Ljava/util/Collection;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;"
        }
    .end annotation

    .line 304
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmLinkType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs gsmLinkType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0

    .line 297
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmLinkType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gsmModemType(Lio/dronefleet/mavlink/asluav/GsmModemType;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0

    .line 255
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmModemType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final gsmModemType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/asluav/GsmModemType;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "GSM modem used"
        enumType = Lio/dronefleet/mavlink/asluav/GsmModemType;
        position = 0x2
        unitSize = 0x1
    .end annotation

    .line 247
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmModemType:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final gsmModemType(Ljava/util/Collection;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;"
        }
    .end annotation

    .line 269
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmModemType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs gsmModemType([Ljava/lang/Enum;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0

    .line 262
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->gsmModemType(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final rsrpRscp(I)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RSRP (LTE) or RSCP (WCDMA) as reported by modem\n                (unconverted)"
        position = 0x5
        unitSize = 0x1
    .end annotation

    .line 330
    iput p1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->rsrpRscp:I

    return-object p0
.end method

.method public final rsrq(I)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RSRQ (LTE only) as reported by modem (unconverted)"
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 357
    iput p1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->rsrq:I

    return-object p0
.end method

.method public final rssi(I)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "RSSI as reported by modem (unconverted)"
        position = 0x4
        unitSize = 0x1
    .end annotation

    .line 316
    iput p1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->rssi:I

    return-object p0
.end method

.method public final sinrEcio(I)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "SINR (LTE) or ECIO (WCDMA) as reported by modem\n                (unconverted)"
        position = 0x6
        unitSize = 0x1
    .end annotation

    .line 344
    iput p1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->sinrEcio:I

    return-object p0
.end method

.method public final timestamp(Ljava/math/BigInteger;)Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Timestamp (of OBC)"
        position = 0x1
        unitSize = 0x8
    .end annotation

    .line 233
    iput-object p1, p0, Lio/dronefleet/mavlink/asluav/GsmLinkStatus$Builder;->timestamp:Ljava/math/BigInteger;

    return-object p0
.end method
