.class public final synthetic Lio/dronefleet/mavlink/util/-$$Lambda$kYmrdDvSSdWUsDoWsBxqOlpgXbc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$kYmrdDvSSdWUsDoWsBxqOlpgXbc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/util/-$$Lambda$kYmrdDvSSdWUsDoWsBxqOlpgXbc;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/-$$Lambda$kYmrdDvSSdWUsDoWsBxqOlpgXbc;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$kYmrdDvSSdWUsDoWsBxqOlpgXbc;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$kYmrdDvSSdWUsDoWsBxqOlpgXbc;

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

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Lio/dronefleet/mavlink/util/reflection/MavlinkReflection;->getEnumValue(Ljava/lang/Enum;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
