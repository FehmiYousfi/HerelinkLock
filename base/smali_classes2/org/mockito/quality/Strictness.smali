.class public final enum Lorg/mockito/quality/Strictness;
.super Ljava/lang/Enum;
.source "Strictness.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/quality/Strictness;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/quality/Strictness;

.field public static final enum LENIENT:Lorg/mockito/quality/Strictness;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end field

.field public static final enum STRICT_STUBS:Lorg/mockito/quality/Strictness;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end field

.field public static final enum WARN:Lorg/mockito/quality/Strictness;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lorg/mockito/quality/Strictness;

    const/4 v1, 0x0

    const-string v2, "LENIENT"

    invoke-direct {v0, v2, v1}, Lorg/mockito/quality/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    .line 61
    new-instance v0, Lorg/mockito/quality/Strictness;

    const/4 v2, 0x1

    const-string v3, "WARN"

    invoke-direct {v0, v3, v2}, Lorg/mockito/quality/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/quality/Strictness;->WARN:Lorg/mockito/quality/Strictness;

    .line 86
    new-instance v0, Lorg/mockito/quality/Strictness;

    const/4 v3, 0x2

    const-string v4, "STRICT_STUBS"

    invoke-direct {v0, v4, v3}, Lorg/mockito/quality/Strictness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mockito/quality/Strictness;

    .line 37
    sget-object v4, Lorg/mockito/quality/Strictness;->LENIENT:Lorg/mockito/quality/Strictness;

    aput-object v4, v0, v1

    sget-object v1, Lorg/mockito/quality/Strictness;->WARN:Lorg/mockito/quality/Strictness;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    aput-object v1, v0, v3

    sput-object v0, Lorg/mockito/quality/Strictness;->$VALUES:[Lorg/mockito/quality/Strictness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/quality/Strictness;
    .locals 1

    .line 37
    const-class v0, Lorg/mockito/quality/Strictness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/quality/Strictness;

    return-object p0
.end method

.method public static values()[Lorg/mockito/quality/Strictness;
    .locals 1

    .line 37
    sget-object v0, Lorg/mockito/quality/Strictness;->$VALUES:[Lorg/mockito/quality/Strictness;

    invoke-virtual {v0}, [Lorg/mockito/quality/Strictness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/quality/Strictness;

    return-object v0
.end method
