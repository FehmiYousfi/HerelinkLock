.class final Lorg/eclipse/californium/elements/config/TcpConfig$1;
.super Ljava/lang/Object;
.source "TcpConfig.java"

# interfaces
.implements Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/config/TcpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 4

    .line 100
    sget-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TCP_WORKER_THREADS:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 101
    sget-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TCP_CONNECTION_IDLE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v3, 0xa

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 102
    sget-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TCP_CONNECT_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 103
    sget-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TLS_HANDSHAKE_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v3, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 104
    sget-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TLS_SESSION_TIMEOUT:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 105
    sget-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TLS_CLIENT_AUTHENTICATION_MODE:Lorg/eclipse/californium/elements/config/EnumDefinition;

    sget-object v2, Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;->WANTED:Lorg/eclipse/californium/elements/config/CertificateAuthenticationMode;

    invoke-virtual {p1, v0, v2}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 106
    sget-object v0, Lorg/eclipse/californium/elements/config/TcpConfig;->TLS_VERIFY_SERVER_CERTIFICATES_SUBJECT:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    return-void
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    const-string v0, "TCP."

    return-object v0
.end method
