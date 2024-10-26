.class public final Lorg/eclipse/californium/scandium/config/DtlsConfig;
.super Ljava/lang/Object;
.source "DtlsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/californium/scandium/config/DtlsConfig$SignatureAndHashAlgorithmsDefinition;,
        Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;
    }
.end annotation


# static fields
.field public static final DEFAULT_ADDITIONAL_TIMEOUT_FOR_ECC_IN_MILLISECONDS:I = 0x0

.field public static final DEFAULT_MAX_CONNECTIONS:I = 0x249f0

.field public static final DEFAULT_MAX_DEFERRED_OUTBOUND_APPLICATION_MESSAGES:I = 0xa

.field public static final DEFAULT_MAX_DEFERRED_PROCESSED_INCOMING_RECORDS_SIZE:I = 0x2000

.field public static final DEFAULT_MAX_FRAGMENTED_HANDSHAKE_MESSAGE_LENGTH:I = 0x2000

.field public static final DEFAULT_MAX_PENDING_OUTBOUND_MESSAGES:I = 0x186a0

.field public static final DEFAULT_MAX_RETRANSMISSIONS:I = 0x4

.field public static final DEFAULT_MAX_RETRANSMISSION_TIMEOUT_IN_MILLISECONDS:I = 0xea60

.field public static final DEFAULT_MAX_TRANSMISSION_UNIT_LIMIT:I = 0x5dc

.field public static final DEFAULT_RETRANSMISSION_TIMEOUT_IN_MILLISECONDS:I = 0x7d0

.field public static final DEFAULT_STALE_CONNECTION_TRESHOLD_SECONDS:J = 0x708L

.field public static final DEFAULT_VERIFY_PEERS_ON_RESUMPTION_THRESHOLD_IN_PERCENT:I = 0x1e

.field public static final DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

.field public static final DTLS_ADDITIONAL_ECC_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final DTLS_AUTO_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final DTLS_CERTIFICATE_KEY_ALGORITHMS:Lorg/eclipse/californium/elements/config/EnumListDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumListDefinition<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTLS_CIPHER_SUITES:Lorg/eclipse/californium/elements/config/EnumListDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumListDefinition<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTLS_CLIENT_AUTHENTICATION_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumDefinition<",
            "Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTLS_CONNECTION_ID_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_CONNECTION_ID_NODE_ID:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_CONNECTOR_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_CURVES:Lorg/eclipse/californium/elements/config/EnumListDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumListDefinition<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTLS_DEFAULT_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/config/StringSetDefinition;

.field public static final DTLS_EXTENDED_MASTER_SECRET_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumDefinition<",
            "Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTLS_MAX_CONNECTIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_MAX_DEFERRED_INBOUND_RECORDS_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_MAX_DEFERRED_OUTBOUND_APPLICATION_MESSAGES:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_MAX_FRAGMENTED_HANDSHAKE_MESSAGE_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/elements/config/EnumDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumDefinition<",
            "Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTLS_MAX_RETRANSMISSIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_MAX_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final DTLS_MAX_TRANSMISSION_UNIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_MAX_TRANSMISSION_UNIT_LIMIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_OUTBOUND_MESSAGE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_PRESELECTED_CIPHER_SUITES:Lorg/eclipse/californium/elements/config/EnumListDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumListDefinition<",
            "Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTLS_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_RECOMMENDED_CIPHER_SUITES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_RECOMMENDED_CURVES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_RECOMMENDED_SIGNATURE_AND_HASH_ALGORITHMS_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_RECORD_SIZE_LIMIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_RETRANSMISSION_BACKOFF:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_RETRANSMISSION_INIT_RANDOM:Lorg/eclipse/californium/elements/config/FloatDefinition;

.field public static final DTLS_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final DTLS_RETRANSMISSION_TIMEOUT_SCALE:Lorg/eclipse/californium/elements/config/FloatDefinition;

