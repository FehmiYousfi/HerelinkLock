.class public final Lio/dronefleet/mavlink/MavlinkConnection$Builder;
.super Ljava/lang/Object;
.source "MavlinkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dronefleet/mavlink/MavlinkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private defaultDialect:Lio/dronefleet/mavlink/MavlinkDialect;

.field private final dialects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/dronefleet/mavlink/minimal/MavAutopilot;",
            "Lio/dronefleet/mavlink/MavlinkDialect;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/InputStream;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->in:Ljava/io/InputStream;

    .line 56
    iput-object p2, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->out:Ljava/io/OutputStream;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialects:Ljava/util/Map;

    .line 58
    sget-object p1, Lio/dronefleet/mavlink/minimal/MavAutopilot;->GENERIC:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance p2, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {p2}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    invoke-virtual {p0, p1, p2}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AEROB:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    .line 59
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AIRRAILS:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    .line 60
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->UDB:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    .line 61
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SMARTAP:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    .line 62
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SMACCMPILOT:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    .line 63
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->OPENPILOT:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    .line 64
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->FP:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/common/CommonDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/common/CommonDialect;-><init>()V

    .line 65
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->ARDUPILOTMEGA:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/ArdupilotmegaDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/ArdupilotmegaDialect;-><init>()V

    .line 66
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->PX4:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/ardupilotmega/ArdupilotmegaDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/ardupilotmega/ArdupilotmegaDialect;-><init>()V

    .line 67
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AUTOQUAD:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/autoquad/AutoquadDialect;-><init>()V

    .line 68
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->ASLUAV:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/asluav/AsluavDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/asluav/AsluavDialect;-><init>()V

    .line 69
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->SLUGS:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/slugs/SlugsDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/slugs/SlugsDialect;-><init>()V

    .line 70
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->AUTOQUAD:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/autoquad/AutoquadDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/autoquad/AutoquadDialect;-><init>()V

    .line 71
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    move-result-object p1

    sget-object p2, Lio/dronefleet/mavlink/minimal/MavAutopilot;->PPZ:Lio/dronefleet/mavlink/minimal/MavAutopilot;

    new-instance v0, Lio/dronefleet/mavlink/paparazzi/PaparazziDialect;

    invoke-direct {v0}, Lio/dronefleet/mavlink/paparazzi/PaparazziDialect;-><init>()V

    .line 72
    invoke-virtual {p1, p2, v0}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;

    .line 73
    invoke-static {}, Lio/dronefleet/mavlink/MavlinkConnection;->access$000()Lio/dronefleet/mavlink/MavlinkDialect;

    move-result-object p1

    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->defaultDialect:Lio/dronefleet/mavlink/MavlinkDialect;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lio/dronefleet/mavlink/MavlinkConnection$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lio/dronefleet/mavlink/MavlinkConnection$Builder;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public build()Lio/dronefleet/mavlink/MavlinkConnection;
    .locals 8

    .line 105
    new-instance v7, Lio/dronefleet/mavlink/MavlinkConnection;

    new-instance v1, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;

    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->in:Ljava/io/InputStream;

    invoke-direct {v1, v0}, Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialects:Ljava/util/Map;

    iget-object v4, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->defaultDialect:Lio/dronefleet/mavlink/MavlinkDialect;

    new-instance v5, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;

    invoke-direct {v5}, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadDeserializer;-><init>()V

    new-instance v6, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadSerializer;

    invoke-direct {v6}, Lio/dronefleet/mavlink/serialization/payload/direct/DirectPayloadSerializer;-><init>()V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/dronefleet/mavlink/MavlinkConnection;-><init>(Lio/dronefleet/mavlink/protocol/MavlinkPacketReader;Ljava/io/OutputStream;Ljava/util/Map;Lio/dronefleet/mavlink/MavlinkDialect;Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadDeserializer;Lio/dronefleet/mavlink/serialization/payload/MavlinkPayloadSerializer;)V

    return-object v7
.end method

.method public defaultDialect(Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->defaultDialect:Lio/dronefleet/mavlink/MavlinkDialect;

    return-object p0
.end method

.method public dialect(Lio/dronefleet/mavlink/minimal/MavAutopilot;Lio/dronefleet/mavlink/MavlinkDialect;)Lio/dronefleet/mavlink/MavlinkConnection$Builder;
    .locals 1

    .line 85
    iget-object v0, p0, Lio/dronefleet/mavlink/MavlinkConnection$Builder;->dialects:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
