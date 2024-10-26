.class Lorg/mockito/internal/configuration/plugins/PluginLoader$1;
.super Ljava/lang/Object;
.source "PluginLoader.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/configuration/plugins/PluginLoader;

.field final synthetic val$pluginType:Ljava/lang/Class;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/mockito/internal/configuration/plugins/PluginLoader;Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->this$0:Lorg/mockito/internal/configuration/plugins/PluginLoader;

    iput-object p2, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$pluginType:Ljava/lang/Class;

    iput-object p3, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not initialize plugin: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$pluginType:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;->val$t:Ljava/lang/Throwable;

    invoke-direct {p1, p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
