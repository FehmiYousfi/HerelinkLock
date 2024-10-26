.class public final Lorg/eclipse/californium/scandium/dtls/SessionId;
.super Lorg/eclipse/californium/elements/util/Bytes;
.source "SessionId.java"


# static fields
.field private static final EMPTY_SESSION_ID:Lorg/eclipse/californium/scandium/dtls/SessionId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/SessionId;

    sget-object v1, Lorg/eclipse/californium/elements/util/Bytes;->EMPTY:[B

    invoke-direct {v0, v1}, Lorg/eclipse/californium/scandium/dtls/SessionId;-><init>([B)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/SessionId;->EMPTY_SESSION_ID:Lorg/eclipse/californium/scandium/dtls/SessionId;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/RandomManager;->currentSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/eclipse/californium/elements/util/Bytes;->createBytes(Ljava/util/Random;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/californium/scandium/dtls/SessionId;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/eclipse/californium/elements/util/Bytes;-><init>([B)V

    return-void
.end method

.method public static emptySessionId()Lorg/eclipse/californium/scandium/dtls/SessionId;
    .locals 1

    .line 57
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/SessionId;->EMPTY_SESSION_ID:Lorg/eclipse/californium/scandium/dtls/SessionId;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/eclipse/californium/scandium/dtls/SessionId;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
