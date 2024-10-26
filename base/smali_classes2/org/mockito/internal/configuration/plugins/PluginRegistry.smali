.class Lorg/mockito/internal/configuration/plugins/PluginRegistry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# instance fields
.field private annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

.field private final instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider;

.field private final mockMaker:Lorg/mockito/plugins/MockMaker;

.field private final pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

.field private final stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    new-instance v1, Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;-><init>()V

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v1, Lorg/mockito/plugins/PluginSwitch;

    const-class v2, Lorg/mockito/internal/configuration/plugins/DefaultPluginSwitch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/PluginSwitch;

    iput-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    .line 18
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    iget-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-string v1, "mock-maker-inline"

    const-string v2, "org.mockito.internal.creation.bytebuddy.InlineByteBuddyMockMaker"

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->withAlias(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/internal/configuration/plugins/PluginLoader;

    move-result-object v0

    const-class v1, Lorg/mockito/plugins/MockMaker;

    const-string v2, "org.mockito.internal.creation.bytebuddy.ByteBuddyMockMaker"

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/MockMaker;

    iput-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 22
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    iget-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v1, Lorg/mockito/plugins/StackTraceCleanerProvider;

    const-string v2, "org.mockito.internal.exceptions.stacktrace.DefaultStackTraceCleanerProvider"

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/StackTraceCleanerProvider;

    iput-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;

    .line 25
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    iget-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v1, Lorg/mockito/plugins/InstantiatorProvider;

    const-string v2, "org.mockito.internal.creation.instance.DefaultInstantiatorProvider"

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/InstantiatorProvider;

    iput-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider;

    .line 28
    new-instance v0, Lorg/mockito/internal/configuration/plugins/PluginLoader;

    iget-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-direct {v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    const-class v1, Lorg/mockito/plugins/AnnotationEngine;

    const-string v2, "org.mockito.internal.configuration.InjectingAnnotationEngine"

    invoke-virtual {v0, v1, v2}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/plugins/AnnotationEngine;

    iput-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    return-void
.end method


# virtual methods
.method getAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->annotationEngine:Lorg/mockito/plugins/AnnotationEngine;

    return-object v0
.end method

.method getInstantiatorProvider()Lorg/mockito/plugins/InstantiatorProvider;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->instantiatorProvider:Lorg/mockito/plugins/InstantiatorProvider;

    return-object v0
.end method

.method getMockMaker()Lorg/mockito/plugins/MockMaker;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->mockMaker:Lorg/mockito/plugins/MockMaker;

    return-object v0
.end method

.method getStackTraceCleanerProvider()Lorg/mockito/plugins/StackTraceCleanerProvider;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginRegistry;->stackTraceCleanerProvider:Lorg/mockito/plugins/StackTraceCleanerProvider;

    return-object v0
.end method
