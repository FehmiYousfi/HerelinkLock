.class public final enum Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;
.super Ljava/lang/Enum;
.source "ExtendedMasterSecretMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

.field public static final enum ENABLED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

.field public static final enum NONE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

.field public static final enum OPTIONAL:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

.field public static final enum REQUIRED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->NONE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    .line 45
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    const/4 v2, 0x1

    const-string v3, "OPTIONAL"

    invoke-direct {v0, v3, v2}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->OPTIONAL:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    .line 52
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    const/4 v3, 0x2

    const-string v4, "ENABLED"

    invoke-direct {v0, v4, v3}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ENABLED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    .line 56
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    const/4 v4, 0x3

    const-string v5, "REQUIRED"

    invoke-direct {v0, v5, v4}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->REQUIRED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    .line 35
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->NONE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    aput-object v5, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->OPTIONAL:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ENABLED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->REQUIRED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;
    .locals 1

    .line 35
    const-class v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;
    .locals 1

    .line 35
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    return-object v0
.end method


# virtual methods
.method public is(Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ordinal()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
