.class public final enum Lnet/bytebuddy/description/modifier/EnumerationState;
.super Ljava/lang/Enum;
.source "EnumerationState.java"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/EnumerationState;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/EnumerationState;

.field public static final enum ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lnet/bytebuddy/description/modifier/EnumerationState;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    invoke-direct {v0, v2, v1, v1}, Lnet/bytebuddy/description/modifier/EnumerationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;

    .line 18
    new-instance v0, Lnet/bytebuddy/description/modifier/EnumerationState;

    const/4 v2, 0x1

    const-string v3, "ENUMERATION"

    const/16 v4, 0x4000

    invoke-direct {v0, v3, v2, v4}, Lnet/bytebuddy/description/modifier/EnumerationState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/description/modifier/EnumerationState;

    .line 8
    sget-object v3, Lnet/bytebuddy/description/modifier/EnumerationState;->PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;

    aput-object v3, v0, v1

    sget-object v1, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    aput-object v1, v0, v2

    sput-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->$VALUES:[Lnet/bytebuddy/description/modifier/EnumerationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lnet/bytebuddy/description/modifier/EnumerationState;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/EnumerationState;
    .locals 1

    .line 8
    const-class v0, Lnet/bytebuddy/description/modifier/EnumerationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/EnumerationState;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/EnumerationState;
    .locals 1

    .line 8
    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->$VALUES:[Lnet/bytebuddy/description/modifier/EnumerationState;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/EnumerationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/EnumerationState;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    .line 36
    iget v0, p0, Lnet/bytebuddy/description/modifier/EnumerationState;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/16 v0, 0x4000

    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 46
    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->PLAIN:Lnet/bytebuddy/description/modifier/EnumerationState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnumeration()Z
    .locals 1

    .line 55
    sget-object v0, Lnet/bytebuddy/description/modifier/EnumerationState;->ENUMERATION:Lnet/bytebuddy/description/modifier/EnumerationState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
