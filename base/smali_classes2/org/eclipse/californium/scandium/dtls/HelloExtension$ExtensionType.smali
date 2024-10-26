.class public final enum Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;
.super Ljava/lang/Enum;
.source "HelloExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/HelloExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExtensionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum APPLICATION_LAYER_PROTOCOL_NEGOTIATION:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum CLIENT_AUTHZ:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum CLIENT_CERTIFICATE_URL:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum CONNECTION_ID_DEPRECATED:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum EC_POINT_FORMATS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum ELLIPTIC_CURVES:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum ENCRYPT_THEN_MAC:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum EXTENDED_MASTER_SECRET:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum HEARTBEAT:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum RECORD_SIZE_LIMIT:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum RENEGOTIATION_INFO:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum SERVER_AUTHZ:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum SERVER_NAME:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum SESSION_TICKET_TLS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum SIGNED_CERTIFICATE_TIMESTAMP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum SRP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum STATUS_REQUEST:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum STATUS_REQUEST_V2:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum TRUNCATED_HMAC:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum TRUSTED_CA_KEYS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum USER_MAPPING:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

.field public static final enum USE_SRTP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private replacement:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 232
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/4 v1, 0x0

    const-string v2, "SERVER_NAME"

    const-string v3, "server_name"

    invoke-direct {v0, v2, v1, v1, v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_NAME:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/4 v2, 0x1

    const-string v3, "MAX_FRAGMENT_LENGTH"

    const-string v4, "max_fragment_length"

    invoke-direct {v0, v3, v2, v2, v4}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/4 v3, 0x2

    const-string v4, "CLIENT_CERTIFICATE_URL"

    const-string v5, "client_certificate_url"

    invoke-direct {v0, v4, v3, v3, v5}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_CERTIFICATE_URL:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 233
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/4 v4, 0x3

    const-string v5, "TRUSTED_CA_KEYS"

    const-string v6, "trusted_ca_keys"

    invoke-direct {v0, v5, v4, v4, v6}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->TRUSTED_CA_KEYS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 234
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/4 v5, 0x4

    const-string v6, "TRUNCATED_HMAC"

    const-string v7, "truncated_hmac"

    invoke-direct {v0, v6, v5, v5, v7}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->TRUNCATED_HMAC:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/4 v6, 0x5

    const-string v7, "STATUS_REQUEST"

    const-string v8, "status_request"

    invoke-direct {v0, v7, v6, v6, v8}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->STATUS_REQUEST:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 240
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/4 v7, 0x6

    const-string v8, "USER_MAPPING"

    const-string v9, "user_mapping"

    invoke-direct {v0, v8, v7, v7, v9}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->USER_MAPPING:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 246
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/4 v8, 0x7

    const-string v9, "CLIENT_AUTHZ"

    const-string v10, "client_authz"

    invoke-direct {v0, v9, v8, v8, v10}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_AUTHZ:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v9, 0x8

    const-string v10, "SERVER_AUTHZ"

    const-string v11, "server_authz"

    invoke-direct {v0, v10, v9, v9, v11}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_AUTHZ:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 253
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v10, 0x9

    const-string v11, "CERT_TYPE"

    const-string v12, "cert_type"

    invoke-direct {v0, v11, v10, v10, v12}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 259
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v11, 0xa

    const-string v12, "ELLIPTIC_CURVES"

    const-string v13, "elliptic_curves"

    invoke-direct {v0, v12, v11, v11, v13}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->ELLIPTIC_CURVES:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v12, 0xb

    const-string v13, "EC_POINT_FORMATS"

    const-string v14, "ec_point_formats"

    invoke-direct {v0, v13, v12, v12, v14}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->EC_POINT_FORMATS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 265
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v13, 0xc

    const-string v14, "SRP"

    const-string v15, "srp"

    invoke-direct {v0, v14, v13, v13, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SRP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 268
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v14, 0xd

    const-string v15, "SIGNATURE_ALGORITHMS"

    const-string v13, "signature_algorithms"

    invoke-direct {v0, v15, v14, v14, v13}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 274
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v13, 0xe

    const-string v15, "USE_SRTP"

    const-string v14, "use_srtp"

    invoke-direct {v0, v15, v13, v13, v14}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->USE_SRTP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 280
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v14, "HEARTBEAT"

    const/16 v15, 0xf

    const/16 v13, 0xf

    const-string v12, "heartbeat"

    invoke-direct {v0, v14, v15, v13, v12}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->HEARTBEAT:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 287
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "APPLICATION_LAYER_PROTOCOL_NEGOTIATION"

    const/16 v13, 0x10

    const/16 v14, 0x10

    const-string v15, "application_layer_protocol_negotiation"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->APPLICATION_LAYER_PROTOCOL_NEGOTIATION:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 294
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "STATUS_REQUEST_V2"

    const/16 v13, 0x11

    const/16 v14, 0x11

    const-string v15, "status_request_v2"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->STATUS_REQUEST_V2:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 301
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "SIGNED_CERTIFICATE_TIMESTAMP"

    const/16 v13, 0x12

    const/16 v14, 0x12

    const-string v15, "signed_certificate_timestamp"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SIGNED_CERTIFICATE_TIMESTAMP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 307
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "CLIENT_CERT_TYPE"

    const/16 v13, 0x13

    const/16 v14, 0x13

    const-string v15, "client_certificate_type"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "SERVER_CERT_TYPE"

    const/16 v13, 0x14

    const/16 v14, 0x14

    const-string v15, "server_certificate_type"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 313
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "ENCRYPT_THEN_MAC"

    const/16 v13, 0x15

    const/16 v14, 0x16

    const-string v15, "encrypt_then_mac"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->ENCRYPT_THEN_MAC:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 321
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "EXTENDED_MASTER_SECRET"

    const/16 v13, 0x16

    const/16 v14, 0x17

    const-string v15, "extended_master_secret"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->EXTENDED_MASTER_SECRET:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 329
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "RECORD_SIZE_LIMIT"

    const/16 v13, 0x17

    const/16 v14, 0x1c

    const-string v15, "record_size_limit"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->RECORD_SIZE_LIMIT:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 335
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "SESSION_TICKET_TLS"

    const/16 v13, 0x18

    const/16 v14, 0x23

    const-string v15, "SessionTicket TLS"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SESSION_TICKET_TLS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 346
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "CONNECTION_ID"

    const/16 v13, 0x19

    const/16 v14, 0x36

    const-string v15, "Connection ID"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 368
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    sget-object v21, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v17, "CONNECTION_ID_DEPRECATED"

    const/16 v18, 0x1a

    const/16 v19, 0x35

    const-string v20, "Connection ID (deprecated)"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID_DEPRECATED:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 374
    new-instance v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const-string v12, "RENEGOTIATION_INFO"

    const/16 v13, 0x1b

    const v14, 0xff01

    const-string v15, "renegotiation_info"

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->RENEGOTIATION_INFO:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v0, 0x1c

    new-array v0, v0, [Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    .line 229
    sget-object v12, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_NAME:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v12, v0, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_CERTIFICATE_URL:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->TRUSTED_CA_KEYS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->TRUNCATED_HMAC:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->STATUS_REQUEST:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->USER_MAPPING:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_AUTHZ:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_AUTHZ:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v9

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v10

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->ELLIPTIC_CURVES:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    aput-object v1, v0, v11

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->EC_POINT_FORMATS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SRP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SIGNATURE_ALGORITHMS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->USE_SRTP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->HEARTBEAT:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->APPLICATION_LAYER_PROTOCOL_NEGOTIATION:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->STATUS_REQUEST_V2:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SIGNED_CERTIFICATE_TIMESTAMP:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CLIENT_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SERVER_CERT_TYPE:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->ENCRYPT_THEN_MAC:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->EXTENDED_MASTER_SECRET:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->RECORD_SIZE_LIMIT:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->SESSION_TICKET_TLS:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->CONNECTION_ID_DEPRECATED:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->RENEGOTIATION_INFO:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

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

    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 381
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->id:I

    .line 382
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->name:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;",
            ")V"
        }
    .end annotation

    .line 385
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 386
    iput p3, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->id:I

    .line 387
    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->name:Ljava/lang/String;

    .line 388
    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->replacement:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;)Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;
    .locals 0

    .line 229
    iget-object p0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->replacement:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    return-object p0
.end method

.method public static getExtensionTypeById(I)Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;
    .locals 5

    .line 401
    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->values()[Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 402
    invoke-virtual {v3}, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;
    .locals 1

    .line 229
    const-class v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    return-object p0
.end method

.method public static values()[Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;
    .locals 1

    .line 229
    sget-object v0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->$VALUES:[Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    invoke-virtual {v0}, [Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 420
    iget v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->id:I

    return v0
.end method

.method public getReplacementType()Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->replacement:Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/HelloExtension$ExtensionType;->name:Ljava/lang/String;

    return-object v0
.end method
