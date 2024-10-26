.class public final Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
.super Ljava/lang/Object;
.source "LimitsStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private breachCount:I

.field private lastAction:J

.field private lastClear:J

.field private lastRecovery:J

.field private lastTrigger:J

.field private limitsState:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsState;",
            ">;"
        }
    .end annotation
.end field

.field private modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation
.end field

.field private modsRequired:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation
.end field

.field private modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final breachCount(I)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Number of fence breaches."
        position = 0x6
        unitSize = 0x2
    .end annotation

    .line 373
    iput p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->breachCount:I

    return-object p0
.end method

.method public final build()Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;
    .locals 17

    move-object/from16 v0, p0

    .line 483
    new-instance v16, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;

    iget-object v2, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

    iget-wide v3, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->lastTrigger:J

    iget-wide v5, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->lastAction:J

    iget-wide v7, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->lastRecovery:J

    iget-wide v9, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->lastClear:J

    iget v11, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->breachCount:I

    iget-object v12, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v13, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

    iget-object v14, v0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus;-><init>(Lio/dronefleet/mavlink/util/EnumValue;JJJJILio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/util/EnumValue;Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$1;)V

    return-object v16
.end method

.method public final lastAction(J)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last recovery\n                action."
        position = 0x3
        unitSize = 0x4
    .end annotation

    .line 332
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->lastAction:J

    return-object p0
.end method

.method public final lastClear(J)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last\n                all-clear."
        position = 0x5
        unitSize = 0x4
    .end annotation

    .line 360
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->lastClear:J

    return-object p0
.end method

.method public final lastRecovery(J)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last\n                successful recovery."
        position = 0x4
        unitSize = 0x4
    .end annotation

    .line 346
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->lastRecovery:J

    return-object p0
.end method

.method public final lastTrigger(J)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "Time (since boot) of last\n                breach."
        position = 0x2
        unitSize = 0x4
    .end annotation

    .line 318
    iput-wide p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->lastTrigger:J

    return-object p0
.end method

.method public final limitsState(Lio/dronefleet/mavlink/ardupilotmega/LimitsState;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0

    .line 291
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->limitsState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final limitsState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsState;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "State of AP_Limits."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/LimitsState;
        position = 0x1
        unitSize = 0x1
    .end annotation

    .line 283
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->limitsState:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final limitsState(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;"
        }
    .end annotation

    .line 305
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->limitsState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs limitsState([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0

    .line 298
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->limitsState(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final modsEnabled(Lio/dronefleet/mavlink/ardupilotmega/LimitModule;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0

    .line 395
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsEnabled(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final modsEnabled(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "AP_Limit_Module bitfield of enabled modules."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/LimitModule;
        position = 0x7
        unitSize = 0x1
    .end annotation

    .line 387
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsEnabled:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final modsEnabled(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;"
        }
    .end annotation

    .line 409
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsEnabled(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs modsEnabled([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0

    .line 402
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsEnabled(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final modsRequired(Lio/dronefleet/mavlink/ardupilotmega/LimitModule;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0

    .line 430
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsRequired(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final modsRequired(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "AP_Limit_Module bitfield of required modules."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/LimitModule;
        position = 0x8
        unitSize = 0x1
    .end annotation

    .line 422
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsRequired:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final modsRequired(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;"
        }
    .end annotation

    .line 444
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsRequired(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs modsRequired([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0

    .line 437
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsRequired(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final modsTriggered(Lio/dronefleet/mavlink/ardupilotmega/LimitModule;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0

    .line 465
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->of(Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsTriggered(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final modsTriggered(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dronefleet/mavlink/util/EnumValue<",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitModule;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;"
        }
    .end annotation

    .annotation runtime Lio/dronefleet/mavlink/annotations/MavlinkFieldInfo;
        description = "AP_Limit_Module bitfield of triggered modules."
        enumType = Lio/dronefleet/mavlink/ardupilotmega/LimitModule;
        position = 0x9
        unitSize = 0x1
    .end annotation

    .line 457
    iput-object p1, p0, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsTriggered:Lio/dronefleet/mavlink/util/EnumValue;

    return-object p0
.end method

.method public final modsTriggered(Ljava/util/Collection;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Enum;",
            ">;)",
            "Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;"
        }
    .end annotation

    .line 479
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create(Ljava/util/Collection;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsTriggered(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs modsTriggered([Ljava/lang/Enum;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;
    .locals 0

    .line 472
    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->create([Ljava/lang/Enum;)Lio/dronefleet/mavlink/util/EnumValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;->modsTriggered(Lio/dronefleet/mavlink/util/EnumValue;)Lio/dronefleet/mavlink/ardupilotmega/LimitsStatus$Builder;

    move-result-object p1

    return-object p1
.end method
