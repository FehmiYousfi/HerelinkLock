.class public final enum Lorg/eclipse/californium/scandium/dtls/CertificateType;
.super Ljava/lang/Enum;
.source "CertificateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/CertificateType;

.field public static final enum OPEN_PGP:Lorg/eclipse/californium/scandium/dtls/CertificateType;

.field public static final enum RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

.field public static final enum X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;


# instance fields
.field private final code:I

.field private final isSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "X_509"

    invoke-direct {v0, v3, v1, v1, v2}, Lorg/eclipse/californium/scandium/dtls/CertificateType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const-string v3, "OPEN_PGP"

    invoke-direct {v0, v3, v2, v2, v1}, Lorg/eclipse/californium/scandium/dtls/CertificateType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->OPEN_PGP:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const/4 v3, 0x2

    const-string v4, "RAW_PUBLIC_KEY"

    invoke-direct {v0, v4, v3, v3, v2}, Lorg/eclipse/californium/scandium/dtls/CertificateType;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/CertificateType;

    .line 23
    sget-object v4, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    aput-object v4, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->OPEN_PGP:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->code:I

    .line 32
    iput-boolean p4, p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->isSupported:Z

    return-void
.end method

.method public static getTypeFromCode(I)Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->RAW_PUBLIC_KEY:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object p0

    .line 40
    :cond_1
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->OPEN_PGP:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object p0

    .line 38
    :cond_2
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->X_509:Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 1

    .line 23
    const-class v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/CertificateType;
    .locals 1

    .line 23
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/CertificateType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/CertificateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/CertificateType;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->code:I

    return v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/eclipse/californium/scandium/dtls/CertificateType;->isSupported:Z

    return v0
.end method
