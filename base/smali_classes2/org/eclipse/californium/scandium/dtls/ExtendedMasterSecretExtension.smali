.class public final Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;
.super Lorg/eclipse/californium/scandium/dtls/HelloExtension;
.source "ExtendedMasterSecretExtension.java"


# static fields
.field public static INSTANCE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;-><init>()V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;->INSTANCE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->EXTENDED_MASTER_SECRET:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/HelloExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    return-void
.end method

.method public static fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;
    .locals 1

    if-eqz p0, :cond_0

    .line 61
    sget-object p0, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;->INSTANCE:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretExtension;

    return-object p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "record size limit must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected getExtensionLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected writeExtensionTo(Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 0

    return-void
.end method
