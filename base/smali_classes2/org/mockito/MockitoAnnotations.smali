.class public Lorg/mockito/MockitoAnnotations;
.super Ljava/lang/Object;
.source "MockitoAnnotations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initMocks(Ljava/lang/Object;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 68
    new-instance v0, Lorg/mockito/internal/configuration/GlobalConfiguration;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/GlobalConfiguration;-><init>()V

    invoke-virtual {v0}, Lorg/mockito/internal/configuration/GlobalConfiguration;->tryGetPluginAnnotationEngine()Lorg/mockito/plugins/AnnotationEngine;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lorg/mockito/plugins/AnnotationEngine;->process(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    .line 65
    :cond_0
    new-instance p0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v0, "testClass cannot be null. For info how to use @Mock annotations see examples in javadoc for MockitoAnnotations class"

    invoke-direct {p0, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
