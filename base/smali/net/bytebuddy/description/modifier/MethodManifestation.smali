.class public final enum Lnet/bytebuddy/description/modifier/MethodManifestation;
.super Ljava/lang/Enum;
.source "MethodManifestation.java"

# interfaces
.implements Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/modifier/MethodManifestation;",
        ">;",
        "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/modifier/MethodManifestation;

.field public static final enum ABSTRACT:Lnet/bytebuddy/description/modifier/MethodManifestation;

.field public static final enum BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

.field public static final enum FINAL:Lnet/bytebuddy/description/modifier/MethodManifestation;

.field public static final enum FINAL_BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

.field public static final enum FINAL_NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

.field public static final enum NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

.field public static final enum PLAIN:Lnet/bytebuddy/description/modifier/MethodManifestation;


# instance fields
.field private final mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 15
    new-instance v0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    invoke-direct {v0, v2, v1, v1}, Lnet/bytebuddy/description/modifier/MethodManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/MethodManifestation;

    .line 20
    new-instance v0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    const/4 v2, 0x1

    const-string v3, "NATIVE"

    const/16 v4, 0x100

    invoke-direct {v0, v3, v2, v4}, Lnet/bytebuddy/description/modifier/MethodManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    .line 25
    new-instance v0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    const/4 v3, 0x2

    const-string v4, "ABSTRACT"

    const/16 v5, 0x400

    invoke-direct {v0, v4, v3, v5}, Lnet/bytebuddy/description/modifier/MethodManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/MethodManifestation;

    .line 30
    new-instance v0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    const/4 v4, 0x3

    const-string v5, "FINAL"

    const/16 v6, 0x10

    invoke-direct {v0, v5, v4, v6}, Lnet/bytebuddy/description/modifier/MethodManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL:Lnet/bytebuddy/description/modifier/MethodManifestation;

    .line 35
    new-instance v0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    const/4 v5, 0x4

    const-string v6, "FINAL_NATIVE"

    const/16 v7, 0x110

    invoke-direct {v0, v6, v5, v7}, Lnet/bytebuddy/description/modifier/MethodManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL_NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    .line 40
    new-instance v0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    const/4 v6, 0x5

    const-string v7, "BRIDGE"

    const/16 v8, 0x40

    invoke-direct {v0, v7, v6, v8}, Lnet/bytebuddy/description/modifier/MethodManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    .line 45
    new-instance v0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    const/4 v7, 0x6

    const-string v8, "FINAL_BRIDGE"

    const/16 v9, 0x50

    invoke-direct {v0, v8, v7, v9}, Lnet/bytebuddy/description/modifier/MethodManifestation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL_BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    const/4 v0, 0x7

    new-array v0, v0, [Lnet/bytebuddy/description/modifier/MethodManifestation;

    .line 10
    sget-object v8, Lnet/bytebuddy/description/modifier/MethodManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/MethodManifestation;

    aput-object v8, v0, v1

    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->ABSTRACT:Lnet/bytebuddy/description/modifier/MethodManifestation;

    aput-object v1, v0, v3

    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL:Lnet/bytebuddy/description/modifier/MethodManifestation;

    aput-object v1, v0, v4

    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL_NATIVE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    aput-object v1, v0, v5

    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    aput-object v1, v0, v6

    sget-object v1, Lnet/bytebuddy/description/modifier/MethodManifestation;->FINAL_BRIDGE:Lnet/bytebuddy/description/modifier/MethodManifestation;

    aput-object v1, v0, v7

    sput-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p3, p0, Lnet/bytebuddy/description/modifier/MethodManifestation;->mask:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/modifier/MethodManifestation;
    .locals 1

    .line 10
    const-class v0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/modifier/MethodManifestation;
    .locals 1

    .line 10
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->$VALUES:[Lnet/bytebuddy/description/modifier/MethodManifestation;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/modifier/MethodManifestation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/modifier/MethodManifestation;

    return-object v0
.end method


# virtual methods
.method public getMask()I
    .locals 1

    .line 63
    iget v0, p0, Lnet/bytebuddy/description/modifier/MethodManifestation;->mask:I

    return v0
.end method

.method public getRange()I
    .locals 1

    const/16 v0, 0x550

    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 91
    iget v0, p0, Lnet/bytebuddy/description/modifier/MethodManifestation;->mask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBridge()Z
    .locals 1

    .line 109
    iget v0, p0, Lnet/bytebuddy/description/modifier/MethodManifestation;->mask:I

    and-int/lit8 v0, v0, 0x40

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

    .line 73
    sget-object v0, Lnet/bytebuddy/description/modifier/MethodManifestation;->PLAIN:Lnet/bytebuddy/description/modifier/MethodManifestation;

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

    .line 100
    iget v0, p0, Lnet/bytebuddy/description/modifier/MethodManifestation;->mask:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNative()Z
    .locals 1

    .line 82
    iget v0, p0, Lnet/bytebuddy/description/modifier/MethodManifestation;->mask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
