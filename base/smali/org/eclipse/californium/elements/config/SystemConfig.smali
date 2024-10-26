.class public final Lorg/eclipse/californium/elements/config/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# static fields
.field public static final DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

.field public static final HEALTH_STATUS_INTERVAL:Lorg/eclipse/californium/elements/config/TimeDefinition;

.field public static final MODULE:Ljava/lang/String; = "SYS."


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v6, Lorg/eclipse/californium/elements/config/TimeDefinition;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "SYS.HEALTH_STATUS_INTERVAL"

    const-string v2, "Health status interval. 0 to disable the health status."

    const-wide/16 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/californium/elements/config/TimeDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    sput-object v6, Lorg/eclipse/californium/elements/config/SystemConfig;->HEALTH_STATUS_INTERVAL:Lorg/eclipse/californium/elements/config/TimeDefinition;

    .line 38
    new-instance v0, Lorg/eclipse/californium/elements/config/SystemConfig$1;

    invoke-direct {v0}, Lorg/eclipse/californium/elements/config/SystemConfig$1;-><init>()V

    sput-object v0, Lorg/eclipse/californium/elements/config/SystemConfig;->DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

    .line 55
    sget-object v0, Lorg/eclipse/californium/elements/config/SystemConfig;->DEFINITIONS:Lorg/eclipse/californium/elements/config/Configuration$ModuleDefinitionsProvider;

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

    return-void
.end method
