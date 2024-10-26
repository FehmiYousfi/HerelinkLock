.class final enum Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;
.super Ljava/lang/Enum;
.source "ButtonSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/ButtonSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

.field public static final enum MOMENTARY:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

.field public static final enum MULTI:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

.field public static final enum TOGGLE:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    const/4 v1, 0x0

    const-string v2, "MULTI"

    invoke-direct {v0, v2, v1, v1}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MULTI:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    .line 65
    new-instance v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    const/4 v2, 0x1

    const-string v3, "TOGGLE"

    invoke-direct {v0, v3, v2, v2}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->TOGGLE:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    .line 66
    new-instance v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    const/4 v3, 0x2

    const-string v4, "MOMENTARY"

    invoke-direct {v0, v4, v3, v3}, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MOMENTARY:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    .line 63
    sget-object v4, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MULTI:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    aput-object v4, v0, v1

    sget-object v1, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->TOGGLE:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->MOMENTARY:Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->$VALUES:[Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->value:I

    return-void
.end method

.method static synthetic access$000(Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;
    .locals 1

    .line 63
    const-class v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    return-object p0
.end method

.method public static values()[Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;
    .locals 1

    .line 63
    sget-object v0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->$VALUES:[Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    invoke-virtual {v0}, [Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/cubepilot/herelinksettings/ButtonSettings$ButtonType;->value:I

    return v0
.end method
