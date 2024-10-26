.class final Lorg/cubepilot/herelinksettings/droneshare/DTLSClient$1;
.super Ljava/lang/Object;
.source "DTLSClient.java"

# interfaces
.implements Lorg/eclipse/californium/elements/config/Configuration$DefinitionsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cubepilot/herelinksettings/droneshare/DTLSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 2

    .line 59
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_CONNECTION_ID_LENGTH:Lorg/eclipse/californium/elements/config/IntegerDefinition;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    .line 60
    sget-object v0, Lorg/eclipse/californium/scandium/config/DtlsConfig;->DTLS_RECOMMENDED_CIPHER_SUITES_ONLY:Lorg/eclipse/californium/elements/config/BooleanDefinition;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/BasicDefinition;Ljava/lang/Object;)Lorg/eclipse/californium/elements/config/Configuration;

    return-void
.end method
