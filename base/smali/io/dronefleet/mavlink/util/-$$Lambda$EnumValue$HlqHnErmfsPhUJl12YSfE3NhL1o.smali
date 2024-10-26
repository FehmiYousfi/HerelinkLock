.class public final synthetic Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$HlqHnErmfsPhUJl12YSfE3NhL1o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$HlqHnErmfsPhUJl12YSfE3NhL1o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$HlqHnErmfsPhUJl12YSfE3NhL1o;

    invoke-direct {v0}, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$HlqHnErmfsPhUJl12YSfE3NhL1o;-><init>()V

    sput-object v0, Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$HlqHnErmfsPhUJl12YSfE3NhL1o;->INSTANCE:Lio/dronefleet/mavlink/util/-$$Lambda$EnumValue$HlqHnErmfsPhUJl12YSfE3NhL1o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lio/dronefleet/mavlink/util/EnumValue;->lambda$flagsEnabled$4(I)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
