.class public Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;
.super Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;
.source "ServerCertificateTypeExtension.java"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/californium/scandium/dtls/CertificateType;",
            ">;)V"
        }
    .end annotation

    .line 37
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V
    .locals 1

    .line 27
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/CertificateType;)V
    .locals 1

    .line 47
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-direct {p0, v0, p1}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;-><init>(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;Lorg/eclipse/californium/scandium/dtls/CertificateType;)V

    return-void
.end method

.method public static fromExtensionDataReader(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;
    .locals 1

    .line 66
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/scandium/dtls/ServerCertificateTypeExtension;-><init>(Lorg/eclipse/californium/elements/util/DatagramReader;)V

    return-object v0
.end method


# virtual methods
.method public toString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "Server"

    .line 52
    invoke-super {p0, p1, v0}, Lorg/eclipse/californium/scandium/dtls/CertificateTypeExtension;->toString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
