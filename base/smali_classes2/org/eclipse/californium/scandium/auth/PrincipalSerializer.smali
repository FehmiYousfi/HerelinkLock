.class public final Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;
.super Ljava/lang/Object;
.source "PrincipalSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;
    }
.end annotation


# static fields
.field private static final PSK_HOSTNAME_LENGTH_BITS:I = 0x10

.field private static final PSK_IDENTITY_LENGTH_BITS:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Lorg/eclipse/californium/elements/util/DatagramReader;)Ljava/security/Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 134
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v0

    .line 135
    invoke-static {v0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->fromCode(B)Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    move-result-object v0

    .line 136
    sget-object v1, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$1;->$SwitchMap$org$eclipse$californium$scandium$auth$PrincipalSerializer$ClientAuthenticationType:[I

    invoke-virtual {v0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_0
    invoke-static {p0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;->deserializeSubjectInfo(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    move-result-object p0

    return-object p0

    .line 140
    :cond_1
    invoke-static {p0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;->deserializeIdentity(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    move-result-object p0

    return-object p0

    .line 138
    :cond_2
    invoke-static {p0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;->deserializeCertChain(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/elements/auth/X509CertPath;

    move-result-object p0

    return-object p0

    .line 132
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "reader must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static deserializeCertChain(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/elements/auth/X509CertPath;
    .locals 0

    .line 150
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readSequenceEntity(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    .line 151
    invoke-static {p0}, Lorg/eclipse/californium/elements/auth/X509CertPath;->fromBytes([B)Lorg/eclipse/californium/elements/auth/X509CertPath;

    move-result-object p0

    return-object p0
.end method

.method private static deserializeIdentity(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;
    .locals 3

    .line 155
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/util/DatagramReader;->readNextByte()B

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 157
    invoke-static {p0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readString(Lorg/eclipse/californium/elements/util/DataStreamReader;I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {p0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readString(Lorg/eclipse/californium/elements/util/DataStreamReader;I)Ljava/lang/String;

    move-result-object p0

    .line 159
    new-instance v1, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    invoke-direct {v1, v0, p0}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 161
    :cond_0
    invoke-static {p0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->readString(Lorg/eclipse/californium/elements/util/DataStreamReader;I)Ljava/lang/String;

    move-result-object p0

    .line 162
    new-instance v0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static deserializeSubjectInfo(Lorg/eclipse/californium/elements/util/DatagramReader;)Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lorg/eclipse/californium/elements/util/Asn1DerDecoder;->readSequenceEntity(Lorg/eclipse/californium/elements/util/DatagramReader;)[B

    move-result-object p0

    .line 169
    new-instance v0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    invoke-direct {v0, p0}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;-><init>([B)V

    return-object v0
.end method

.method public static serialize(Ljava/security/Principal;Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    .line 88
    sget-object p0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->ANONYMOUS:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    invoke-static {p0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->access$000(Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;)B

    move-result p0

    invoke-virtual {p1, p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    if-eqz v0, :cond_1

    .line 90
    check-cast p0, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;

    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;->serializeIdentity(Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    goto :goto_0

    .line 91
    :cond_1
    instance-of v0, p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    if-eqz v0, :cond_2

    .line 92
    check-cast p0, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;

    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;->serializeSubjectInfo(Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    goto :goto_0

    .line 93
    :cond_2
    instance-of v0, p0, Lorg/eclipse/californium/elements/auth/X509CertPath;

    if-eqz v0, :cond_3

    .line 94
    check-cast p0, Lorg/eclipse/californium/elements/auth/X509CertPath;

    invoke-static {p0, p1}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer;->serializeCertChain(Lorg/eclipse/californium/elements/auth/X509CertPath;Lorg/eclipse/californium/elements/util/DatagramWriter;)V

    :goto_0
    return-void

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported principal type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Writer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static serializeCertChain(Lorg/eclipse/californium/elements/auth/X509CertPath;Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 1

    .line 118
    sget-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->CERT:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->access$000(Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;)B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 119
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/X509CertPath;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    return-void
.end method

.method private static serializeIdentity(Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 2

    .line 101
    sget-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->PSK:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->access$000(Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;)B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 102
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->isScopedIdentity()Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 104
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->getVirtualHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->getIdentity()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 108
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/PreSharedKeyIdentity;->getIdentity()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Lorg/eclipse/californium/elements/util/SerializationUtil;->write(Lorg/eclipse/californium/elements/util/DatagramWriter;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static serializeSubjectInfo(Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;Lorg/eclipse/californium/elements/util/DatagramWriter;)V
    .locals 1

    .line 113
    sget-object v0, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->RPK:Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;

    invoke-static {v0}, Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;->access$000(Lorg/eclipse/californium/scandium/auth/PrincipalSerializer$ClientAuthenticationType;)B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeByte(B)V

    .line 114
    invoke-virtual {p0}, Lorg/eclipse/californium/elements/auth/RawPublicKeyIdentity;->getSubjectInfo()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/eclipse/californium/elements/util/DatagramWriter;->writeBytes([B)V

    return-void
.end method
