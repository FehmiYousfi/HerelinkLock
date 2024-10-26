.class public final enum Lorg/objenesis/instantiator/annotations/Typology;
.super Ljava/lang/Enum;
.source "Typology.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/objenesis/instantiator/annotations/Typology;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/objenesis/instantiator/annotations/Typology;

.field public static final enum NOT_COMPLIANT:Lorg/objenesis/instantiator/annotations/Typology;

.field public static final enum SERIALIZATION:Lorg/objenesis/instantiator/annotations/Typology;

.field public static final enum STANDARD:Lorg/objenesis/instantiator/annotations/Typology;

.field public static final enum UNKNOWN:Lorg/objenesis/instantiator/annotations/Typology;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lorg/objenesis/instantiator/annotations/Typology;

    const/4 v1, 0x0

    const-string v2, "STANDARD"

    invoke-direct {v0, v2, v1}, Lorg/objenesis/instantiator/annotations/Typology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/objenesis/instantiator/annotations/Typology;->STANDARD:Lorg/objenesis/instantiator/annotations/Typology;

    .line 31
    new-instance v0, Lorg/objenesis/instantiator/annotations/Typology;

    const/4 v2, 0x1

    const-string v3, "SERIALIZATION"

    invoke-direct {v0, v3, v2}, Lorg/objenesis/instantiator/annotations/Typology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/objenesis/instantiator/annotations/Typology;->SERIALIZATION:Lorg/objenesis/instantiator/annotations/Typology;

    .line 37
    new-instance v0, Lorg/objenesis/instantiator/annotations/Typology;

    const/4 v3, 0x2

    const-string v4, "NOT_COMPLIANT"

    invoke-direct {v0, v4, v3}, Lorg/objenesis/instantiator/annotations/Typology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/objenesis/instantiator/annotations/Typology;->NOT_COMPLIANT:Lorg/objenesis/instantiator/annotations/Typology;

    .line 42
    new-instance v0, Lorg/objenesis/instantiator/annotations/Typology;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v4}, Lorg/objenesis/instantiator/annotations/Typology;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/objenesis/instantiator/annotations/Typology;->UNKNOWN:Lorg/objenesis/instantiator/annotations/Typology;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/objenesis/instantiator/annotations/Typology;

    .line 22
    sget-object v5, Lorg/objenesis/instantiator/annotations/Typology;->STANDARD:Lorg/objenesis/instantiator/annotations/Typology;

    aput-object v5, v0, v1

    sget-object v1, Lorg/objenesis/instantiator/annotations/Typology;->SERIALIZATION:Lorg/objenesis/instantiator/annotations/Typology;

    aput-object v1, v0, v2

    sget-object v1, Lorg/objenesis/instantiator/annotations/Typology;->NOT_COMPLIANT:Lorg/objenesis/instantiator/annotations/Typology;

    aput-object v1, v0, v3

    sget-object v1, Lorg/objenesis/instantiator/annotations/Typology;->UNKNOWN:Lorg/objenesis/instantiator/annotations/Typology;

    aput-object v1, v0, v4

    sput-object v0, Lorg/objenesis/instantiator/annotations/Typology;->$VALUES:[Lorg/objenesis/instantiator/annotations/Typology;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/objenesis/instantiator/annotations/Typology;
    .locals 1

    .line 22
    const-class v0, Lorg/objenesis/instantiator/annotations/Typology;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/objenesis/instantiator/annotations/Typology;

    return-object p0
.end method

.method public static values()[Lorg/objenesis/instantiator/annotations/Typology;
    .locals 1

    .line 22
    sget-object v0, Lorg/objenesis/instantiator/annotations/Typology;->$VALUES:[Lorg/objenesis/instantiator/annotations/Typology;

    invoke-virtual {v0}, [Lorg/objenesis/instantiator/annotations/Typology;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/objenesis/instantiator/annotations/Typology;

    return-object v0
.end method
