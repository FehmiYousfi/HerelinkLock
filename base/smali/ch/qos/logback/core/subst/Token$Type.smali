.class public final enum Lch/qos/logback/core/subst/Token$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/subst/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/qos/logback/core/subst/Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/qos/logback/core/subst/Token$Type;

.field public static final enum CURLY_LEFT:Lch/qos/logback/core/subst/Token$Type;

.field public static final enum CURLY_RIGHT:Lch/qos/logback/core/subst/Token$Type;

.field public static final enum DEFAULT:Lch/qos/logback/core/subst/Token$Type;

.field public static final enum LITERAL:Lch/qos/logback/core/subst/Token$Type;

.field public static final enum START:Lch/qos/logback/core/subst/Token$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lch/qos/logback/core/subst/Token$Type;

    const/4 v1, 0x0

    const-string v2, "LITERAL"

    invoke-direct {v0, v2, v1}, Lch/qos/logback/core/subst/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/subst/Token$Type;->LITERAL:Lch/qos/logback/core/subst/Token$Type;

    new-instance v0, Lch/qos/logback/core/subst/Token$Type;

    const/4 v2, 0x1

    const-string v3, "START"

    invoke-direct {v0, v3, v2}, Lch/qos/logback/core/subst/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/subst/Token$Type;->START:Lch/qos/logback/core/subst/Token$Type;

    new-instance v0, Lch/qos/logback/core/subst/Token$Type;

    const/4 v3, 0x2

    const-string v4, "CURLY_LEFT"

    invoke-direct {v0, v4, v3}, Lch/qos/logback/core/subst/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/subst/Token$Type;->CURLY_LEFT:Lch/qos/logback/core/subst/Token$Type;

    new-instance v0, Lch/qos/logback/core/subst/Token$Type;

    const/4 v4, 0x3

    const-string v5, "CURLY_RIGHT"

    invoke-direct {v0, v5, v4}, Lch/qos/logback/core/subst/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/subst/Token$Type;->CURLY_RIGHT:Lch/qos/logback/core/subst/Token$Type;

    new-instance v0, Lch/qos/logback/core/subst/Token$Type;

    const/4 v5, 0x4

    const-string v6, "DEFAULT"

    invoke-direct {v0, v6, v5}, Lch/qos/logback/core/subst/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/subst/Token$Type;->DEFAULT:Lch/qos/logback/core/subst/Token$Type;

    const/4 v0, 0x5

    new-array v0, v0, [Lch/qos/logback/core/subst/Token$Type;

    sget-object v6, Lch/qos/logback/core/subst/Token$Type;->LITERAL:Lch/qos/logback/core/subst/Token$Type;

    aput-object v6, v0, v1

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->START:Lch/qos/logback/core/subst/Token$Type;

    aput-object v1, v0, v2

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->CURLY_LEFT:Lch/qos/logback/core/subst/Token$Type;

    aput-object v1, v0, v3

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->CURLY_RIGHT:Lch/qos/logback/core/subst/Token$Type;

    aput-object v1, v0, v4

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->DEFAULT:Lch/qos/logback/core/subst/Token$Type;

    aput-object v1, v0, v5

    sput-object v0, Lch/qos/logback/core/subst/Token$Type;->$VALUES:[Lch/qos/logback/core/subst/Token$Type;

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

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/subst/Token$Type;
    .locals 1

    const-class v0, Lch/qos/logback/core/subst/Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/qos/logback/core/subst/Token$Type;

    return-object p0
.end method

.method public static values()[Lch/qos/logback/core/subst/Token$Type;
    .locals 1

    sget-object v0, Lch/qos/logback/core/subst/Token$Type;->$VALUES:[Lch/qos/logback/core/subst/Token$Type;

    invoke-virtual {v0}, [Lch/qos/logback/core/subst/Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/qos/logback/core/subst/Token$Type;

    return-object v0
.end method
