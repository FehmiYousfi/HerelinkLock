.class public Lorg/mockito/internal/configuration/plugins/Plugins;
.super Ljava/lang/Object;
.source "Plugins.java"


# static fields
.field private static final registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;-><init>()V

    sput-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;
    .locals 1

    .line 53
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;

    move-result-object v0

    return-object v0
.end method

.method public static getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider;
    .locals 1

    .line 43
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public static getMockMaker()Lorg/mockito/plugins/MockMaker;
    .locals 1

    .line 33
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getMockMaker()Lorg/mockito/plugins/MockMaker;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;
    .locals 1

    .line 23
    sget-object v0, Lorg/mockito/internal/configuration/plugins/Plugins;->registry:Lorg/mockito/internal/configuration/plugins/PluginRegistry;

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;

    move-result-object v0

    return-object v0
.end method
