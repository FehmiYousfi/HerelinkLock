.class final Lorg/eclipse/californium/elements/config/SystemConfig$1;
.super Ljava/lang/Object;
.source "SystemConfig.java"

# interfaces
.implements Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/elements/config/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefinitions(Lorg/eclipse/californium/elements/config/Configuration;)V
    .locals 3

    .line 49
    sget-object v0, Lorg/eclipse/californium/elements/config/SystemConfig;->HEALTH_STATUS_INTERVAL:Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lorg/eclipse/californium/elements/config/Configuration;->set(Lorg/eclipse/californium/elements/config/TimeDefinition;ILjava/util/concurrent/TimeUnit;)Lorg/eclipse/californium/elements/config/Configuration;

    return-void
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    const-string v0, "SYS."

    return-object v0
.end method
