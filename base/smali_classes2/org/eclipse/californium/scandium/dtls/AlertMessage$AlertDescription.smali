.class public final enum Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;
.super Ljava/lang/Enum;
.source "AlertMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/AlertMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlertDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum ACCESS_DENIED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum BAD_RECORD_MAC:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum CERTIFICATE_EXPIRED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum CERTIFICATE_REVOKED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum CERTIFICATE_UNKNOWN:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum CLOSE_NOTIFY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum DECOMPRESSION_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum DECRYPTION_FAILED_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum DECRYPT_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum EXPORT_RESTRICTION_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum INSUFFICIENT_SECURITY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum NO_CERTIFICATE_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum NO_RENEGOTIATION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum PROTOCOL_VERSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum RECORD_OVERFLOW:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum UNKNOWN_CA:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum UNKNOWN_PSK_IDENTITY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum UNSUPPORTED_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum UNSUPPORTED_EXTENSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

.field public static final enum USER_CANCELED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;


# instance fields
.field private code:B

.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 141
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v1, 0x0

    const-string v2, "CLOSE_NOTIFY"

    const-string v3, "close_notify"

    invoke-direct {v0, v2, v1, v1, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CLOSE_NOTIFY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 142
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v2, 0x1

    const/16 v3, 0xa

    const-string v4, "UNEXPECTED_MESSAGE"

    const-string v5, "unexpected_message"

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 143
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v4, 0x2

    const/16 v5, 0x14

    const-string v6, "BAD_RECORD_MAC"

    const-string v7, "bad_record_mac"

    invoke-direct {v0, v6, v4, v5, v7}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_RECORD_MAC:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 144
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v6, 0x3

    const/16 v7, 0x15

    const-string v8, "DECRYPTION_FAILED_RESERVED"

    const-string v9, "decryption_failed"

    invoke-direct {v0, v8, v6, v7, v9}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPTION_FAILED_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 145
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v8, 0x4

    const/16 v9, 0x16

    const-string v10, "RECORD_OVERFLOW"

    const-string v11, "record_overflow"

    invoke-direct {v0, v10, v8, v9, v11}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->RECORD_OVERFLOW:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 146
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v10, 0x5

    const-string v11, "DECOMPRESSION_FAILURE"

    const/16 v12, 0x1e

    const-string v13, "decompression_failure"

    invoke-direct {v0, v11, v10, v12, v13}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECOMPRESSION_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 147
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v11, 0x6

    const-string v12, "HANDSHAKE_FAILURE"

    const/16 v13, 0x28

    const-string v14, "handshake_failure"

    invoke-direct {v0, v12, v11, v13, v14}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 148
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v12, 0x7

    const-string v13, "NO_CERTIFICATE_RESERVED"

    const/16 v14, 0x29

    const-string v15, "no_certificate"

    invoke-direct {v0, v13, v12, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->NO_CERTIFICATE_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 149
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v13, 0x8

    const-string v14, "BAD_CERTIFICATE"

    const/16 v15, 0x2a

    const-string v12, "bad_certificate"

    invoke-direct {v0, v14, v13, v15, v12}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 150
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v12, 0x9

    const-string v14, "UNSUPPORTED_CERTIFICATE"

    const/16 v15, 0x2b

    const-string v13, "unsupported_certificate"

    invoke-direct {v0, v14, v12, v15, v13}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 151
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v13, "CERTIFICATE_REVOKED"

    const/16 v14, 0x2c

    const-string v15, "certificate_revoked"

    invoke-direct {v0, v13, v3, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CERTIFICATE_REVOKED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 152
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v13, 0xb

    const-string v14, "CERTIFICATE_EXPIRED"

    const/16 v15, 0x2d

    const-string v3, "certificate_expired"

    invoke-direct {v0, v14, v13, v15, v3}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CERTIFICATE_EXPIRED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 153
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "CERTIFICATE_UNKNOWN"

    const/16 v14, 0xc

    const/16 v15, 0x2e

    const-string v13, "certificate_unknown"

    invoke-direct {v0, v3, v14, v15, v13}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CERTIFICATE_UNKNOWN:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 154
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "ILLEGAL_PARAMETER"

    const/16 v13, 0xd

    const/16 v14, 0x2f

    const-string v15, "illegal_parameter"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 155
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "UNKNOWN_CA"

    const/16 v13, 0xe

    const/16 v14, 0x30

    const-string v15, "unknown_ca"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNKNOWN_CA:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 156
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "ACCESS_DENIED"

    const/16 v13, 0xf

    const/16 v14, 0x31

    const-string v15, "access_denied"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ACCESS_DENIED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 157
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "DECODE_ERROR"

    const/16 v13, 0x10

    const/16 v14, 0x32

    const-string v15, "decode_error"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 158
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "DECRYPT_ERROR"

    const/16 v13, 0x11

    const/16 v14, 0x33

    const-string v15, "decrypt_error"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPT_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 159
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "EXPORT_RESTRICTION_RESERVED"

    const/16 v13, 0x12

    const/16 v14, 0x3c

    const-string v15, "export_restriction"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->EXPORT_RESTRICTION_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 160
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "PROTOCOL_VERSION"

    const/16 v13, 0x13

    const/16 v14, 0x46

    const-string v15, "protocol_version"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->PROTOCOL_VERSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 161
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "INSUFFICIENT_SECURITY"

    const/16 v13, 0x47

    const-string v14, "insufficient_security"

    invoke-direct {v0, v3, v5, v13, v14}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INSUFFICIENT_SECURITY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 162
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "INTERNAL_ERROR"

    const/16 v13, 0x50

    const-string v14, "internal_error"

    invoke-direct {v0, v3, v7, v13, v14}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 163
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "USER_CANCELED"

    const/16 v13, 0x5a

    const-string v14, "user_canceled"

    invoke-direct {v0, v3, v9, v13, v14}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->USER_CANCELED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 164
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "NO_RENEGOTIATION"

    const/16 v13, 0x17

    const/16 v14, 0x64

    const-string v15, "no_negotiation"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->NO_RENEGOTIATION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 165
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "UNSUPPORTED_EXTENSION"

    const/16 v13, 0x18

    const/16 v14, 0x6e

    const-string v15, "unsupported_extension"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_EXTENSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 166
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const-string v3, "UNKNOWN_PSK_IDENTITY"

    const/16 v13, 0x19

    const/16 v14, 0x73

    const-string v15, "unknown_psk_identity"

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNKNOWN_PSK_IDENTITY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v0, 0x1a

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    .line 139
    sget-object v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CLOSE_NOTIFY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v3, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNEXPECTED_MESSAGE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_RECORD_MAC:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPTION_FAILED_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->RECORD_OVERFLOW:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECOMPRESSION_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v10

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->HANDSHAKE_FAILURE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v11

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->NO_CERTIFICATE_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->BAD_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_CERTIFICATE:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v12

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CERTIFICATE_REVOKED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CERTIFICATE_EXPIRED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->CERTIFICATE_UNKNOWN:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ILLEGAL_PARAMETER:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNKNOWN_CA:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->ACCESS_DENIED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECODE_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->DECRYPT_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->EXPORT_RESTRICTION_RESERVED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->PROTOCOL_VERSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INSUFFICIENT_SECURITY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->INTERNAL_ERROR:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->USER_CANCELED:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    aput-object v1, v0, v9

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->NO_RENEGOTIATION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNSUPPORTED_EXTENSION:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->UNKNOWN_PSK_IDENTITY:Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 172
    iput-byte p1, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->code:B

    .line 173
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->description:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;)B
    .locals 0

    .line 139
    iget-byte p0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->code:B

    return p0
.end method

.method public static getDescriptionByCode(I)Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;
    .locals 6

    .line 192
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->values()[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 193
    iget-byte v4, v3, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->code:B

    int-to-byte v5, p0

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;
    .locals 1

    .line 139
    const-class v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;
    .locals 1

    .line 139
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 177
    iget-byte v0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->code:B

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/AlertMessage$AlertDescription;->description:Ljava/lang/String;

    return-object v0
.end method
