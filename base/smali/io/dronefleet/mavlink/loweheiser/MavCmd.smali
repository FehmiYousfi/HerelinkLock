.class public final enum Lio/dronefleet/mavlink/loweheiser/MavCmd;
.super Ljava/lang/Enum;
.source "MavCmd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dronefleet/mavlink/loweheiser/MavCmd;",
        ">;"
    }
.end annotation

.annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEnum;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dronefleet/mavlink/loweheiser/MavCmd;

.field public static final enum LOWEHEISER_SET_STATE:Lio/dronefleet/mavlink/loweheiser/MavCmd;
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;
        value = 0x27a7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lio/dronefleet/mavlink/loweheiser/MavCmd;

    const/4 v1, 0x0

    const-string v2, "LOWEHEISER_SET_STATE"

    invoke-direct {v0, v2, v1}, Lio/dronefleet/mavlink/loweheiser/MavCmd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/dronefleet/mavlink/loweheiser/MavCmd;->LOWEHEISER_SET_STATE:Lio/dronefleet/mavlink/loweheiser/MavCmd;

    const/4 v0, 0x1

    new-array v0, v0, [Lio/dronefleet/mavlink/loweheiser/MavCmd;

    .line 9
    sget-object v2, Lio/dronefleet/mavlink/loweheiser/MavCmd;->LOWEHEISER_SET_STATE:Lio/dronefleet/mavlink/loweheiser/MavCmd;

    aput-object v2, v0, v1

    sput-object v0, Lio/dronefleet/mavlink/loweheiser/MavCmd;->$VALUES:[Lio/dronefleet/mavlink/loweheiser/MavCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dronefleet/mavlink/loweheiser/MavCmd;
    .locals 1

    .line 9
    const-class v0, Lio/dronefleet/mavlink/loweheiser/MavCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dronefleet/mavlink/loweheiser/MavCmd;

    return-object p0
.end method

.method public static values()[Lio/dronefleet/mavlink/loweheiser/MavCmd;
    .locals 1

    .line 9
    sget-object v0, Lio/dronefleet/mavlink/loweheiser/MavCmd;->$VALUES:[Lio/dronefleet/mavlink/loweheiser/MavCmd;

    invoke-virtual {v0}, [Lio/dronefleet/mavlink/loweheiser/MavCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dronefleet/mavlink/loweheiser/MavCmd;

    return-object v0
.end method
