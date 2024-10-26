.class public final enum Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;
.super Ljava/lang/Enum;
.source "DtlsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/config/DtlsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DtlsRole"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

.field public static final enum BOTH:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

.field public static final enum CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

.field public static final enum SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    const/4 v1, 0x0

    const-string v2, "CLIENT_ONLY"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    .line 72
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    const/4 v2, 0x1

    const-string v3, "SERVER_ONLY"

    invoke-direct {v0, v3, v2}, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    .line 76
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    const/4 v3, 0x2

    const-string v4, "BOTH"

    invoke-direct {v0, v4, v3}, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->BOTH:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    .line 64
    sget-object v4, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->CLIENT_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    aput-object v4, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->SERVER_ONLY:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->BOTH:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->$VALUES:[Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;
    .locals 1

    .line 64
    const-class v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;
    .locals 1

    .line 64
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->$VALUES:[Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    return-object v0
.end method
