.class public final Lorg/eclipse/californium/elements/config/TcpConfig;
.super Ljava/lang/Object;
.source "TcpConfig.java"


# static fields
.field public static final DEFAULT_TCP_CONNECTION_IDLE_TIMEOUT_IN_SECONDS:I = 0xa

.field public static final DEFAULT_TCP_CONNECT_TIMEOUT_IN_SECONDS:I = 0xa

.field public static final DEFAULT_TLS_HANDSHAKE_TIMEOUT_IN_SECONDS:I = 0xa

.field public static final DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

.field public static final MODULE:Ljava/lang/String; = "TCP."

.field public static final TCP_CONNECTION_IDLE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final TCP_CONNECT_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final TCP_WORKER_THREADS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

.field public static final TLS_CLIENT_AUTHENTICATION_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/californium/elements/config/EnumDefinition<",
            "Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final TLS_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final TLS_SESSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final TLS_VERIFY_SERVER_CERTIFICATES_SUBJECT:Lorg/eclipse/californium/elements/config/BooleanDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 56
    new-instance v6, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "TCP.CONNECTION_IDLE_TIMEOUT"

    const-string v2, "TCP connection idle timeout."

    const-wide/16 v3, 0xa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v6, Lorg/eclipse/californium/elements/config/TcpConfig;->TCP_CONNECTION_IDLE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 62
    new-instance v0, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v8, "TCP.CONNECT_TIMEOUT"

    const-string v9, "TCP connect timeout."

    const-wide/16 v10, 0xa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TCP_CONNECT_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 67
    new-instance v0, Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "TCP.WORKER_THREADS"

    const-string v4, "Number of TCP worker threads."

    invoke-direct {v0, v3, v4, v2, v2}, Lorg/eclipse/californium/elements/config/IntegerDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TCP_WORKER_THREADS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    .line 72
    new-instance v0, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v6, "TCP.HANDSHAKE_TIMEOUT"

    const-string v7, "TLS handshake timeout."

    const-wide/16 v8, 0xa

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TLS_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 77
    new-instance v0, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v16, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-string v12, "TCP.SESSION_TIMEOUT"

    const-string v13, "TLS session timeout."

    const-wide/16 v14, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TLS_SESSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 82
    new-instance v0, Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v2, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->WANTED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    invoke-static {}, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->values()[Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    move-result-object v3

    const-string v4, "TCP.CLIENT_AUTHENTICATION_MODE"

    const-string v5, "TLS client authentication mode."

    invoke-direct {v0, v4, v5, v2, v3}, Lorg/eclipse/californium/elements/config/EnumDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;[Ljava/lang/Enum;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TLS_CLIENT_AUTHENTICATION_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    .line 88
    new-instance v0, Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "TCP.VERIFY_SERVER_CERTIFICATES_SUBJECT"

    const-string v3, "TLS verifies the server certificate\'s subjects."

    invoke-direct {v0, v2, v3, v1}, Lorg/eclipse/californium/elements/config/BooleanDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    sput-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TLS_VERIFY_SERVER_CERTIFICATES_SUBJECT:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    .line 91
    new-instance v0, Lorg/eclipse/californium/elements/config/TcpConfig$1;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/config/TcpConfig$1;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

    .line 112
    sget-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

    invoke-static {v0}, Lorg/eclipse/californium/elements/config/Configuration;->addDefaultModule(Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 0

    .line 120
    invoke-static {}, Lorg/eclipse/californium/elements/config/SystemConfig;->register()V

    return-void
.end method