.field public static final DTLS_ROLE:Lorg/eclipse/californium/elements/config/EnumDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumDefinition<",
            "Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;",
            ">;"
        }
    .end annotation
.end field

.field public static final DTLS_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_SERVER_USE_SESSION_ID:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_SESSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final DTLS_SIGNATURE_AND_HASH_ALGORITHMS:Lorg/eclipse/californium/scandium/config/DtlsConfig$SignatureAndHashAlgorithmsDefinition;

.field public static final DTLS_STALE_CONNECTION_THRESHOLD:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final DTLS_SUPPORT_DEPRECATED_CID:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_TRUNCATE_CERTIFICATE_PATH_FOR_VALIDATION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_TRUNCATE_CLIENT_CERTIFICATE_PATH:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_UPDATE_ADDRESS_USING_CID_ON_NEWER_RECORDS:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_USE_ANTI_REPLAY_FILTER:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_USE_DEPRECATED_CID:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_USE_DISABLED_WINDOW_FOR_ANTI_REPLAY_FILTER:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_USE_EARLY_STOP_RETRANSMISSION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_USE_HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_USE_HELLO_VERIFY_REQUEST_FOR_PSK:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_USE_MULTI_HANDSHAKE_MESSAGE_RECORDS:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_USE_MULTI_RECORD_MESSAGES:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_USE_SERVER_NAME_INDICATION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final DTLS_VERIFY_PEERS_ON_RESUMPTION_THRESHOLD:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final DTLS_VERIFY_SERVER_CERTIFICATES_SUBJECT:Lorg/eclipse/californium/elements/config/BooleanDefinition;

.field public static final MODULE:Ljava/lang/String; = "DTLS."

.field public static final RFC6347_RETRANSMISSION_TIMEOUT_IN_MILLISECONDS:I = 0x3e8

