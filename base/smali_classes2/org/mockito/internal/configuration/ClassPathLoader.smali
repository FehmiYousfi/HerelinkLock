.class public Lorg/mockito/internal/configuration/ClassPathLoader;
.super Ljava/lang/Object;
.source "ClassPathLoader.java"


# static fields
.field public static final MOCKITO_CONFIGURATION_CLASS_NAME:Ljava/lang/String; = "org.mockito.configuration.MockitoConfiguration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadConfiguration()Lorg/mockito/configuration/IMockitoConfiguration;
    .locals 4

    :try_start_0
    const-string v0, "org.mockito.configuration.MockitoConfiguration"

    .line 60
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 67
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/configuration/IMockitoConfiguration;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;

    const-string v2, "Unable to instantiate org.mockito.configuration.MockitoConfiguration class. Does it have a safe, no-arg constructor?"

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 69
    new-instance v1, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MockitoConfiguration class must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lorg/mockito/configuration/IMockitoConfiguration;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " interface."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/mockito/exceptions/misusing/MockitoConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    const/4 v0, 0x0

    return-object v0
.end method
