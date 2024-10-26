.class final Lorg/eclipse/californium/scandium/config/DtlsConfig$1;
.super Ljava/lang/Object;
.source "DtlsConfig.java"

# interfaces
.implements Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/config/DtlsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 10

    .line 805
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 807
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SESSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0x18

    invoke-virtual {p1, v1, v3, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 808
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_AUTO_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 809
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0x7d0

    invoke-virtual {p1, v1, v4, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 811
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_RETRANSMISSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const v4, 0xea60

    invoke-virtual {p1, v1, v4, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 813
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ADDITIONAL_ECC_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v1, v4, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 815
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_RETRANSMISSIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 816
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_INIT_RANDOM:Lorg/eclipse/californium/elements/config/FloatDefinition;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 817
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_TIMEOUT_SCALE:Lorg/eclipse/californium/elements/config/FloatDefinition;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 818
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RETRANSMISSION_BACKOFF:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 819
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTION_ID_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 820
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTION_ID_NODE_ID:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 821
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SERVER_USE_SESSION_ID:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v1, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 822
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_EARLY_STOP_RETRANSMISSION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v1, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 823
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECORD_SIZE_LIMIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 824
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_FRAGMENT_LENGTH:Lorg/eclipse/californium/elements/config/EnumDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 825
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_FRAGMENTED_HANDSHAKE_MESSAGE_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 826
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_MULTI_RECORD_MESSAGES:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 827
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_MULTI_HANDSHAKE_MESSAGE_RECORDS:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 828
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CLIENT_AUTHENTICATION_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v8, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->NEEDED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    invoke-virtual {p1, v1, v8}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 829
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_VERIFY_SERVER_CERTIFICATES_SUBJECT:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v1, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 830
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_ROLE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v8, Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;->BOTH:Lorg/eclipse/californium/scandium/config/DtlsConfig$DtlsRole;

    invoke-virtual {p1, v1, v8}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 831
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_TRANSMISSION_UNIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 832
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_TRANSMISSION_UNIT_LIMIT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v8, 0x5dc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v1, v8}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 833
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_DEFAULT_HANDSHAKE_MODE:Lorg/eclipse/californium/elements/config/StringSetDefinition;

    invoke-virtual {p1, v1, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 834
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_CONNECTIONS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const v8, 0x249f0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v1, v8}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 835
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_STALE_CONNECTION_THRESHOLD:Lorg/eclipse/californium/elements/config/TimeDefinition;

    const-wide/16 v8, 0x708

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v8, v9}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 836
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_OUTBOUND_MESSAGE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const v8, 0x186a0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v1, v8}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 837
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_DEFERRED_OUTBOUND_APPLICATION_MESSAGES:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v1, v8}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 839
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_MAX_DEFERRED_INBOUND_RECORDS_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v1, v7}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 841
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECEIVER_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v7, 0x3

    if-le v0, v7, :cond_0

    const/4 v2, 0x2

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 842
    sget-object v1, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTOR_THREAD_COUNT:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 843
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECEIVE_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 844
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SEND_BUFFER_SIZE:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 845
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_SERVER_NAME_INDICATION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v5}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 846
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_EXTENDED_MASTER_SECRET_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v1, Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;->ENABLED:Lorg/eclipse/californium/scandium/dtls/ExtendedMasterSecretMode;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 847
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_VERIFY_PEERS_ON_RESUMPTION_THRESHOLD:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 849
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_HELLO_VERIFY_REQUEST:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 850
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_HELLO_VERIFY_REQUEST_FOR_PSK:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 851
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_ANTI_REPLAY_FILTER:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 852
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_DISABLED_WINDOW_FOR_ANTI_REPLAY_FILTER:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 853
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_UPDATE_ADDRESS_USING_CID_ON_NEWER_RECORDS:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 854
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_TRUNCATE_CLIENT_CERTIFICATE_PATH:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 855
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_TRUNCATE_CERTIFICATE_PATH_FOR_VALIDATION:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 856
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_CIPHER_SUITES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 857
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_CURVES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 858
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_SIGNATURE_AND_HASH_ALGORITHMS_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v6}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 859
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_PRESELECTED_CIPHER_SUITES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 860
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CIPHER_SUITES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 861
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CURVES:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 862
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SIGNATURE_AND_HASH_ALGORITHMS:Lorg/eclipse/californium/scandium/config/DtlsConfig$SignatureAndHashAlgorithmsDefinition;

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 863
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CERTIFICATE_KEY_ALGORITHMS:Lorg/eclipse/californium/elements/config/EnumListDefinition;

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 864
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_USE_DEPRECATED_CID:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    invoke-virtual {p1, v0, v3}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 865
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_SUPPORT_DEPRECATED_CID:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-virtual {p1, v0, v5}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    return-void
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    const-string v0, "DTLS."

    return-object v0
.end method