.field public static final RFC7925_RETRANSMISSION_TIMEOUT_IN_MILLISECONDS:I = 0x2328


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 225
    new-instance v6, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "DTLS.SESSION_TIMEOUT"

    const-string v2, "DTLS session timeout. Currently not supported."

    const-wide/16 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v6, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SESSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 235
    new-instance v0, Lorg/eclipse/californium/elements/config/TimeDefinition;

    const-string v1, "DTLS.AUTO_HANDSHAKE_TIMEOUT"

    const-string v2, "DTLS auto-handshake timeout. After that period without exchanging messages, a new message will initiate a handshake. Must not be used with SERVER_ONLY! Common value will be \"30[s]\" in order to compensate assumed NAT timeouts. <blank>, disabled."

    invoke-direct {v0, v1, v2}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_AUTO_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 258
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "DTLS.CONNECTION_ID_LENGTH"

    const-string v6, "DTLS connection ID length. <blank> disabled, 0 enables support without active use of CID."

    invoke-direct {v0, v5, v6, v4, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTION_ID_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 268
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v5, "DTLS.CONNECTION_ID_NODE_ID"

    const-string v6, "DTLS cluster-node ID used for connection ID. <blank> not used."

    invoke-direct {v0, v5, v6, v4, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTION_ID_NODE_ID:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 275
    new-instance v0, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v8, "DTLS.RETRANSMISSION_TIMEOUT"

    const-string v9, "DTLS initial retransmission timeout."

    const-wide/16 v10, 0x7d0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 281
    new-instance v0, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v18, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v14, "DTLS.MAX_RETRANSMISSION_TIMEOUT"

    const-string v15, "DTLS maximum retransmission timeout."

    const-wide/32 v16, 0xea60

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 288
    new-instance v0, Lorg/eclipse/californium/elements/config/FloatDefinition;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "DTLS.RETRANSMISSION_INIT_RANDOM"

    const-string v7, "DTLS random factor for initial retransmission timeout."

    invoke-direct {v0, v6, v7, v5, v5}, Lorg/eclipse/californium/elements/config/FloatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_INIT_RANDOM:Lorg/eclipse/californium/elements/config/FloatDefinition;

    .line 295
    new-instance v0, Lorg/eclipse/californium/elements/config/FloatDefinition;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "DTLS.RETRANSMISSION_TIMEOUT_SCALE"

    const-string v8, "DTLS scale factor for retransmission backoff-timeout."

    invoke-direct {v0, v7, v8, v6, v5}, Lorg/eclipse/californium/elements/config/FloatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_TIMEOUT_SCALE:Lorg/eclipse/californium/elements/config/FloatDefinition;

    .line 311
    new-instance v0, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v10, "DTLS.ADDITIONAL_ECC_TIMEOUT"

    const-string v11, "DTLS additional initial timeout for ECC related flights."

    const-wide/16 v12, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ADDITIONAL_ECC_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 317
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "DTLS.MAX_RETRANSMISSIONS"

    const-string v7, "DTLS maximum number of flight retransmissions."

    invoke-direct {v0, v6, v7, v5, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_RETRANSMISSIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 341
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v5, "DTLS.RETRANSMISSION_BACKOFF"

    const-string v6, "Number of flight-retransmissions before switching to backoff mode using single handshake messages in single record datagrams."

    invoke-direct {v0, v5, v6, v4, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_BACKOFF:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 350
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "DTLS.SERVER_USE_SESSION_ID"

    const-string v9, "Enable server to use a session ID in order to support session resumption."

    invoke-direct {v0, v8, v9, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SERVER_USE_SESSION_ID:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 358
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v8, "DTLS.USE_EARLY_STOP_RETRANSMISSION"

    const-string v9, "Stop retransmission on receiving the first message of the next flight, not waiting for the last message."

    invoke-direct {v0, v8, v9, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_EARLY_STOP_RETRANSMISSION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 369
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v8, 0x40

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "DTLS.RECORD_SIZE_LIMIT"

    const-string v10, "DTLS record size limit (RFC 8449). Between 64 and 16K."

    invoke-direct {v0, v9, v10, v4, v8}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECORD_SIZE_LIMIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 378
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumDefinition;

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;->values()[Lorg/eclipse/californium/scandium/dtls/MaxFragmentLengthExtension$Length;

    move-result-object v9

    const-string v10, "DTLS.MAX_FRAGMENT_SIZE"

    const-string v11, "DTLS maximum fragment length (RFC 6066)."

    invoke-direct {v0, v10, v11, v9}, Lorg/eclipse/californium/elements/config/EnumDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/elements/config/EnumDefinition;

    .line 384
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v9, 0x2000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "DTLS.MAX_FRAGMENTED_HANDSHAKE_MESSAGE_LENGTH"

    const-string v11, "DTLS maximum length of reassembled fragmented handshake message.\nMust be large enough for used certificates."

    invoke-direct {v0, v10, v11, v9, v8}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_FRAGMENTED_HANDSHAKE_MESSAGE_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 393
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v10, "DTLS.USE_MULTI_RECORD_MESSAGES"

    const-string v11, "Use multiple DTLS records in UDP messages."

    invoke-direct {v0, v10, v11}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_MULTI_RECORD_MESSAGES:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 398
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v10, "DTLS.USE_MULTI_HANDSHAKE_MESSAGE_RECORDS"

    const-string v11, "Use multiple handshake messages in DTLS records.\nNot all libraries may have implemented this!"

    invoke-direct {v0, v10, v11}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_MULTI_HANDSHAKE_MESSAGE_RECORDS:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 408
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v10, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    invoke-static {}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->values()[Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    move-result-object v11

    const-string v12, "DTLS.CLIENT_AUTHENTICATION_MODE"

    const-string v13, "DTLS client authentication mode for certificate based cipher suites."

    invoke-direct {v0, v12, v13, v10, v11}, Lorg/eclipse/californium/elements/config/EnumDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CLIENT_AUTHENTICATION_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    .line 416
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v10, "DTLS.VERIFY_SERVER_CERTIFICATES_SUBJECT"

    const-string v11, "DTLS verifies the server certificate\'s subjects."

    invoke-direct {v0, v10, v11, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_VERIFY_SERVER_CERTIFICATES_SUBJECT:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 422
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v10, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->BOTH:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    invoke-static {}, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->values()[Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    move-result-object v11

    const-string v12, "DTLS.ROLE"

    const-string v13, "DTLS role."

    invoke-direct {v0, v12, v13, v10, v11}, Lorg/eclipse/californium/elements/config/EnumDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ROLE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    .line 428
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v10, "DTLS.MAX_TRANSMISSION_UNIT"

    const-string v11, "DTLS MTU (Maximum Transmission Unit)."

    invoke-direct {v0, v10, v11, v4, v8}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_TRANSMISSION_UNIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 442
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v10, "DTLS.MAX_TRANSMISSION_UNIT_LIMIT"

    const-string v11, "DTLS MTU (Maximum Transmission Unit) limit for local auto detection."

    invoke-direct {v0, v10, v11, v4, v8}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_TRANSMISSION_UNIT_LIMIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 456
    new-instance v0, Lorg/eclipse/californium/elements/config/StringSetDefinition;

    const-string v10, "auto"

    const-string v11, "none"

    filled-new-array {v10, v11, v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "DTLS.DEFAULT_HANDSHAKE_MODE"

    const-string v12, "DTLS default handshake mode."

    invoke-direct {v0, v11, v12, v10}, Lorg/eclipse/californium/elements/config/StringSetDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_DEFAULT_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/config/StringSetDefinition;

    .line 474
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const v10, 0x249f0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "DTLS.MAX_CONNECTIONS"

    const-string v12, "DTLS maximum connections."

    invoke-direct {v0, v11, v12, v10, v6}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_CONNECTIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 488
    new-instance v0, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v14, "DTLS.STALE_CONNECTION_THRESHOLD"

    const-string v15, "DTLS threshold for state connections. Connections will only get removed for new ones, if at least for that threshold no messages are exchanged using that connection."

    const-wide/16 v16, 0x708

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_STALE_CONNECTION_THRESHOLD:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 498
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const v10, 0x186a0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "DTLS.OUTBOUND_MESSAGE_BUFFER_SIZE"

    const-string v12, "DTLS buffer size for outbound messages."

    invoke-direct {v0, v11, v12, v10, v8}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_OUTBOUND_MESSAGE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 511
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "DTLS.MAX_DEFERRED_OUTBOUND_APPLICATION_MESSAGES"

    const-string v12, "DTLS maximum deferred outbound application messages."

    invoke-direct {v0, v11, v12, v10, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_DEFERRED_OUTBOUND_APPLICATION_MESSAGES:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 524
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v10, "DTLS.MAX_DEFERRED_INBOUND_RECORDS"

    const-string v11, "DTLS maximum size of all deferred inbound messages."

    invoke-direct {v0, v10, v11, v9, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_DEFERRED_INBOUND_RECORDS_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 536
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v9, "DTLS.RECEIVER_THREAD_COUNT"

    const-string v10, "Number of DTLS receiver threads."

    invoke-direct {v0, v9, v10, v6, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 543
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v9, "DTLS.CONNECTOR_THREAD_COUNT"

    const-string v10, "Number of DTLS connector threads."

    invoke-direct {v0, v9, v10, v6, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTOR_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 549
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v6, "DTLS.RECEIVE_BUFFER_SIZE"

    const-string v9, "DTLS receive-buffer size."

    invoke-direct {v0, v6, v9, v4, v8}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 555
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const-string v6, "DTLS.SEND_BUFFER_SIZE"

    const-string v9, "DTLS send-buffer size."

    invoke-direct {v0, v6, v9, v4, v8}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 568
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v6, "DTLS.USE_SERVER_NAME_INDICATION"

    const-string v8, "DTLS use server name indication."

    invoke-direct {v0, v6, v8, v2}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_SERVER_NAME_INDICATION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 577
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ENABLED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->values()[Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    move-result-object v8

    const-string v9, "DTLS.EXTENDED_MASTER_SECRET_MODE"

    const-string v10, "DTLS extended master secret mode."

    invoke-direct {v0, v9, v10, v6, v8}, Lorg/eclipse/californium/elements/config/EnumDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_EXTENDED_MASTER_SECRET_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    .line 621
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v6, 0x1e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "DTLS.VERIFY_PEERS_ON_RESUMPTION_THRESHOLD"

    const-string v9, "DTLS verify peers on resumption threshold in percent."

    invoke-direct {v0, v8, v9, v6, v3}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_VERIFY_PEERS_ON_RESUMPTION_THRESHOLD:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 637
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v6, "DTLS.USE_HELLO_VERIFY_REQUEST_FOR_PSK"

    const-string v8, "DTLS use a HELLO_VERIFY_REQUEST for PSK cipher suites to protect against spoofing."

    invoke-direct {v0, v6, v8, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_HELLO_VERIFY_REQUEST_FOR_PSK:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 650
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v6, "DTLS.USE_HELLO_VERIFY_REQUEST"

    const-string v8, "DTLS use a HELLO_VERIFY_REQUESt to protect against spoofing."

    invoke-direct {v0, v6, v8, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 659
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v6, "DTLS.USE_USE_ANTI_REPLAY_FILTER"

    const-string v8, "DTLS use the anti-replay-filter."

    invoke-direct {v0, v6, v8, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_ANTI_REPLAY_FILTER:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 683
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "DTLS.USE_DISABLED_WINDOW_FOR_ANTI_REPLAY_FILTER"

    const-string v9, "DTLS use a disabled window for the anti-replay-filter. -1 := extend the disabled window to start of session, 0 := normal window, <n> := disabled window of size <n>."

    invoke-direct {v0, v8, v9, v3, v6}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_DISABLED_WINDOW_FOR_ANTI_REPLAY_FILTER:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 696
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v3, "DTLS.UPDATE_ADDRESS_USING_CID_ON_NEWER_RECORDS"

    const-string v6, "DTLS update address using CID on newer records."

    invoke-direct {v0, v3, v6, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_UPDATE_ADDRESS_USING_CID_ON_NEWER_RECORDS:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 707
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v3, "DTLS.TRUNCATE_CLIENT_CERTIFICATE_PATH"

    const-string v6, "DTLS truncate client certificate path."

    invoke-direct {v0, v3, v6, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_TRUNCATE_CLIENT_CERTIFICATE_PATH:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 716
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v3, "DTLS.TRUNCATE_CERTIFICATE_PATH_FOR_VALIDATION"

    const-string v6, "DTLS certificate path for validation."

    invoke-direct {v0, v3, v6, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_TRUNCATE_CERTIFICATE_PATH_FOR_VALIDATION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 724
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v3, "DTLS.RECOMMENDED_CIPHER_SUITES_ONLY"

    const-string v6, "DTLS recommended cipher-suites only."

    invoke-direct {v0, v3, v6, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_CIPHER_SUITES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 731
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v3, "DTLS.RECOMMENDED_CURVES_ONLY"

    const-string v6, "DTLS recommended ECC curves/groups only."

    invoke-direct {v0, v3, v6, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_CURVES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 738
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v3, "DTLS.RECOMMENDED_SIGNATURE_AND_HASH_ALGORITHMS_ONLY"

    const-string v6, "DTLS recommended signature- and hash-algorithms only."

    invoke-direct {v0, v3, v6, v7}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_SIGNATURE_AND_HASH_ALGORITHMS_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 745
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-static {v1, v1}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherSuites(ZZ)[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v3

    const-string v6, "DTLS.PRESELECTED_CIPHER_SUITES"

    const-string v7, "List of preselected DTLS cipher-suites.\nIf not recommended cipher suites are intended to be used, switch off DTLS_RECOMMENDED_CIPHER_SUITES_ONLY.\nThe supported cipher suites are evaluated at runtime and may differ from the ones when creating this properties file."

    invoke-direct {v0, v6, v7, v3}, Lorg/eclipse/californium/elements/config/EnumListDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_PRESELECTED_CIPHER_SUITES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    .line 754
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-static {v1, v5}, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;->getCipherSuites(ZZ)[Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite;

    move-result-object v13

    const-string v9, "DTLS.CIPHER_SUITES"

    const-string v10, "List of DTLS cipher-suites.\nIf not recommended cipher suites are intended to be used, switch off DTLS_RECOMMENDED_CIPHER_SUITES_ONLY.\nThe supported cipher suites are evaluated at runtime and may differ from the ones when creating this properties file."

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/californium/elements/config/EnumListDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CIPHER_SUITES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    .line 763
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-static {}, Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;->getUsableGroupsArray()[Lorg/eclipse/californium/scandium/dtls/cipher/XECDHECryptography$SupportedGroup;

    move-result-object v3

    const-string v6, "DTLS.CURVES"

    const-string v7, "List of DTLS curves (supported groups).\nDefaults to all supported curves of the JCE at runtime."

    invoke-direct {v0, v6, v7, v3}, Lorg/eclipse/californium/elements/config/EnumListDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CURVES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    .line 769
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$SignatureAndHashAlgorithmsDefinition;

    const-string v3, "DTLS.SIGNATURE_AND_HASH_ALGORITHMS"

    const-string v6, "List of DTLS signature- and hash-algorithms.\nValues e.g SHA256withECDSA or ED25519."

    invoke-direct {v0, v3, v6}, Lorg/eclipse/californium/scandium/config/DtlsConfig$SignatureAndHashAlgorithmsDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SIGNATURE_AND_HASH_ALGORITHMS:Lorg/eclipse/californium/scandium/config/DtlsConfig$SignatureAndHashAlgorithmsDefinition;

    .line 775
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumListDefinition;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    sget-object v6, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->EC:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    aput-object v6, v3, v1

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;->RSA:Lorg/eclipse/californium/scandium/dtls/cipher/CipherSuite$CertificateKeyAlgorithm;

    aput-object v1, v3, v5

    const-string v1, "DTLS.CERTIFICATE_KEY_ALGORITHMS"

    const-string v5, "List of DTLS certificate key algorithms.\nOn the client side used to select the default cipher-suites, on the server side to negotiate the client\'s certificate."

    invoke-direct {v0, v1, v5, v3}, Lorg/eclipse/californium/elements/config/EnumListDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CERTIFICATE_KEY_ALGORITHMS:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    .line 786
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "DTLS.USE_DEPRECATED_CID"

    const-string v5, "DTLS use deprecated CID extension code point for client (before version 09 of RFC-CID)."

    invoke-direct {v0, v3, v5, v4, v1}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_DEPRECATED_CID:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 793
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const-string v1, "DTLS.SUPPORT_DEPRECATED_CID"

    const-string v3, "DTLS support deprecated CID for server (before version 9)."

    invoke-direct {v0, v1, v3, v2}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SUPPORT_DEPRECATED_CID:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 796
    new-instance v0, Lorg/eclipse/californium/scandium/config/DtlsConfig$1;

    invoke-direct {v0}, Lorg/eclipse/californium/scandium/config/DtlsConfig$1;-><init>()V

    sput-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

    .line 870
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

    invoke-static {v0}, Lorg/eclipse/californium/elements/config/Configuration;->addDefaultModule(Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 0

    .line 878
    invoke-static {}, Lorg/eclipse/californium/elements/config/SystemConfig;->register()V

    return-void
.end method
