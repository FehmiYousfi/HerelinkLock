.class public final enum Lnet/bytebuddy/description/modifier/TypeManifestation;
.super Ljava/lang/Enum;
.source "TypeManifestation.java"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/TypeManifestation;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    invoke-direct {v0, v2, v1, v1}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 18
    new-instance v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v2, 0x1

    const-string v3, "FINAL"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v2, v4}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 23
    new-instance v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v3, 0x2

    const-string v4, "ABSTRACT"

    const/16 v5, 0x400

    invoke-direct {v0, v4, v3, v5}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 28
    new-instance v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v4, 0x3

    const-string v5, "INTERFACE"

    const/16 v6, 0x600

    invoke-direct {v0, v5, v4, v6}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 33
    new-instance v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v5, 0x4

    const-string v6, "ANNOTATION"

    const/16 v7, 0x2600

    invoke-direct {v0, v6, v5, v7}, Lnet/bytebuddy/description/modifier/TypeManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    const/4 v0, 0x5

    new-array v0, v0, [Lnet/bytebuddy/description/modifier/TypeManifestation;

    .line 8
    sget-object v6, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v6, v0, v1

    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->FINAL:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->INTERFACE:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/description/modifier/TypeManifestation;->ANNOTATION:Lnet/bytebuddy/description/modifier/TypeManifestation;

    aput-object v1, v0, v5

    sput-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/TypeManifestation;
    .locals 1

    .line 8
    const-class v0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/TypeManifestation;
    .locals 1

    .line 8
    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/TypeManifestation;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/TypeManifestation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/TypeManifestation;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    .line 51
    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/16 v0, 0x2610

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 79
    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/bytebuddy/description/modifier/TypeManifestation;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnnotation()Z
    .locals 1

    .line 97
    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDefault()Z
    .locals 1

    .line 61
    sget-object v0, Lnet/bytebuddy/description/modifier/TypeManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/TypeManifestation;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFinal()Z
    .locals 1

    .line 70
    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInterface()Z
    .locals 1

    .line 88
    iget v0, p0, Lnet/bytebuddy/description/modifier/TypeManifestation;->mask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
