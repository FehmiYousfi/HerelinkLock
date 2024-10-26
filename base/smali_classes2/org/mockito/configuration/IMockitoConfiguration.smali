.class public interface abstract Lorg/mockito/configuration/IMockitoConfiguration;
.super Ljava/lang/Object;
.source "IMockitoConfiguration.java"


# virtual methods
.method public abstract cleansStackTrace()Z
.end method

.method public abstract enableClassCache()Z
.end method

.method public abstract getAnnotationEngine()Lorg/mockito/configuration/AnnotationEngine;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDefaultAnswer()Lorg/mockito/stubbing/Answer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/stubbing/Answer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
