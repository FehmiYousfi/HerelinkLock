.class public Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;
.super Ljava/lang/Object;
.source "ECDHServerKeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EcdhData"
.end annotation


# instance fields
.field public final encodedPoint:[B

.field public final supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;[B)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;->supportedGroup:Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    .line 163
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ECDHServerKeyExchange$EcdhData;->encodedPoint:[B

    return-void
.end method
