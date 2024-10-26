.class public final synthetic Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$CFp5ullB19mbxf936taqZbLRRWs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$CFp5ullB19mbxf936taqZbLRRWs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$CFp5ullB19mbxf936taqZbLRRWs;

    invoke-direct {v0}, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$CFp5ullB19mbxf936taqZbLRRWs;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$CFp5ullB19mbxf936taqZbLRRWs;->INSTANCE:Lio/dronefleet/mavlink/serialization/payload/reflection/-$$Lambda$CFp5ullB19mbxf936taqZbLRRWs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;

    invoke-interface {p1}, Lio/dronefleet/mavlink/annotations/MavlinkEntryInfo;->value()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
