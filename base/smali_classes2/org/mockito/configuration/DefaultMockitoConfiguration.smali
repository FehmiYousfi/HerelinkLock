.class public Lorg/mockito/configuration/DefaultMockitoConfiguration;
.super Ljava/lang/Object;
.source "DefaultMockitoConfiguration.java"

# interfaces
.implements Lorg/mockito/configuration/IMockitoConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleansStackTrace()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enableClassCache()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;
    .locals 1

    .line 28
    new-instance v0, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/InjectingAnnotationEngine;-><init>()V

    return-object v0
.end method

.method public getDefaultAnswer()Lorg/mockito/stubbing/Answer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;-><init>()V

    return-object v0
.end method
