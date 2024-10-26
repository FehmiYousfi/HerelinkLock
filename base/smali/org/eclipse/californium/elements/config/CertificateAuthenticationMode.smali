.class public final enum Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;
.super Ljava/lang/Enum;
.source "CertificateAuthenticationMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

.field public static final enum NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

.field public static final enum NONE:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

.field public static final enum WANTED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;


# instance fields
.field private final useCertificateRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NONE:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    .line 44
    new-instance v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    const/4 v2, 0x1

    const-string v3, "WANTED"

    invoke-direct {v0, v3, v2, v2}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->WANTED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    .line 52
    new-instance v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    const/4 v3, 0x2

    const-string v4, "NEEDED"

    invoke-direct {v0, v4, v3, v2}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    .line 27
    sget-object v4, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NONE:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->WANTED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->$VALUES:[Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-boolean p3, p0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->useCertificateRequest:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;
    .locals 1

    .line 27
    const-class v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;
    .locals 1

    .line 27
    sget-object v0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->$VALUES:[Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    invoke-virtual {v0}, [Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    return-object v0
.end method


# virtual methods
.method public useCertificateRequest()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->useCertificateRequest:Z

    return v0
.end method
