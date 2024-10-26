.class public final enum Lch/qos/logback/core/rolling/helper/PeriodicityType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/qos/logback/core/rolling/helper/PeriodicityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum ERRONEOUS:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum HALF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_HOUR:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_MILLISECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_MINUTE:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_MONTH:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_SECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

.field public static final enum TOP_OF_WEEK:Lch/qos/logback/core/rolling/helper/PeriodicityType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/4 v1, 0x0

    const-string v2, "ERRONEOUS"

    invoke-direct {v0, v2, v1}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ERRONEOUS:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/4 v2, 0x1

    const-string v3, "TOP_OF_MILLISECOND"

    invoke-direct {v0, v3, v2}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MILLISECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/4 v3, 0x2

    const-string v4, "TOP_OF_SECOND"

    invoke-direct {v0, v4, v3}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_SECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/4 v4, 0x3

    const-string v5, "TOP_OF_MINUTE"

    invoke-direct {v0, v5, v4}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MINUTE:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/4 v5, 0x4

    const-string v6, "TOP_OF_HOUR"

    invoke-direct {v0, v6, v5}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_HOUR:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/4 v6, 0x5

    const-string v7, "HALF_DAY"

    invoke-direct {v0, v7, v6}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->HALF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/4 v7, 0x6

    const-string v8, "TOP_OF_DAY"

    invoke-direct {v0, v8, v7}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/4 v8, 0x7

    const-string v9, "TOP_OF_WEEK"

    invoke-direct {v0, v9, v8}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_WEEK:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    new-instance v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/16 v9, 0x8

    const-string v10, "TOP_OF_MONTH"

    invoke-direct {v0, v10, v9}, Lch/qos/logback/core/rolling/helper/PeriodicityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MONTH:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    const/16 v0, 0x9

    new-array v0, v0, [Lch/qos/logback/core/rolling/helper/PeriodicityType;

    sget-object v10, Lch/qos/logback/core/rolling/helper/PeriodicityType;->ERRONEOUS:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v10, v0, v1

    sget-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MILLISECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v1, v0, v2

    sget-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_SECOND:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v1, v0, v3

    sget-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MINUTE:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v1, v0, v4

    sget-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_HOUR:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v1, v0, v5

    sget-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->HALF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v1, v0, v6

    sget-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_DAY:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v1, v0, v7

    sget-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_WEEK:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v1, v0, v8

    sget-object v1, Lch/qos/logback/core/rolling/helper/PeriodicityType;->TOP_OF_MONTH:Lch/qos/logback/core/rolling/helper/PeriodicityType;

    aput-object v1, v0, v9

    sput-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->$VALUES:[Lch/qos/logback/core/rolling/helper/PeriodicityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .locals 1

    const-class v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/qos/logback/core/rolling/helper/PeriodicityType;

    return-object p0
.end method

.method public static values()[Lch/qos/logback/core/rolling/helper/PeriodicityType;
    .locals 1

    sget-object v0, Lch/qos/logback/core/rolling/helper/PeriodicityType;->$VALUES:[Lch/qos/logback/core/rolling/helper/PeriodicityType;

    invoke-virtual {v0}, [Lch/qos/logback/core/rolling/helper/PeriodicityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/qos/logback/core/rolling/helper/PeriodicityType;

    return-object v0
.end method
