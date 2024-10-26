.class public final enum Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;
.super Ljava/lang/Enum;
.source "CipherSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CipherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

.field public static final enum AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

.field public static final enum BLOCK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

.field public static final enum NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

.field public static final enum STREAM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1233
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const/4 v1, 0x0

    const-string v2, "NULL"

    invoke-direct {v0, v2, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const/4 v2, 0x1

    const-string v3, "STREAM"

    invoke-direct {v0, v3, v2}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->STREAM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const/4 v3, 0x2

    const-string v4, "BLOCK"

    invoke-direct {v0, v4, v3}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->BLOCK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const/4 v4, 0x3

    const-string v5, "AEAD"

    invoke-direct {v0, v5, v4}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    .line 1232
    sget-object v5, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->NULL:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    aput-object v5, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->STREAM:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->BLOCK:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->AEAD:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;
    .locals 1

    .line 1232
    const-class v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;
    .locals 1

    .line 1232
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CipherType;

    return-object v0
.end method
