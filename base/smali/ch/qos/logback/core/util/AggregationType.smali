.class public final enum Lch/qos/logback/core/util/AggregationType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/qos/logback/core/util/AggregationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/qos/logback/core/util/AggregationType;

.field public static final enum AS_BASIC_PROPERTY:Lch/qos/logback/core/util/AggregationType;

.field public static final enum AS_BASIC_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

.field public static final enum AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

.field public static final enum AS_COMPLEX_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

.field public static final enum NOT_FOUND:Lch/qos/logback/core/util/AggregationType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lch/qos/logback/core/util/AggregationType;

    const/4 v1, 0x0

    const-string v2, "NOT_FOUND"

    invoke-direct {v0, v2, v1}, Lch/qos/logback/core/util/AggregationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    new-instance v0, Lch/qos/logback/core/util/AggregationType;

    const/4 v2, 0x1

    const-string v3, "AS_BASIC_PROPERTY"

    invoke-direct {v0, v3, v2}, Lch/qos/logback/core/util/AggregationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    new-instance v0, Lch/qos/logback/core/util/AggregationType;

    const/4 v3, 0x2

    const-string v4, "AS_COMPLEX_PROPERTY"

    invoke-direct {v0, v4, v3}, Lch/qos/logback/core/util/AggregationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    new-instance v0, Lch/qos/logback/core/util/AggregationType;

    const/4 v4, 0x3

    const-string v5, "AS_BASIC_PROPERTY_COLLECTION"

    invoke-direct {v0, v5, v4}, Lch/qos/logback/core/util/AggregationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    new-instance v0, Lch/qos/logback/core/util/AggregationType;

    const/4 v5, 0x4

    const-string v6, "AS_COMPLEX_PROPERTY_COLLECTION"

    invoke-direct {v0, v6, v5}, Lch/qos/logback/core/util/AggregationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    const/4 v0, 0x5

    new-array v0, v0, [Lch/qos/logback/core/util/AggregationType;

    sget-object v6, Lch/qos/logback/core/util/AggregationType;->NOT_FOUND:Lch/qos/logback/core/util/AggregationType;

    aput-object v6, v0, v1

    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    aput-object v1, v0, v2

    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY:Lch/qos/logback/core/util/AggregationType;

    aput-object v1, v0, v3

    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_BASIC_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    aput-object v1, v0, v4

    sget-object v1, Lch/qos/logback/core/util/AggregationType;->AS_COMPLEX_PROPERTY_COLLECTION:Lch/qos/logback/core/util/AggregationType;

    aput-object v1, v0, v5

    sput-object v0, Lch/qos/logback/core/util/AggregationType;->$VALUES:[Lch/qos/logback/core/util/AggregationType;

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

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/util/AggregationType;
    .locals 1

    const-class v0, Lch/qos/logback/core/util/AggregationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/qos/logback/core/util/AggregationType;

    return-object p0
.end method

.method public static values()[Lch/qos/logback/core/util/AggregationType;
    .locals 1

    sget-object v0, Lch/qos/logback/core/util/AggregationType;->$VALUES:[Lch/qos/logback/core/util/AggregationType;

    invoke-virtual {v0}, [Lch/qos/logback/core/util/AggregationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/qos/logback/core/util/AggregationType;

    return-object v0
.end method
